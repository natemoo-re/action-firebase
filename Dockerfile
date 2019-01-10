FROM node:10-slim

LABEL version="1.0.1"
LABEL repository="http://github.com/natemoo-re/actions-firebase"
LABEL homepage="http://github.com/natemoo-re/actions-firebase"
LABEL maintainer="Nate Moore <nate@natemoo.re>"

LABEL "com.github.actions.name"="GitHub Action for Firebase"
LABEL "com.github.actions.description"="Wraps Firebase CLI (firebase-tools) to enable deployment to Firebase"
LABEL "com.github.actions.icon"="upload-cloud"
LABEL "com.github.actions.color"="#ffcb00"
COPY LICENSE README.md THIRD_PARTY_NOTICE.md /

RUN yarn global add firebase-tools

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
