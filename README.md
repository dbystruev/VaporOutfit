# Vapor Outfit

Re-write of [Get Outfit](https://getoutfit.ru) [Server](https://github.com/dbystruev/Get-Outfit-Server.git) with [Vapor 4](https://vapor.codes).

* Install Vapor Outfit Server for development
  ```bash
  docker run -p8080:8080 -it --name VaporOutfit -w/VaporOutfit swift bash
  git clone https://github.com/dbystruev/VaporOutfit.git .
  apt update && apt -y upgrade
  apt -y install curl libcurl4-openssl-dev libmysqlclient-dev libssl-dev openssl psmisc sudo vim
  exit
  ```

* Start Vapor Outfit Server for development
    ```bash
    docker start VaporOutfit
    docker exec -it VaporOutfit bash
    swift run Run serve --hostname 0.0.0.0 --port 8080
    ```
