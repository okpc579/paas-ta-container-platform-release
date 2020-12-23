# PaaS-TA 컨테이너 플랫폼 RELEASE
## 소개
Container-Platform을 위한 Back-end Service를 한번에 설치 할 수 있도록 구성해 놓은 Bosh Release를 말합니다. 릴리즈를 다운로드하고 생성하는 방법에 대해 기술하였습니다.

### 릴리즈 환경설정
  - mariadb :: 1 machine
  - haproxy :: 1 machine
  - private-image-repository :: 1 machine

### 릴리즈 생성  
  - PaaS-TA 컨테이너 플랫폼 릴리즈를 다운로드 합니다.    
    ```
    $ git clone -b dev https://github.com/PaaS-TA/paas-ta-container-platform-release.git
    $ cd paas-ta-container-platform-release
    ```
    
  - 다운로드 받은 source file을 src 디렉토리에 복사합니다. 
    ```
    ## download source files   
    $ wget --content-disposition http://45.248.73.44/index.php/s/6YskYkM2RHHaexF/download   
    
    ## unzip download source files   
    $ unzip paasta-container-platform-release-src.zip  
    
    ## final src directory   
    src
        ├── docker-images
        |   ├── container-platform-api.tar.gz
        │   ├── container-platform-common-api.tar.gz
        │   ├── container-platform-webadmin.tar.gz
        │   ├── container-platform-webuser.tar.gz
        │   ├── paasta-jenkins.tar.gz
        │   └── paasta-registry.tar.gz
        ├── java
        │   └── server-jre-8u121-linux-x64.tar.gz
        ├── mariadb   
        │   └── mariadb-10.5.5-linux-x86_64.tar.gz
        ├── haproxy   
        │   └── haproxy-1.6.5.tar.gz
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
    
  - PaaS-TA 컨테이너 플랫폼 릴리즈를 생성합니다.    
    ```
    ## <VERSION> :: release version   
    ## <RELEASE_TARBALL_PATH> :: release file path     
    $ bosh -e <bosh_name> create-release --name=paasta-container-platform-release --version=<VERSION> --tarball=<RELEASE_TARBALL_PATH> --force   
    ```   

<br>

## 메인
- https://github.com/PaaS-TA/paas-ta-container-platform/tree/dev

## 라이선스 
[Apache-2.0 License](http://www.apache.org/licenses/LICENSE-2.0)를 사용합니다.

