FROM registry.redhat.io/rhel8/go-toolset


ADD https://github.com/kubernetes-csi/csi-proxy/archive/refs/heads/master.zip /opt/app-root/src

USER 0

RUN ls -al /opt/app-root/src \
      && cd /opt/app-root/src \
      && unzip master.zip \
      && cd csi-proxy-master \
      && make build \
      && cp /opt/app-root/src/csi-proxy-master/bin/csi-proxy.exe /opt/app-root \
      && chmod +x /opt/app-root/csi-proxy.exe \
      && chown 1001:1001 /opt/app-root/csi-proxy.exe \
      && rm -rf /opt/app-root/src/csi-proxy-master \
      && rm /opt/app-root/src/master.zip

USER 1001

CMD [""]
