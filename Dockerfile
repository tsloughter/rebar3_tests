FROM elixir:1.13.3

RUN set -xe \
	&& runtimeDeps='curl \
            cmake \
            shelltestrunner \
            git' \
	&& apt-get update \
	&& apt-get install -y $runtimeDeps \
    && rm -rf /var/lib/apt/lists/*

ADD . app/

ENTRYPOINT ["./app/run_tests.sh"]
