# export CUDA_VISIBLE_DEVICES=0

model_name=iTransformer

batch_size=32

for pred_len in 24 36 48 96 192
# for pred_len in 96
do

model_id=ETTm2_96_${pred_len}

python -u run.py \
  --is_training 1 \
  --root_path ./dataset/ETT-small/ \
  --data_path ETTm2.csv \
  --model_id $model_id \
  --model $model_name \
  --data ETTm2 \
  --features M \
  --seq_len 96 \
  --pred_len $pred_len \
  --e_layers 2 \
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --des 'Exp' \
  --d_model 128 \
  --d_ff 128 \
  --batch_size $batch_size \
  --itr 1 \
  2>&1 | tee -a logs/$model_id.log

done
