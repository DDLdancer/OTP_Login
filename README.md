# OTP_Login
> Automatic ssh authentication script with TOTP key and password fill in

## Usage 
Put your password and TOTP key in **{server}.param** like **param.example**  
Use  
```shell
./login.sh {server} [-k]
```  
command to login  
**-k** option will only print TOTP key  
replace `{server}` with your server info  

## Requirement
**Python3** and **[expect](https://manned.org/expect)**  

## Dependency
**mintotp.py** came from **[susam/mintotp](https://github.com/susam/mintotp)**  
