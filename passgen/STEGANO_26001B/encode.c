#include <stdio.h>
#include <string.h>
#include "encode.h"
#include "types.h"
#include "common.h"

/* Function Definitions */

/* Get image size
 * Input: Image file ptr
 * Output: width * height * bytes per pixel (3 in our case)
 * Description: In BMP Image, width is stored in offset 18,
 * and height after that. size is 4 bytes
 */
uint get_image_size_for_bmp(FILE *fptr_image)
{
    uint width, height;
    // Seek to 18th byte
    fseek(fptr_image, 18, SEEK_SET);

    // Read the width (an int)
    fread(&width, sizeof(uint), 1, fptr_image);
    printf("width = %u\n", width);

    // Read the height (an int)
    fread(&height, sizeof(uint), 1, fptr_image);
    printf("height = %u\n", height);

    rewind(fptr_image);

    // Return image capacity
    return width * height * 3;
}

uint get_file_size(FILE *fptr)
{
    // Find the size of secret file data
    // return secret file size
    if(fptr == NULL){
        return 0;
    }

    fseek(fptr, 0, SEEK_END);
    uint file_size = ftell(fptr);

    rewind(fptr);
    return file_size;
}

/*
 * Get File pointers for i/p and o/p files
 * Inputs: Src Image file, Secret file and
 * Stego Image file
 * Output: FILE pointer for above files
 * Return Value: e_success or e_failure, on file errors
 */

Status read_and_validate_encode_args(char *argv[], EncodeInfo *encInfo)
{
    
    if(argv[2] == NULL || strstr(argv[2], ".bmp") == NULL){
        printf("Error : Source image file must be a .bmp file\n");
        return e_failure;
    }
    encInfo -> src_image_fname = argv[2];

    if(argv[3] == NULL || strstr(argv[3], ".") == NULL){
        printf("Error : Secret file must have valid extension\n");
        return e_failure;
    }
    encInfo -> secret_fname = argv[3];

    char *extn = strrchr(argv[3], '.');
    if(extn != NULL){
        strcpy(encInfo -> extn_secret_file, extn);
    }else{
        return e_failure;
    }


    if(argv[4] == NULL){
        encInfo -> stego_image_fname = "stego.bmp";
        printf("Creating default name stego.bmp\n");
    }else{
        if(strstr(argv[4], ".bmp") == NULL){
            printf("Error : Output stego image file must be a .bmp file\n");
            return e_failure;
        }
        encInfo -> stego_image_fname = argv[4];
    }
    return e_success;
}


Status open_files(EncodeInfo *encInfo)
{
    encInfo->fptr_src_image = fopen(encInfo->src_image_fname, "r");
    if (encInfo->fptr_src_image == NULL)
    {
        perror("fopen");
        fprintf(stderr, "ERROR: Unable to open file %s\n", encInfo->src_image_fname);

        return e_failure;
    }

    encInfo->fptr_secret = fopen(encInfo->secret_fname, "r");
    if (encInfo->fptr_secret == NULL)
    {
        perror("fopen");
        fprintf(stderr, "ERROR: Unable to open file %s\n", encInfo->secret_fname);

        return e_failure;
    }

    encInfo->fptr_stego_image = fopen(encInfo->stego_image_fname, "w");
    if (encInfo->fptr_stego_image == NULL)
    {
        perror("fopen");
        fprintf(stderr, "ERROR: Unable to open file %s\n", encInfo->stego_image_fname);

        return e_failure;
    }

    return e_success;
}

Status check_capacity(EncodeInfo *encInfo)
{
        encInfo -> image_capacity = get_image_size_for_bmp(encInfo -> fptr_src_image);
    encInfo -> size_secret_file = get_file_size(encInfo -> fptr_secret); 

    unsigned long required_capacity = 16+32+32+32+(encInfo -> size_secret_file * 8);


    if(encInfo -> image_capacity > required_capacity){
        return e_success;
    }else{
        printf("Error : Soucre image capcity is less than secret file capacity");
        return e_failure;
    }
}

Status copy_bmp_header(FILE *fptr_src_image, FILE *fptr_dest_image)
{
    
    if(fptr_src_image == NULL || fptr_dest_image == NULL){
        return e_failure;
    }

    rewind(fptr_src_image);

    char header[54];

    if(fread(header, 1, 54, fptr_src_image) != 54){
        return e_failure;
    }
    if(fwrite(header, 1, 54, fptr_dest_image) != 54){
        return e_failure;
    }
    return e_success;
}
Status encode_magic_string(const char *magic_string, EncodeInfo *encInfo)
{
       if(magic_string == NULL){
        return e_failure;
    }

    int magic_string_len = strlen(magic_string);
    char buffer[8];


    for(int i=0; i<magic_string_len; i++){
        fread(buffer, 1, 8, encInfo -> fptr_src_image);

        encode_byte_to_lsb(magic_string[i], buffer);

        fwrite(buffer, 1, 8, encInfo -> fptr_stego_image);
    }
    return e_success;


}
Status encode_secret_file_extn_size(int size, EncodeInfo *encInfo)
{
        char buffer[32];
    if(fread(buffer, 1, 32, encInfo -> fptr_src_image) != 32){
        printf("Error : failed to read image data to encode extension size");
        return e_failure;
    }

    encode_size_to_lsb(size, buffer);

    if(fwrite(buffer, 1, 32, encInfo -> fptr_stego_image) != 32){
        printf("Error : Failed to write encoded extension size");
        return e_failure;
    }
    return e_success;
}

