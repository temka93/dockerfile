FROM python:2
ADD editjson.py /
ADD version.json /
RUN mkdir --parents /home/artyom/jsonRes/f
RUN pip install pytest
CMD [ "python", "./editjson.py", "5"]
