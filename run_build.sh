docker build -f ./Dockerfile -t ernie_gen_couplet:1.0 .
docker rm -f ernie_gen_couplet
docker run -itd --name ernie_gen_couplet -p 9022:9000 ernie_gen_couplet:1.0
docker logs ernie_gen_couplet
docker diff ernie_gen_couplet

#没问题的话就可以执行推送命令
docker tag ernie_gen_couplet:1.0 registry.cn-shenzhen.aliyuncs.com/duolabmeng/ernie_gen_couplet:1.0
docker push registry.cn-shenzhen.aliyuncs.com/duolabmeng/ernie_gen_couplet:1.0