Status encode_secret_file_extn(const char *file_extn, EncodeInfo *encInfo)
{
        if(file_extn == NULL){
        return e_failure;
    }

    int file_extn_len = strlen(file_extn);

    char buffer[8];
    for(int i=0; i<file_extn_len; i++){
        if(fread(buffer, 1, 8, encInfo -> fptr_src_image) != 8){
            printf("Error : failed to read image data to encode file extension");
            return e_failure;
        }

        encode_byte_to_lsb(file_extn[i], buffer);

        if(fwrite(buffer, 1, 8, encInfo -> fptr_stego_image) != 8){
            printf("Error : Failed to write the encoded file extension");
            return e_failure;
        }
    }
    return e_success;

}

Status encode_secret_file_size(long file_size, EncodeInfo *encInfo)
{
      
    char buffer[32];
    if(fread(buffer, 1, 32, encInfo -> fptr_src_image) != 32){
        printf("Error : failed to read image to encode file size");
        return e_failure;
    }

    encode_size_to_lsb(file_size, buffer);

    if(fwrite(buffer, 1, 32, encInfo -> fptr_stego_image) != 32){
        printf("Error : Failed to write the encoded file size");
        return e_failure;
    }
    return e_success;
}

Status encode_secret_file_data(EncodeInfo *encInfo)
{
        char buffer[8];
    char secret_char = 0;

    for(int i=0; i<encInfo -> size_secret_file; i++){

        if(fread(&secret_char, 1, 1, encInfo -> fptr_secret) != 1){
            printf("Error : Faild to read data from file");
            return e_failure;
        }

        if(fread(buffer, 1, 8, encInfo -> fptr_src_image) != 8){
            printf("Error : Failed to read image data to encode secret data");
            return e_failure;
        }

        encode_byte_to_lsb(secret_char, buffer);

        if(fwrite(buffer, 1, 8, encInfo -> fptr_stego_image) != 8){
            printf("Error : Failed to write the encoded secret data");
            return e_failure;
        }
    }
    return e_success;


}

Status copy_remaining_img_data(FILE *fptr_src, FILE *fptr_dest)
{

    if(fptr_src == NULL || fptr_dest == NULL){
        printf("Error opening files");
        return e_failure;
    }
    char buffer[1024];
    int remaining_data;
    while((remaining_data = fread(buffer, 1, sizeof(buffer), fptr_src)) > 0){
        if(fwrite(buffer, 1, remaining_data, fptr_dest) != remaining_data){
            printf("Error : Failed to write remaining data");
            return e_failure;
        }
    }
    return e_success;


}

Status encode_byte_to_lsb(char data, char *image_buffer)
{
    for(int i=0; i<8; i++){

        int bit = (data >> (7-i)) & 1;
        image_buffer[i] = (image_buffer[i] & 0xFE) | bit;
    }
    return e_success;
}

Status encode_size_to_lsb(int size, char *imageBuffer)
{
    for(int i=0; i<32; i++){

        int bit = (size >> (31-i)) & 1;
        imageBuffer[i] = (imageBuffer[i] & 0xFE) | bit;
    }
    return e_success;
}

Status do_encoding(EncodeInfo *encInfo)
{
         if(open_files(encInfo) == e_success){
        printf("Info : Open file passed successfully.\n");
    }else{
        printf("Error : Open file failed.\n");
        return e_failure;
    }

    if(check_capacity(encInfo) == e_success){
        printf("Info : Check capacity passed successfully.\n");
    }else{
        printf("Error : Check capacity failed.\n");
        return e_failure;
    }

    if(copy_bmp_header(encInfo -> fptr_src_image, encInfo -> fptr_stego_image) == e_success){
        printf("Info : Copy bmp header passed successfully.\n");
    }else{
        printf("Error : copy bmp header failed.\n");
        return e_failure;
    }

    if(encode_magic_string(MAGIC_STRING, encInfo) == e_success){
        printf("Info : Encode magic string passed successfully.\n");
    }else{
        printf("Error : Encode magic string failed.\n");
        return e_failure;
    }

    if(encode_secret_file_extn_size(strlen(encInfo -> extn_secret_file), encInfo) == e_success){
        printf("Info : Encode secret file extension size passed successfully.\n");
    }else{
        printf("Error : Encode secret file extension size failed.\n");
        return e_failure;
    }

    if(encode_secret_file_extn(encInfo -> extn_secret_file, encInfo) == e_success){
        printf("Info : Encode secret file extension passed successfully.\n");
    }else{
        printf("Error : Encode secret file extension failed.\n");
        return e_failure;
    }

    if(encode_secret_file_size(encInfo -> size_secret_file, encInfo) == e_success){
        printf("Info : Encode secret file size passed successfully.\n");
    }else{
        printf("Error : Encode secret file size failed.\n");
        return e_failure;
    }

    if(encode_secret_file_data(encInfo) == e_success){
        printf("Info : Encode secret file passed successfully.\n");
    }else{
        printf("Error : Encode secret file failed.\n");
        return e_failure;
    }

    if(copy_remaining_img_data(encInfo -> fptr_src_image, encInfo -> fptr_stego_image) == e_success){
        printf("Info : Copy remaining data passed successfully.\n");
    }else{
        printf("Error : Copy remaining data failed.\n");
        return e_failure;
    }

        return e_success;

}
