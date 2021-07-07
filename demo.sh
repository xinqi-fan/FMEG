#!/bin/bash
#SBATCH --partition=gpu_7d1g
#SBATCH --nodes=1                # 1 computer nodes
#SBATCH --cpus-per-task=4        # 4 OpenMP threads on EACH MPI TASK
#SBATCH --gres=gpu:1             # Using 1 GPU card
#SBATCH --mem=32GB               # Request xGB memory
#SBATCH --output=/home/xinqifan2/Project/first-order-model/hpc/demo_%j.log   # Standard output

module load gcc openmpi/4.0.5/gcc/8.3.0
module load cuda/11.0.2 cuda/blas/11.0.2 cuda/fft/11.0.2

source activate pytorch160

nvidia-smi

cd /home/xinqifan2/Project/first-order-model

# casme
# python demo.py  --config config/camse2-256.yaml --driving_video ../../Data/Face_Generation/MEGC2021_generation_video/source_samples/casme2_challenge_256_png/Surprise_EP01_13.mp4 --source_image ../../Data/Face_Generation/MEGC2021_generation/target_template_face/normalized_westernMale.jpg --checkpoint checkpoints_camse/00000499-checkpoint.pth.tar --relative --adapt_scale --result_video Surprise_EP01_13_westernMale.mp4
# python demo.py  --config config/camse2-256.yaml --driving_video ../../Data/Face_Generation/MEGC2021_generation_video/source_samples/casme2_challenge_256_png/Surprise_EP01_13.mp4 --source_image ../../Data/Face_Generation/MEGC2021_generation/target_template_face/normalized_asianFemale.jpg --checkpoint checkpoints_camse/00000499-checkpoint.pth.tar --relative --adapt_scale --result_video Surprise_EP01_13_asianFemale.mp4


# smic
python demo.py  --config config/smic-256.yaml --driving_video ../../Data/Face_Generation/MEGC2021_generation_video/source_samples/Smic_challenge_256_png/Negative_s11_ne_02.mp4 --source_image ../../Data/Face_Generation/MEGC2021_generation/target_template_face/normalized_westernMale.jpg --checkpoint checkpoints_samm/00000449-checkpoint.pth.tar --relative --adapt_scale --result_video Negative_s11_ne_02_westernMale.mp4
python demo.py  --config config/smic-256.yaml --driving_video ../../Data/Face_Generation/MEGC2021_generation_video/source_samples/Smic_challenge_256_png/Negative_s11_ne_02.mp4 --source_image ../../Data/Face_Generation/MEGC2021_generation/target_template_face/normalized_asianFemale.jpg --checkpoint checkpoints_samm/00000449-checkpoint.pth.tar --relative --adapt_scale --result_video Negative_s11_ne_02_asianFemale.mp4

python demo.py  --config config/smic-256.yaml --driving_video ../../Data/Face_Generation/MEGC2021_generation_video/source_samples/Smic_challenge_256_png/Positive_s3_po_05.mp4 --source_image ../../Data/Face_Generation/MEGC2021_generation/target_template_face/normalized_westernMale.jpg --checkpoint checkpoints_samm/00000449-checkpoint.pth.tar --relative --adapt_scale --result_video Positive_s3_po_05_westernMale.mp4
python demo.py  --config config/smic-256.yaml --driving_video ../../Data/Face_Generation/MEGC2021_generation_video/source_samples/Smic_challenge_256_png/Positive_s3_po_05.mp4 --source_image ../../Data/Face_Generation/MEGC2021_generation/target_template_face/normalized_asianFemale.jpg --checkpoint checkpoints_samm/00000449-checkpoint.pth.tar --relative --adapt_scale --result_video Positive_s3_po_05_asianFemale.mp4

python demo.py  --config config/smic-256.yaml --driving_video ../../Data/Face_Generation/MEGC2021_generation_video/source_samples/Smic_challenge_256_png/Surprise_s20_sur_01.mp4 --source_image ../../Data/Face_Generation/MEGC2021_generation/target_template_face/normalized_westernMale.jpg --checkpoint checkpoints_samm/00000449-checkpoint.pth.tar --relative --adapt_scale --result_video Surprise_s20_sur_01_westernMale.mp4
python demo.py  --config config/smic-256.yaml --driving_video ../../Data/Face_Generation/MEGC2021_generation_video/source_samples/Smic_challenge_256_png/Surprise_s20_sur_01.mp4 --source_image ../../Data/Face_Generation/MEGC2021_generation/target_template_face/normalized_asianFemale.jpg --checkpoint checkpoints_samm/00000449-checkpoint.pth.tar --relative --adapt_scale --result_video Surprise_s20_sur_01_asianFemale.mp4



# SAMM

python demo.py  --config config/smic-256.yaml --driving_video ../../Data/Face_Generation/MEGC2021_generation_video/source_samples/SAMM_challenge_256_png/Negative_018_3_1.mp4 --source_image ../../Data/Face_Generation/MEGC2021_generation/target_template_face/normalized_westernMale.jpg --checkpoint checkpoints/00000449-checkpoint.pth.tar --relative --adapt_scale --result_video Negative_018_3_1_westernMale.mp4
python demo.py  --config config/smic-256.yaml --driving_video ../../Data/Face_Generation/MEGC2021_generation_video/source_samples/SAMM_challenge_256_png/Negative_018_3_1.mp4 --source_image ../../Data/Face_Generation/MEGC2021_generation/target_template_face/normalized_asianFemale.jpg --checkpoint checkpoints/00000449-checkpoint.pth.tar --relative --adapt_scale --result_video Negative_018_3_1_asianFemale.mp4
 
python demo.py  --config config/smic-256.yaml --driving_video ../../Data/Face_Generation/MEGC2021_generation_video/source_samples/SAMM_challenge_256_png/Positive_022_3_3.mp4 --source_image ../../Data/Face_Generation/MEGC2021_generation/target_template_face/normalized_westernMale.jpg --checkpoint checkpoints/00000449-checkpoint.pth.tar --relative --adapt_scale --result_video Positive_022_3_3_westernMale.mp4
python demo.py  --config config/smic-256.yaml --driving_video ../../Data/Face_Generation/MEGC2021_generation_video/source_samples/SAMM_challenge_256_png/Positive_022_3_3.mp4 --source_image ../../Data/Face_Generation/MEGC2021_generation/target_template_face/normalized_asianFemale.jpg --checkpoint checkpoints/00000449-checkpoint.pth.tar --relative --adapt_scale --result_video Positive_022_3_3_asianFemale.mp4
 
python demo.py  --config config/smic-256.yaml --driving_video ../../Data/Face_Generation/MEGC2021_generation_video/source_samples/SAMM_challenge_256_png/Surprise_007_7_1.mp4 --source_image ../../Data/Face_Generation/MEGC2021_generation/target_template_face/normalized_westernMale.jpg --checkpoint checkpoints/00000449-checkpoint.pth.tar --relative --adapt_scale --result_video Surprise_007_7_1_westernMale.mp4
python demo.py  --config config/smic-256.yaml --driving_video ../../Data/Face_Generation/MEGC2021_generation_video/source_samples/SAMM_challenge_256_png/Surprise_007_7_1.mp4 --source_image ../../Data/Face_Generation/MEGC2021_generation/target_template_face/normalized_asianFemale.jpg --checkpoint checkpoints/00000449-checkpoint.pth.tar --relative --adapt_scale --result_video Surprise_007_7_1_asianFemale.mp4
 
