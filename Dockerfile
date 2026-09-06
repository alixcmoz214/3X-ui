FROM ghcr.io/mhsanaei/3x-ui:v2.9.4

ENV TZ=Asia/Tehran

COPY start.sh /start.sh
COPY subscription.html /opt/3x-ui/subscription/subscription.html

RUN chmod +x /start.sh

EXPOSE 2053
EXPOSE 2096

ENTRYPOINT ["/start.sh"]