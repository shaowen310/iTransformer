export CUDA_VISIBLE_DEVICES=7

bash scripts/multivariate_forecasting/ETT/iTransformer_ETTh1.sh
bash scripts/multivariate_forecasting/ETT/iTransformer_ETTh2.sh
bash scripts/multivariate_forecasting/ETT/iTransformer_ETTm1.sh
bash scripts/multivariate_forecasting/ETT/iTransformer_ETTm2.sh
bash scripts/multivariate_forecasting/Weather/iTransformer.sh
bash scripts/multivariate_forecasting/Exchange/iTransformer.sh

# bash scripts/zeroshot/ETT/iTransformer_ETTh1_ETTh2.sh
# bash scripts/zeroshot/ETT/iTransformer_ETTh2_ETTh1.sh
# bash scripts/zeroshot/ETT/iTransformer_ETTm1_ETTm2.sh
# bash scripts/zeroshot/ETT/iTransformer_ETTm2_ETTm1.sh
