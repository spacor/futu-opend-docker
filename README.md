# Dockerize FutuOpenD
## OpenD version
5.8.2008_Ubuntu16.04
## How to Run
Futu requires phone verification on first run, therefore we will run in interactive mode, enter phone verification code, then detach
1. Run in interactive mode
```bash
docker run -it -t \
   -e login_account=10000 \
   -e login_pwd=xxxxx \
   -p 11111:11111 \
   --name futu-opend
   spacor/futu-opend-docker:latest
``````

2. Enter phone verification code
```bash
input_phone_verify_code -code=123456
```
3. Detach from container ^P^Q