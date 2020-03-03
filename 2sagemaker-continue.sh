#/bin/bash
source sagemaker_venv/bin/activate
docker pull crr0004/sagemaker-rl-tensorflow:console
docker tag crr0004/sagemaker-rl-tensorflow:console 520713654638.dkr.ecr.us-east-1.amazonaws.com/sagemaker-rl-tensorflow:coach0.11-cpu-py3
mkdir -p ~/.sagemaker && cp config.yaml ~/.sagemaker
cd rl_coach
source ./env.sh
export LOCAL_ENV_VAR_JSON_PATH=$(greadlink -f ./env_vars.json)
ipython rl_deepracer_coach_robomaker-continue.py
