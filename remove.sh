# 모든 컨테이너 삭제
docker rm -f $(docker ps -aq)

# 모든 이미지 삭제
docker rmi -f $(docker images -aq)

# 모든 네트워크 삭제
# docker network prune -f

# 모든 볼륨 삭제
# docker volume prune -f

# 모든 리소스 삭제
# docker system prune -a --volumes
