#!/bin/bash

# # List of languages
languages=("pl" "sk" "sl" "cs") 

# aya-23
for lang in "${languages[@]}"; do
  input_file="genesis/${lang}-50.txt"
  output_file="aya23-genesis/${lang}-50.llzip"
  llama-zip models/aya-23-8B-Q4_K_M.gguf --n-gpu-layers -1 -c < "$input_file" > "$output_file"
done

# gemma-7b
for lang in "${languages[@]}"; do
  input_file="genesis/${lang}-50.txt"
  output_file="gemma-7b-genesis/${lang}-50.llzip"
  llama-zip models/gemma-7b-Q4_K_M.gguf --n-gpu-layers -1 -c < "$input_file" > "$output_file"
done
