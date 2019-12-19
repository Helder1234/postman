FROM ubuntu
LABEL maintainer = Helder Mendes
RUN apt-get update && apt-get upgrade
RUN apt-get install -y git
RUN git clone https://heldermendes1985:YVacKABrQavLS4wA4N72@bitbucket.org/scup/postman-api-automation.git/api
WORKDIR /api/
RUN apt-get purge nodejs
RUN apt-get install -y nodejs
RUN apt-get install -y npm
RUN npm install newman -g
RUN npm install newman-reporter-slack -g
ENTRYPOINT newman run Api_1.1.postman_collection.json -e QA_1.1.postman_environment.json -r cli,slack --reporter-slack-channel '#scup-automation-test' --reporter-slack-webhook-url 'https://hooks.slack.com/services/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'

