FROM registry.cn-hongkong.aliyuncs.com/duolabmeng/pyrun:paddlehub222

COPY app /app
WORKDIR /app

ADD /app/app_compat.py /usr/local/lib/python3.7/site-packages/paddlehub/serving/app_compat.py
RUN hub install ernie_gen_couplet

EXPOSE 9000
CMD ["/bin/bash","-c","hub serving start -m ernie_gen_couplet -p 9000"]
