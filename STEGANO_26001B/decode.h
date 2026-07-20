#ifndef DECODE_H
#define DECODE_H
#include <stdio.h>

#include "types.h" //contains user defined type

/*
 * Structure to store information required to
 * decode secret file from source Image
 * Info about output and intermediate data is
 * also stored
 */

typedef struct _DecodeInfo
{
    /* Stego Image Info */
    char *stego_image_fname;
    FILE *fptr_stego_image;

    /* Decoded Secret File Info */

    char output_file_base_name[50];
    char secret_fname[100];
    FILE *fptr_secret;

    int exten_size;
    char extn_secret_file[10];
    int size_secret_file;

} DecodeInfo;

/* Decoding  function prototype */

/* Read and validate Decode args from argv */
Status read_and_validate_decode_args(char *argv[], DecodeInfo *decInfo);

/* Perform the decoding */
Status do_decoding(DecodeInfo *decInfo);

/* Opens the input stego image file */
Status open_decode_files(DecodeInfo *decInfo);

/* Skip the image bmp header */
Status skip_bmp_header(FILE *fptr_stego_image);

/* Decode Magic String */
Status decode_magic_string(const char *magic_string, DecodeInfo *decInfo);

/* Decode Extension size */
Status decode_secret_file_extn_size(DecodeInfo *decInfo);

/* Decode secret file extension */
Status decode_secret_file_extn(DecodeInfo *decInfo);

/* Decode secret file size */
Status decode_secret_file_size(DecodeInfo *decInfo);

/* Decode secret file data */
Status decode_secret_file_data(DecodeInfo *decInfo);

/* Decode a byte from LSB of image data array */
Status decode_byte_from_lsb(char *data, char *image_buffer);

/* Decode a size from LSb */
Status decode_size_from_lsb(int *size, char *imageBuffer);

#endif

