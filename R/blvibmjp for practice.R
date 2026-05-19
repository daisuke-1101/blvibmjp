library(blvibmjp)
library(readxl)
# 2. シミュレーションの設定（数字は画像と同じにしています）
param <- list()
param$simulation_length <- 60  # 期間（月）
param$n_simulation <- 3       # 繰り返す回数
param$output_dir <- "result"   # 結果の保存フォルダ名

# 対策の設定
param$control_insects <- 0.3
param$change_gloves <- TRUE
param$feed_raw_colostrum <- FALSE

# 3. データの読み込み
# ※ここを "input.xlsx" （ファイル名だけ）にするのがポイント！
data <- prepare_data(
  "input.xlsx", 
  param
)

# 4. シミュレーションの実行
result_data <- simulate_blv_spread(data, param)

# 5. グラフで表示
plot_prev(param, language = "Japanese")