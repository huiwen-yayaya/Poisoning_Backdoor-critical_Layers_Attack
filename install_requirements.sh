#!/bin/sh
echo "begin Install>>>>>>>>>>>>>>>>>>>>"


dqtime=$(date "+%Y-%m-%d %H:%M:%S")


echo "datetime: ${dqtime}"

echo "Install pytorch"
#pip install pytorch==1.10.1 torchvision==0.11.2 torchaudio==0.10.1 cudatoolkit=11.3 -c pytorch -c conda-forge
pip install torch==1.11.0

echo "Install sklearn"
pip install scikit-learn

echo "Install opencv"
pip install opencv-python

echo "Install sk-image"
pip install Scikit-Image

echo "Install matplotlib"
pip install matplotlib

echo "Install hdbscan"
pip install hdbscan

echo "Install tqdm"
pip install tqdm

