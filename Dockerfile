FROM python:3.8-slim

COPY requirements.txt /root/

RUN pip install -r /root/requirements.txt

RUN useradd --create-home --home-dir /home/hacklab hacklab \
	&& chown -R hacklab:hacklab /home/hacklab

USER hacklab

CMD ["jupyter-console"]
