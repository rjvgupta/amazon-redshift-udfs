/*
Purpose:
    This sample function demonstrates how to decrypt data which was encrypted using a KMS key. This function can be used in conjunction with f_kms_encrypt.

    Note: the test input/output is for illustration and would need to be modified to use data that was encrypted with YOUR kms key.

2021-09-08: written by rjvgupta
*/

CREATE OR REPLACE EXTERNAL FUNCTION f_kms_decrypt (value varchar(max))
RETURNS varchar STABLE
LAMBDA 'f-kms-decrypt-varchar'
IAM_ROLE ':RedshiftRole';
