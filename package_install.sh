#/bin/bash

# node 의존성 설치 및 빌드
# composer 의존성 설치

NODE_IMAGE=node:22.6.0-slim

COMPOSER_IMAGE=composer:2.7.7

# project_path를 입력받아서 실행
read -p "node 의존성 설치할 프로젝트명(code 아래 디렉토리명): " project_path
# project_path 디렉토리 아래에 package.json 파일이 있는지 검사
if [ ! -f ./code/${project_path}/package.json ]; then
  echo "유효한 node 프로젝트가 아닙니다."
  exit 1
fi

docker run -v ./code/${project_path}:/home/project -w /home/project ${NODE_IMAGE} /bin/bash -c "npm install && npm run build"

docker run -v ./code/${project_path}:/home/project -w /home/project ${COMPOSER_IMAGE} composer install
