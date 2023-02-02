# OTP_Login
> Automatic ssh authentication script with TOTP key and password fill in

## Configuration
### 1. Configure the serve info in `~/.ssh/config` [[Tutorial]](https://linuxize.com/post/using-the-ssh-config-file/#ssh-config-file-example)
`{{server}}` is the name you use in `Host {{server}}`.

### 2. Put your password and TOTP secret in `{{server}}.key` like `example.key`  
For `otpauth://totp/Example:alice@google.com?secret=JBSWY3DPEHPK3PXP&issuer=Example`  
TOTP key is `JBSWY3DPEHPK3PXP` located after `secret=`  

## Usage  
```shell
./login.sh {{server}} [-k]
```  
**-k** option will only print the key for logging in    
replace `{{server}}` with your server name  

## Requirement
**Python3** and **[expect](https://manned.org/expect)**  

## Credit
**mintotp.py**'s code come from **[susam/mintotp](https://github.com/susam/mintotp)**  
