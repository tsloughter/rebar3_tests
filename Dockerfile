FROM erlang:21.0

RUN set -xe \
	&& runtimeDeps='curl \
            shelltestrunner \
            git' \
	&& apt-get update \
	&& apt-get install -y $runtimeDeps \
    && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/app/run_tests.sh", "ci"]
