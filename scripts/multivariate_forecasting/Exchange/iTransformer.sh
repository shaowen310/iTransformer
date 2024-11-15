# export CUDA_VISIBLE_DEVICES=3

model_name=iTransformer

for pred_len in 24 36 48 96 192
do

model_id=exchange_96_${pred_len}

python -u run.py \
  --is_training 1 \
  --root_path ./dataset/exchange_rate/ \
  --data_path exchange_rate.csv \
  --model_id $model_id \
  --model $model_name \
  --data custom \
  --features M \
  --seq_len 96 \
  --pred_len $pred_len \
  --e_layers 2 \
  --enc_in 8 \
  --dec_in 8 \
  --c_out 8 \
  --des 'Exp' \
  --d_model 128 \
  --d_ff 128 \
  --itr 1 \
  2>&1 | tee -a logs/$model_id.log

done
