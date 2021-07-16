# Backstage.io Docker Compose

> This project is an attempt to make it easier to provision backstage.io locally.

### Adjustments and improvements

This project is still in its infancy and has the following points for improvement.

- [ ] Use multi stage in dockerfile
- [ ] Create a docker registry to store images.


## 💻 Requirements

Before starting, make sure you have met the following requirements:

* Operating Systems `<Linux / Mac>`.
* Make
* Docker
* Docker Compose

## 🚀 Running <backstage.io>

To run <backstage.io>, follow the below steps:

Linux e macOS:
```
$git clone git@github.com:brucorreiatw/backstage-docker-compose.git
$cd backstage-docker-compose
$make build
$make run
$sudo echo "127.0.0.1 backstage" >> /etc/hosts
```

## ☕ Acessing <backstage.io>

To access <backstage.io>, open the address in your browser:

```
http://backstage:7000
```