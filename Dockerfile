FROM node:18.2.0-bullseye-slim

RUN groupadd --gid 5000 nonroot \
&& useradd -d /home/nonroot --create-home --uid 5000 --gid 5000 --shell /bin/bash --skel /dev/null nonroot

COPY ./src/Poker /Poker

RUN chown -R 5000:5000 /Poker

EXPOSE 3000 

USER nonroot

CMD node /Poker/app.js/