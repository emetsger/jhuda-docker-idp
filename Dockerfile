FROM unicon/shibboleth-idp@sha256:397941df7098b44c939b6d7e0a94afde627a79c27863e0a99f4ae8d8ec069134

COPY common/shibboleth-idp/ /opt/shibboleth-idp/
COPY common/shib-jetty-base/ /opt/shib-jetty-base/
COPY run_tests.sh /

COPY --from=jhuda/assets:latest /data/shibboleth/jhuda/shibboleth-idp/conf /opt/shibboleth-idp/conf
COPY --from=jhuda/assets:latest /data/shibboleth/jhuda/shibboleth-idp/metadata /opt/shibboleth-idp/metadata