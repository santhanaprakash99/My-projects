#include <stdio.h>
#include <string.h>
#include "encode.h"
#include "decode.h"
#include "types.h"

/* Name       : M.Santhanaprakash
 * Batch id   : 26001B_069
 * Title      : LSB Image Stegnography
 * Overview   : This project implements a LSB (Least Significant Bit) Image Steganography written in C. 
 *              The application serves as a secure, data-hiding utility capable of embedding private payloads 
 *              (files of any extension format, such as .txt, .pdf, or .png) inside an uncompressed 24-bit BMP (Bitmap) image carrier file.
 * Date of 
 * submission : 25-05-2026
 */              

OperationType check_operation_type(char *);

int main(int argc, char *argv[])
{
    if(argc < 2){
        printf("Error missing arguments\n");
        return 0;
    }
    int op_type = check_operation_type(argv[1]);

    if(op_type == e_unsupported){
        printf("Error : Unsupported arguments passed\n");
        return e_failure;
    }

    if(op_type == e_encode){
        printf("Info : Encoding started!!\n");

        EncodeInfo encInfo;

        if(read_and_validate_encode_args(argv, &encInfo) == e_success){
            if(do_encoding(&encInfo) == e_success){
                printf("Info : Encoding completed sucessfully!!\n");
            }else{
                printf("Error : Encoding failed\n");
                return 0;
            }
        }
        else{
            printf("Error : Read and Validate arguments failed\n");
            return e_failure;
        }
    }else if(op_type == e_decode){
        printf("Decoding started...\n");

        DecodeInfo decInfo;

        if(read_and_validate_decode_args(argv, &decInfo) == e_success){
            if(do_decoding(&decInfo) == e_success){
                printf("Info : Decoding completed successfully");
            }else{
                printf("Error : Decoding failed!!");
                return 0;
            }
        }else{
            printf("Error : Read and Validate arguments failed\n");
            return e_failure;
        }
    }
    return e_success;
}




OperationType check_operation_type(char *symbol)
{
        if(symbol == NULL){
        return e_unsupported;
    }

    if(strcmp(symbol, "-e") == 0){
        return e_encode;
    }else if(strcmp(symbol, "-d") == 0){
        return e_decode;
    }else{
        return e_unsupported;
    }

}
