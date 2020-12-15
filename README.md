# paas-ta-container-platform-release
## 소개
ContainerPlatform을 위해 Bosh Release만 배포되어 배포된 쿠버네티스 클러스터에 신규 개발된 API를 Container에 올려 서비스 하기 위한 release 파일 입니다.

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
- https://github.com/PaaS-TA/paas-ta-container-platform-deployment/tree/dev

## License
paas-ta-container-platform-release는 [Apache-2.0 License](http://www.apache.org/licenses/LICENSE-2.0)를 사용합니다.

