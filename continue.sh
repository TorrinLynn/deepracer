#/bin/bash
ttab ./1minio.sh
sleep 5s
ttab ./2sagemaker-continue.sh
sleep 10s
ttab ./3robomaker.sh
