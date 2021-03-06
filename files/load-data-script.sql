/* You will need to swap in your table names, region name, tenant name, bucket name, and file names */

begin
 dbms_cloud.copy_data(
    table_name =>'CHANNELS',
    credential_name =>'BucketCredential',
    file_uri_list =>'https://swiftobjectstorage.eu-frankfurt-1.oraclecloud.com/v1/cloudstarscee/MyBucket/chan_v3.dat',
    format => json_object('ignoremissingcolumns' value 'true', 'removequotes' value 'true')
 );
end;
/

begin
 dbms_cloud.copy_data(
    table_name =>'COUNTRIES',
    credential_name =>'BucketCredential',
    file_uri_list =>'https://swiftobjectstorage.eu-frankfurt-1.oraclecloud.com/v1/cloudstarscee/MyBucket/coun_v3.dat',
    format => json_object('ignoremissingcolumns' value 'true', 'removequotes' value 'true')
 );
end;
/

begin
 dbms_cloud.copy_data(
    table_name =>'CUSTOMERS',
    credential_name =>'BucketCredential',
    file_uri_list =>'https://swiftobjectstorage.eu-frankfurt-1.oraclecloud.com/v1/cloudstarscee/MyBucket/cust1v3.dat',
    format => json_object('ignoremissingcolumns' value 'true', 'removequotes' value 'true', 'dateformat' value 'YYYY-MM-DD-HH24-MI-SS')
 );
end;
/

begin
 dbms_cloud.copy_data(
    table_name =>'SUPPLEMENTARY_DEMOGRAPHICS',
    credential_name =>'BucketCredential',
    file_uri_list =>'https://swiftobjectstorage.eu-frankfurt-1.oraclecloud.com/v1/cloudstarscee/MyBucket/dem1v3.dat',
    format => json_object('ignoremissingcolumns' value 'true', 'removequotes' value 'true')
 );
end;
/

begin
 dbms_cloud.copy_data(
    table_name =>'TIMES',
    credential_name =>'BucketCredential',
    file_uri_list =>'https://swiftobjectstorage.eu-frankfurt-1.oraclecloud.com/v1/cloudstarscee/MyBucket/time_v3.dat',
    format => json_object('ignoremissingcolumns' value 'true', 'removequotes' value 'true', 'dateformat' value 'YYYY-MM-DD-HH24-MI-SS', 'blankasnull' value 'true')
 );
end;
/

begin
 dbms_cloud.copy_data(
    table_name =>'COSTS',
    credential_name =>'BucketCredential',
    file_uri_list =>'https://swiftobjectstorage.eu-frankfurt-1.oraclecloud.com/v1/cloudstarscee/MyBucket/costs.dat',
    format => json_object('ignoremissingcolumns' value 'true', 'dateformat' value 'YYYY-MM-DD', 'blankasnull' value 'true')
 );
end;
/

begin
 dbms_cloud.copy_data(
    table_name =>'PRODUCTS',
    credential_name =>'BucketCredential',
    file_uri_list =>'https://swiftobjectstorage.eu-frankfurt-1.oraclecloud.com/v1/cloudstarscee/MyBucket/prod1v3.dat',
    format => json_object('delimiter' value '|', 'quote' value '^', 'ignoremissingcolumns' value 'true', 'dateformat' value 'YYYY-MM-DD-HH24-MI-SS', 'blankasnull' value 'true')
 );
end;
/

begin
 dbms_cloud.copy_data(
    table_name =>'PROMOTIONS',
    credential_name =>'BucketCredential',
    file_uri_list =>'https://swiftobjectstorage.eu-frankfurt-1.oraclecloud.com/v1/cloudstarscee/MyBucket/prom1v3.dat',
    format => json_object('ignoremissingcolumns' value 'true', 'removequotes' value 'true', 'dateformat' value 'YYYY-MM-DD-HH24-MI-SS', 'blankasnull' value 'true')
 );
end;
/

begin
 dbms_cloud.copy_data(
    table_name =>'SALES',
    credential_name =>'BucketCredential',
    file_uri_list =>'https://swiftobjectstorage.eu-frankfurt-1.oraclecloud.com/v1/cloudstarscee/MyBucket/sale1v3.dat',
    format => json_object('ignoremissingcolumns' value 'true', 'removequotes' value 'true', 'dateformat' value 'YYYY-MM-DD', 'blankasnull' value 'true')
 );
end;
/
