FROM microsoft/dotnet:2.1.2-aspnetcore-runtime-alpine3.7
LABEL maintainer="ZHENGCHUN"

RUN apk update \
	&& apk --no-cache add libgdiplus --repository http://dl-3.alpinelinux.org/alpine/edge/testing/

VOLUME /app
WORKDIR /app

ENTRYPOINT ["dotnet"]
CMD [""]