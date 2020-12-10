# PaaS-TA 컨테이너 플랫폼
## 소개
쿠버네티스 기반의 컨테이너 오케스트레이션 플랫폼의 단독 배포 및 엣지 클라우드 배포 기능을 구현하여 클라우드 기반의 서비스 및 운영에 필요한 부가 서비스를 제공합니다.

### PaaS-TA Container Platform Release Configuration
[공통]
  - mariadb :: 1 machine
  - haproxy :: 1 machine
  - private-image-repository :: 1 machine

<br>

[서비스 배포일 경우 추가]
  - container-jenkins-broker :: 1 machine
  - container-service-broker :: 1 machine

### Create PaaS-TA Container Platform Release  
  - Download the PaaS-TA Container Platform Release
    - 단독 배포인 경우
    ```
    $ git clone -b dev https://github.com/PaaS-TA/paas-ta-container-platform-release.git
    $ cd paas-ta-container-platform-release
    $ mkdir src
    ```
    
    - 서비스 배포인 경우
    ```
    $ git clone -b caas-dev https://github.com/PaaS-TA/paas-ta-container-platform-release.git
    $ cd paas-ta-container-platform-release
    $ mkdir src
    ```
    
  - Download & Copy "source files" into the src directory
    - 단독 배포인 경우
    ```
    ## download source files   
    $    
    
    ## unzip download source files   
    $   
    
    ## final src directory   
    src
        ├── mariadb   
        │   ├── 
        ├── haproxy   
        │   ├── 
        ├── private-image-repository
            └── 
    ```
    <br>
    
    - 서비스 배포인 경우
    ```
    ## download source files   
    $    
    
    ## unzip download source files   
    $   
    
    ## final src directory   
    src
        ├── container-jenkins-broker  
        │   ├── 
        ├── container-service-broker  
        │   ├── 
        ├── mariadb   
        │   ├── 
        ├── haproxy   
        │   ├── 
        ├── private-image-repository
            └── 
    ```
  - Create PaaS-TA Container Platform Release   
    ```
    ## <VERSION> :: release version (e.g. 1.0.1)   
    ## <RELEASE_TARBALL_PATH> :: release file path (e.g. /home/ubuntu/workspace/paasta-marketplace-env-release-<VERSION>.tgz)        
    $ bosh -e <bosh_name> create-release --name=paasta-container-platform-release --version=<VERSION> --tarball=<RELEASE_TARBALL_PATH> --force   
    ```   
### Deployment   
- https://github.com/PaaS-TA/paas-ta-container-platform/tree/dev/install-guide/bosh

