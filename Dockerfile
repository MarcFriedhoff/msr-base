FROM default-route-openshift-image-registry.apps-crc.testing/build/wpx AS wpx

FROM sagcr.azurecr.io/webmethods-microservicesruntime:10.15

COPY --from=wpx /app/wpx /opt/softwareag/wpx
