FROM adoptopenjdk/openjdk11

# Install the dependencies of fc4-tool
RUN apt-get -yq update \
    && apt-get -yq install --no-install-recommends chromium-browser

# Install fc4-tool
RUN curl -L -s \
    https://github.com/FundingCircle/fc4-framework/releases/download/release_2018-12-11_772/fc4-tool-linux-d021ef9.tar.gz \
    | tar xzv

ENTRYPOINT [ "bin/bash" ]
CMD [ "-c", "/fc4/fc4 render /fc4/diagrams/*.yaml"]