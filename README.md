# Facial Micro-Expression Generation based on Deep Motion Re-targeting and Transfer Learning

by Xinqi Fan, Ali Shahid, and Hong Yan

## Introduction
This repository is for our work Facial Micro-Expression Generation based on Deep Motion Re-targeting and Transfer Learning.

## Usage
### Requirement
Python 3.6

PyTorch 1.6


### Download
Clone the repository:
```
git clone https://github.com/xinqi-fan/FMEG
cd FMEG
```

### Prepare data

* Please download CASME, SMIC, and SAMM.
* Modify the path to your dataset in the following config/camse-256.yaml, config/smic-256.yaml, config/samm-256.yaml.

### Pretrained weights

* Please find them [here](https://portland-my.sharepoint.com/:f:/g/personal/xinqifan2-c_my_cityu_edu_hk1/EibgTr1yER1JsLGSBW51mBwBIyboyjSD7YviDfznM56Dow?e=seGxEb)

### Train the model

* Please refer to train.sh and modify the related checkpoint path.

### Test the model

* Please refer to demo.sh and modify the related paths.
* The pretrained weights can be found in the above mentioned links.

## Citation
To be updated

## Comment
We welcome any pull request for improving the code.

## Acknowledge
More information can be found from the original [first-order-motion repo](https://github.com/AliaksandrSiarohin/first-order-model).
