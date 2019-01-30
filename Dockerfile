FROM python:2
ARG inBuildNum
ENV build_id=$inBuildNum
ADD editjson.py /
ADD version.json /
RUN mkdir --parents /home/artyom/jsonRes/f
CMD python, ./editjson.py, $build_id
