export DATA_DIR=/env/comprehension/data
export TASK_NAME=DuReader
export CUDA_VISIBLE_DEVICES=2,3
python main.py --model_type bert --model_name_or_path ERNIE_1_0_max-len-512-pytorch --task_name $TASK_NAME --do_train --evaluate_during_training --data_dir=$DATA_DIR/$TASK_NAME --max_seq_length 128 --per_gpu_train_batch_size 32 --learning_rate 1e-6 --num_train_epochs 10.0 --output_dir ./ernie_output/$TASK_NAME/ --overwrite_output_dir --overwrite_cache
