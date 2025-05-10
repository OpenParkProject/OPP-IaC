# Open Park Project IaC
This repository contains everything needed to deploy the Open Park Project infrastructure.

## Quick Start
Copy the `.env.example` file to `.env` and config your OpenPark instance.
Use the `gen_keys.sh` script to generate the RSA keys for the OPP-auth service.
It will automatically generate the keys and add them to the `.env` file.

You can then use the `docker-compose.yml` file to run the application locally:
```bash
docker compose up -d
```

Lastly, since the application does hostname verification, you need to execute the following command to add the hostname to your `/etc/hosts` file:
```bash
echo "127.0.0.1 openpark.com" | sudo tee -a /etc/hosts
```
