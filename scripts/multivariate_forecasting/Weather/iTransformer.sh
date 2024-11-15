export CUDA_VISIBLE_DEVICES=1

model_name=iTransformer

for pred_len in 24 36 48 96 192
do

model_id=weather_96_${pred_len}

python -u run.py \
  --is_training 1 \
  --root_path ./dataset/weather/ \
  --data_path weather.csv \
  --model_id $model_id \
  --model $model_name \
  --data custom \
  --features M \
  --seq_len 96 \
  --pred_len $pred_len \
  --e_layers 3 \
  --enc_in 21 \
  --dec_in 21 \
  --c_out 21 \
  --des 'Exp' \
  --d_model 512\
  --d_ff 512\
  --itr 1 \
  2>&1 | tee -a logs/$model_id.log

done
