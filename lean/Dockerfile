FROM ubuntu:24.04

RUN apt-get update \
    && apt-get install -y --no-install-recommends ca-certificates curl git zstd \
    && rm -rf /var/lib/apt/lists/*

ENV ELAN_HOME=/opt/collatz-elan
ENV PATH=/opt/collatz-elan/bin:$PATH

RUN curl -sSfL https://raw.githubusercontent.com/leanprover/elan/master/elan-init.sh \
      -o /tmp/elan-init.sh \
    && sh /tmp/elan-init.sh -y --no-modify-path

WORKDIR /workspace
COPY lean-toolchain lakefile.toml ./
COPY CollatzBench.lean ./
COPY CollatzBench ./CollatzBench

RUN lake update \
    && lake exe cache get CollatzBench.lean

RUN --network=none lake build
