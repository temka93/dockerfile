FROM python:2
ARG inBuildNum
ENV build_id=$inBuildNum
ADD editjson.py $HOME/
ADD version.json $HOME/
CMD python, ./editjson.py, $build_id
