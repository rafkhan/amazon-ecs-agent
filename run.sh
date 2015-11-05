docker run --name ecs-agent -d \
-v /var/run/docker.sock:/var/run/docker.sock \
-v /var/log/ecs:/log \
-v /var/lib/ecs/data:/data \
-p 127.0.0.1:51678:51678 \
--env-file /etc/ecs/ecs.config \
-e ECS_LOGFILE=/log/ecs-agent.log \
-e ECS_DATADIR=/data/ amazon/amazon-ecs-agent \
-e ECS_CLUSTER="ELB-TUTORIAL-1"
