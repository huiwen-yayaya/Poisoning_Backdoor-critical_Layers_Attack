# build and run
```bash
# exist: docker 9c87dfe0518b /Poisoning_Backdoor-critical_Layers_Attack
# The environment is similar to FLAME repo
# change "conda" to "pip" in install_requirements.sh
bash install_requirements.sh
mkdir save
python main_fed.py --dataset cifar --model resnet --attack lp_attack --lr 0.1 --malicious 0.1 --poison_frac 1.0 --local_ep 2 --local_bs 64 --attack_begin 0 --defence flame --epochs 200 --attack_label 5 --attack_goal -1 --trigger 'square' --triggerX 27 --triggerY 27 --gpu 0 --iid 1 --save save/quick_start
#result:
======================================
    IID: 1
    Dataset: cifar
    Model: resnet
    Model Init: None
    Aggregation Function: flame
    Attack method: adaptive
    Attack mode: 1
    Attack tau: 0.8
    Fraction of malicious agents: 10.0%
    Poison Frac: 1.0
    Backdoor From -1 to 5
    Attack Begin: 0
    Trigger Shape: square
    Trigger Position X: 27
    Trigger Position Y: 27
    Number of agents: 100
    Fraction of agents each turn: 10(10.0%)
    Local batch size: 64
    Local epoch: 2
    Client_LR: 0.1
    Client_Momentum: 0.9
    Global Rounds: 200
    Noise in FLAME: 0.001
======================================
Files already downloaded and verified
Files already downloaded and verified
use local malicious dataset
client 1 --attack--
[ 0 -1 -1  0  0  0 -1  0 -1  0]
[ 0  0 -1 -1 -1  0  0 -1  0  0]
[0, 1, 5, 6, 8, 9]
Round   0, Average loss 4.378
Main accuracy: 10.00
Backdoor accuracy: 0.00
use local malicious dataset
...
```