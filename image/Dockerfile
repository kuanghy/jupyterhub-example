# Build as huoty/systemuser
# Run with the DockerSpawner in JupyterHub

FROM jupyter/scipy-notebook

MAINTAINER Huoty Kong <sudohuoty@gmail.com>

EXPOSE 8888

USER root
WORKDIR /home
RUN userdel jovyan && rm -rf /home/jovyan
ENV SHELL /bin/bash
ADD systemuser.sh /srv/singleuser/systemuser.sh

# fetch juptyerhub-singleuser entrypoint
ADD jupyterhub-singleuser.py /usr/local/bin/jupyterhub-singleuser
RUN chmod 755 /usr/local/bin/jupyterhub-singleuser

# smoke test entrypoint
RUN USER_ID=65000 USER=systemusertest sh /srv/singleuser/systemuser.sh -h && userdel systemusertest

CMD ["sh", "/srv/singleuser/systemuser.sh"]
