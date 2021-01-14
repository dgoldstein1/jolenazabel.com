# serves up static files from reverse proxy
FROM dgoldstein1/reverse-proxy:0.1.5 AS reverseproxy

ENV services=static,backend
ADD hugo-identity-theme/jolenazabel.com/public/ /public
ENV static_incoming_path=/
ENV static_outgoing_url=file:///public
ENV backend_incoming_path=/services/metrics/
# TODO
ENV backend_outgoing_url=http://google.com

# execution
ADD VERSION /public/VERSION
ADD LICENSE /public/LICENSE
