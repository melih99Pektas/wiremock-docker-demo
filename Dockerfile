FROM wiremock/wiremock:latest
ADD https://repo1.maven.org/maven2/com/opentable/wiremock-body-transformer/1.1.3/wiremock-body-transformer-1.1.3.jar /var/wiremock/extensions/
CMD ["--extensions", "com.opentable.extension.BodyTransformer","--verbose", "--global-response-templating", "--local-response-templating"]
COPY wiremock/stubs /home/wiremock