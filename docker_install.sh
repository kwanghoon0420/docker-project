yum update -y
# 패키지 설치
yum install -y yum-utils device-mapper-persistent-data lvm2

# 저장소 추가
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

# 도커 설치
yum install -y docker-ce docker-ce-cli containerd.io
yum install -y docker-compose


# 도커 시작
# systemctl start docker
# systemctl enable docker

# 도커 컴포즈 시작
docker-compose up -d