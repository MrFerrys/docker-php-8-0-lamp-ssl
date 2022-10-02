# docker-php-8-0-lamp
Docker container with php-8-0, apache, phpmyadmin, mariadb & ssl

### Usage

* How to run it
```
	docker-compose -f php8-docker-compose.yml up -d --remove-orphans
```
* How to stop it
```
	docker-compose -f php8-docker-compose.yml down
```
* If you don't have an SSL certificate, execute this command to generate .crt and .key files.
```
	openssl.exe req -x509 -nodes -sha256 -days 3650 -subj "/CN=Local" -newkey rsa:2048 -keyout Local.key -out Local.crt
```
## Authors

MrFerrys  

## Version History

* 1.0.0
    * Initial Release (X.Y.Z MAJOR.MINOR.PATCH)

## Acknowledgments

Based on/Inspired By:
* [Apache docker ssl](https://stackoverflow.com/questions/43752615/enable-apache-ssl-in-docker-for-local-development)
* [OpenSSL on windows](https://stackoverflow.com/questions/50625283/how-to-install-openssl-in-windows-10)