# serves up static files from reverse proxy
FROM dgoldstein1/reverse-proxy:0.1.5 AS reverseproxy

ENV services=static,metricsserver,geoip,internalmetrics
ADD hugo-identity-theme/jolenazabel.com/public/ /public
ENV static_incoming_path=/
ENV static_outgoing_url=file:///public
ENV geoip_incoming_path=/services/geoIpServer/
ENV geoip_outgoing_url=https://geo.ipify.org/api
ENV internalmetrics_incoming_path=/services/prometheus
# TODO
ENV metricsserver_incoming_path=/services/metrics/
ENV metricsserver_outgoing_url=http://google.com

# execution
ADD VERSION /public/VERSION
ADD LICENSE /public/LICENSE
