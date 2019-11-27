## Step 9: Control your autonomous database using OCI CLI

The CLI is a small footprint tool that you can use on its own or with the Console to complete Oracle Cloud Infrastructure tasks. The CLI provides the same core functionality as the Console, plus additional commands. Some of these, such as the ability to run scripts, extend the Console's functionality.

The CLI is built on Python (version 2.7.5 or 3.5 or later), running on Mac, Windows, or Linux. The Python code makes calls to Oracle Cloud Infrastructure APIs to provide the functionality implemented for the various services. These are REST APIs that use HTTPS requests and responses. 

We are going to see how to manage Autonomous database instances using OCI CLI.

- [Official Installation guide](https://docs.cloud.oracle.com/iaas/Content/API/SDKDocs/cliinstall.htm)
- [Getting started guide](https://docs.cloud.oracle.com/iaas/Content/API/SDKDocs/cliusing.htm#StartingCLI)

**Pre-requisites:**
1. An Oracle Cloud Infrastructure account
2. A user created in that account, in a group with a policy that grants the desired permissions
3. A SSH keypair used for signing API requests, with the public key uploaded to Oracle. Only the user calling the API should possess the private key.

.[Generate your key](https://www.oci-workshop.com/keys/)

4. Python version 2.7.5 or 3.5 or later, running on Mac, Windows, or Linux. Note that if you use the CLI Installer and do not have Python on your machine, the Installer offers to automatically install Python for you. If you already have Python installed on your machine, you can use the python --version command to find out which version is installed.

**Installation**
1. Download and install: Use the command belo to download and install the oci CLI and required software packages. During installation, you are prompted to specify where you would like to install the oci binaries. You are also given the option to update your $PATH environment setting and enable shell/tab completion.

To install OCI CLI on your local machine, 

Linux:

``` 
bash -c "$(curl -L https://raw.githubusercontent.com/oracle/oci-cli/master/scripts/install/install.sh)"
```

Windows:

```
powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/oracle/oci-cli/master/scripts/install/install.ps1'))"
```

2. Upload API key: In the OCI Web console, you must register the RSA public key that is associated with your oci CLI configuration. You must register the public key by using the API Keys section on the OCI console User Details page.
   .[Generate your key](https://www.oci-workshop.com/keys/) 
   
- Upload your API to OCI   
![](/images/step9/0.API.PNG)


- After successfull upload, you will see the fingerprint of your ssh public key, copy that. It will be used for configuration

![](/images/step9/0.API.PNG)

3. Configure OCI, use the command below to configure the OCI CLI. During configuration, you are prompted to specify the location where the configuration file is stored. 

```
C:\Users\BatOchir>oci setup config

Enter a location for your config [C:\Users\BatOchir\.oci\config]:
File: C:\Users\BatOchir\.oci\config already exists. Do you want to overwrite? [y/N]: y
Enter a user OCID: ocid1.user.oc1----------------------------------------------------------z7wa
Enter a tenancy OCID: ocid1.tenancy.oc1----------------------------------------------------------z7wa
Enter a region (e.g. ca-toronto-1, eu-frankfurt-1, uk-london-1, us-ashburn-1, us-gov-ashburn-1, us-gov-chicago-1, us-gov-phoenix-1, us-langley-1, us-luke-1, us-phoenix-1): eu-frankfurt-1
Do you want to generate a new RSA key pair? (If you decline you will be asked to supply the path to an existing key.) [Y/n]: y
Enter a directory for your keys to be created [C:\Users\BatOchir\.oci]:
Enter a name for your key [oci_api_key]:
Public key written to: C:\Users\BatOchir\.oci\oci_api_key_public.pem
Enter a passphrase for your private key (empty for no passphrase):
Private key written to: C:\Users\BatOchir\.oci\oci_api_key.pem
Fingerprint: d4:--:--:--:--:--:--:--:--:--:--:--:--:--:--:12
Config written to C:\Users\BatOchir\.oci\config
    If you haven't already uploaded your public key through the console,
    follow the instructions on the page linked below in the section 'How to
    upload the public key':
        https://docs.us-phoenix-1.oraclecloud.com/Content/API/Concepts/apisigningkey.htm#How2

```

You are also prompted to supply the user OCID, tenant OCID, and region that are associated with your Autonomous database instances. These values can be determined by examining the OCI Web console. 
Finally, you are prompted to specify an RSA key pair to use for request authentication. You need to choose same ssh key which you have uploaded to OCI console, and also need to use the same fingerprint.
