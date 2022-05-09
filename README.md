# OTP_Login
> Automatic ssh authentication script with TOTP key and password fill in

## Usage 
Put your password and TOTP key in **{server}.param** like **param.example**  
Use  
```shell
./login.sh {server}
```  
command to login  
replace `{server}` with your server info  

## Requirement
`Python3` and [expect](https://manned.org/expect)
