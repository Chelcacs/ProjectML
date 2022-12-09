#!/bin/bash

# for model in resnet44 resnet110
# do
#     echo "python -u trainer.py  --arch=$model  --save-dir=save_$model |& tee -a log_$model"
#     python -u trainer.py  --arch=$model  --save-dir=save_$model |& tee -a log_$model
# done
for model in LeNet
do
    echo "python -u trainer.py  --save-dir=save_$model |& tee -a log_$model"
    python -u trainer.py  --save-dir=save_$model |& tee -a log_$model
done