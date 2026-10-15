FROM busybox:1.36.1
LABEL org.opencontainers.image.title="trystencil-url-tools" \
      org.opencontainers.image.description="Offline URL builder for TryStencil tattoo generator, try-on, stencil, and idea pages. Not an official SDK." \
      org.opencontainers.image.url="https://trystencil.org/" \
      org.opencontainers.image.source="https://github.com/wangneo276-lgtm/trystencil-url-tools" \
      org.opencontainers.image.version="0.1.0" \
      org.opencontainers.image.licenses="MIT"
COPY docker/cli.sh /usr/local/bin/trystencil-url-tools
RUN chmod +x /usr/local/bin/trystencil-url-tools
ENTRYPOINT ["/usr/local/bin/trystencil-url-tools"]
