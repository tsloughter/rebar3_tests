FROM ubuntu:18.10

# differs from official docker image because it installs git and shelltestrunner on 18.10
# also fetching master of rebar3

ENV OTP_VERSION="21.0.7"

# We'll install the build dependencies for erlang-odbc along with the erlang
# build process:
RUN set -xe \
	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" \
	&& OTP_DOWNLOAD_SHA256="4e9c98b5f29918d0896b21ce28b13c7928d4c9bd6a0c7d23b4f19b27f6e3b6f7" \
	&& runtimeDeps='libodbc1 \
			libsctp1 \
			libwxgtk3.0 \
            curl \
            shelltestrunner \
            libssl-dev \
            libncurses5-dev \
            ca-certificates \
            git' \
	&& buildDeps='unixodbc-dev \
            build-essential \
            autoconf \
			libsctp-dev \
			libwxgtk3.0-dev' \
	&& apt-get update \
	&& apt-get install -y $runtimeDeps \
	&& apt-get install -y $buildDeps \
	&& curl -kfSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" \
	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - \
	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" \
	&& mkdir -vp $ERL_TOP \
	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 \
	&& rm otp-src.tar.gz \
	&& ( cd $ERL_TOP \
	  && ./otp_build autoconf \
	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" \
	  && ./configure --build="$gnuArch" \
	  && make -j$(nproc) \
	  && make install ) \
	&& find /usr/local -name examples | xargs rm -rf \
	&& apt-get purge -y --auto-remove $buildDeps \
    && rm -rf $ERL_TOP /var/lib/apt/lists/*

RUN set -xe \
    && curl -k https://s3.amazonaws.com/rebar3-nightly/rebar3 -o rebar3 \
    && chmod +x rebar3 \
    && mv rebar3 /usr/bin

ENTRYPOINT ["/app/run_tests.sh"]
