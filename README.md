# SeaLink Node
---
An unofficial Docker Image for SeaLink Network Node Available on Docker Hub

Source code available at: [GitHub](https://github.com/cyrus0880/sealinknode)

```
### supports RPi3 or  (ARM64/ARMv7/ARMv8/AMD64) ###
```

### What's SeaLink Newwork?
---
Level Up Virtual Private Network

Sealink Network combine Pos and UPow blockchain technologies to create decentralization , free , secure virtual private network services [ remote access , port mapping . . .]

### How to get started?
> 1.Either build this image from source, or download it from Docker Hub

> 2.Set the port:  15001  for node , 15003  for web ui

> 3.Set Volumes: ./data:/root/.blockcore   for  storage node data & wallet sync data and config

> 3.You're good to go! Once started.

### Docker Compose
---
> 1. ``` mkdir sealinknode```

> 2.  ```nano sealinknode/docker-compose.yml```
 
docker-compose.yml
```yaml
version: "3.8"
services:
  sealink:
    restart: unless-stopped
    ports:
      - 15001:15001
      - 15003:15003  
    image: cyrus0880/sealinknode:1.3.1
    volumes:
     -  ./data:/root/.blockcore
```
> 3. ```cd sealinknode ```

> 4. ``` docker-compose up -d ```

> 5. please after run and  edit in you docker compose  same level folder 
>  find this config file./data/sealinknetwork/SealinkNetworkMain/sealinknetwork.conf
>  change this line:
>``` #apiuri=http://localhost   to  apiuri=http://0.0.0.0 ```
 
> 6. after change the config please run: ``` docker compose restart ```

*** now you smartnote web ui will open for all ip access ***

if you protect the web ui please use ngnix proxy manager  set password to lockup you web ui

### License
---
This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

### if you like this project
----
you can [ buy me a coffee ](https://www.buymeacoffee.com/cyrus.yeung)
