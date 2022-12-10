#!/bin/bash

for model in resnet20, resnet32, resnet44, resnet56, resnet110, resnet1202
do
    echo "python -u trainer.py  --arch=$model  --epochs=10 --batch-size=128 --weight-decay=1e-4 --save-dir=save_$model |& tee -a log_$model"
    python -u trainer.py  --arch=$model  --epochs=10 --batch-size=128 --weight-decay=1e-4 --save-dir=save_$model |& tee -a log_$model
done
# for model in LeNet
# do
#     echo "python -u trainer.py  --save-dir=save_$model |& tee -a log_$model"
#     python -u trainer.py  --save-dir=save_$model |& tee -a log_$model
# done