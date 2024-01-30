# simple-https-nginx

셀프로 서명한 HTTPS 인증서가 포함된 nginx 도커 이미지 만들기

## 인스트럭션

1. build.sh를 열어 ADDITIONAL_HOST를 자신의 환경에 맞게 수정
2. `docker-compose.yml`을 열어 포트를 자신의 환경에 맞게 수정
3. `./build.sh` 실행
4. `docker compose up -d` 실행
