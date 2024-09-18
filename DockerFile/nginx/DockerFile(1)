# nginx 경량화 버전 alpine 사용
FROM nginx:1.14-alpine

# 시간 설정
RUN apk add --no-cache tzdata
ENV TZ=Asia/Seoul

# 설정 파일 복사
COPY default.conf /etc/nginx/conf.d/default.conf

# nginx daemon 실행
CMD ["nginx", "-g", "daemon off;"]