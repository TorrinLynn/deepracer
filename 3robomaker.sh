#/bin/bash
cd ~/deepracer
source sagemaker_venv/bin/activate
cd rl_coach
source ./env.sh
docker pull crr0004/deepracer_robomaker:console
cd ..
docker run -e S3_ENDPOINT_URL --rm --name dr --env-file ./robomaker.env --network sagemaker-local -p 8080:5900 -it crr0004/deepracer_robomaker:console
