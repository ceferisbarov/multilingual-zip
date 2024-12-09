# llama-zip models/aya-23-8B-Q4_K_M.gguf --n-gpu-layers -1 -c < genesis/azerbaijani-50.txt > aya23-genesis/azerbaijani-50.llzip
# llama-zip models/aya-23-8B-Q4_K_M.gguf --n-gpu-layers -1 -c < genesis/russian-50.txt > aya23-genesis/russian-50.llzip
# llama-zip models/aya-23-8B-Q4_K_M.gguf --n-gpu-layers -1 -c < genesis/arabic-50.txt > aya23-genesis/arabic-50.llzip
# llama-zip models/aya-23-8B-Q4_K_M.gguf --n-gpu-layers -1 -c < genesis/chinese-50.txt > aya23-genesis/chinese-50.llzip
# llama-zip models/aya-23-8B-Q4_K_M.gguf --n-gpu-layers -1 -c < genesis/english-50.txt > aya23-genesis/english-50.llzip
# llama-zip models/aya-23-8B-Q4_K_M.gguf --n-gpu-layers -1 -c < genesis/esperanto-50.txt > aya23-genesis/esperanto-50.llzip

#!/bin/bash

# # List of languages
models=("gemma-2b-bf16" "gemma-2b.Q3_K_M" "gemma-2b.Q4_K_M" "gemma-2b.Q5_K_M" "gemma-2b.Q6_K" "gemma-2b.Q8_0") 

# models=("gemma-2b.Q3_K_M")
# # gemma-7b
for model in "${models[@]}"; do
  input_file="genesis/en-50.txt"
  output_file="quantization-genesis/${model}-50-2b.llzip"
  { time llama-zip "models/${model}.gguf" --n-gpu-layers -1 -c < "$input_file" > "$output_file"; } 2>> "trace/quantization"
done

# # # List of languages
# models=("gemma-7b-Q8_0" "gemma-7b-Q3_K_M" "gemma-7b-Q4_K_M" "gemma-7b-Q5_K_M" "gemma-7b-Q6_K" "gemma-7b-Q8_0") 

# # models=("gemma-2b.Q3_K_M")
# # # gemma-7b
# for model in "${models[@]}"; do
#   input_file="genesis/en-50.txt"
#   output_file="quantization-genesis/${model}-50-7b.llzip"
#   { time llama-zip "models/${model}.gguf" --n-gpu-layers -1 -c < "$input_file" > "$output_file"; } 2>> "trace/quantization-7b"
# done
