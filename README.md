# paas-ta-container-platform-release
## 소개
Container Platform 사용을 위해 필요한 제반 환경을 구축하기 위해 Bosh2.0을 이용하여 Container Platform Release를 생성하는 방법을 기술하였습니다.

<br>

### PaaS-TA Container Platform Release Configuration
  - mariadb :: 1 machine
  - haproxy :: 1 machine
  - private-image-repository :: 1 machine



### Create PaaS-TA Container Platform Release  
  - Download the PaaS-TA Container Platform Release
    ```
    $ git clone -b dev https://github.com/PaaS-TA/paas-ta-container-platform-release.git
    $ cd paas-ta-container-platform-release
    $ mkdir src
    ```
    
  - Download & Copy "source files" into the src directory
    ```
    ## download source files   
    $ wget --content-disposition http://45.248.73.44/index.php/s/6YskYkM2RHHaexF/download   
    
    ## unzip download source files   
    $ unzip paasta-container-platform-release-src.zip  
    
    ## final src directory   
    src
        ├── mariadb   
        │   ├── mariadb-10.5.5-linux-x86_64.tar.gz
        ├── haproxy   
        │   ├── haproxy-1.6.5.tar.gz
        └── private-image-repository
            ├── dbus_1.10.6-1ubuntu3_amd64.deb
            ├── docker-registry_2.6.2~ds1-1_amd64.deb
            ├── libcgmanager0_0.39-2ubuntu5_amd64.deb
            ├── libdbus-1-3_1.10.6-1ubuntu3_amd64.deb
            ├── libdrm2_2.4.67-1_amd64.deb
            ├── libnih-dbus1_1.0.3-4.3ubuntu1_amd64.deb
            ├── libplymouth4_0.9.2-3ubuntu13_amd64.deb
            ├── libsystemd-login0_204-5ubuntu20.28_amd64.deb
            ├── lsb-base_4.1+Debian11ubuntu7_all.deb
            ├── mountall_2.54ubuntu1_amd64.deb
            ├── plymouth_0.9.2-3ubuntu13_amd64.deb
            └── upstart_1.13.2-0ubuntu21_amd64.deb
    ```
    <br>
    
  - Create PaaS-TA Container Platform Release   
    ```
    ## <VERSION> :: release version (e.g. 1.0.1)   
    ## <RELEASE_TARBALL_PATH> :: release file path (e.g. /home/ubuntu/workspace/paasta-marketplace-env-release-<VERSION>.tgz)        
    $ bosh -e <bosh_name> create-release --name=paasta-container-platform-release --version=<VERSION> --tarball=<RELEASE_TARBALL_PATH> --force   
    ```   

<br>

### Deployment   
- https://github.com/PaaS-TA/paas-ta-container-platform-deployment/tree/dev

## License
paas-ta-container-platform-release는 [Apache-2.0 License](http://www.apache.org/licenses/LICENSE-2.0)를 사용합니다.

