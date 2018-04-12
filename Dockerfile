FROM swift:4.1

WORKDIR /app
COPY app /app

EXPOSE 8181

RUN apt-get update
RUN apt-get install -y openssl libssl-dev uuid-dev

RUN swift build -c release

ENV PATH /app/.build/release:$PATH

RUN chmod -R a+w /app && chmod -R 777 /app

RUN useradd -m myuser
USER myuser

CMD .build/release/AliceBuyElephant --env=production --workdir="/app"
