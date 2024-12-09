#!/bin/bash

# # List of languages
languages=("tr" "ar" "zh" "en" "eo" "sr" "uk" "bg" "ru" "vi") 

# Qwen1.5-7b
for lang in "${languages[@]}"; do
  input_file="genesis/${lang}-200.txt"
  output_file="qwen1.5-7b-genesis/${lang}-200.llzip"
  llama-zip models/Qwen1.5-7B-Q4_K_M.gguf --n-gpu-layers -1 -c < "$input_file" > "$output_file"
done

# aya-23
for lang in "${languages[@]}"; do
  input_file="genesis/${lang}-200.txt"
  output_file="aya23-genesis/${lang}-200.llzip"
  llama-zip models/aya-23-8B-Q4_K_M.gguf --n-gpu-layers -1 -c < "$input_file" > "$output_file"
done

# gemma-2b
for lang in "${languages[@]}"; do
  input_file="genesis/${lang}-200.txt"
  output_file="gemma-2b-genesis/${lang}-200.llzip"
  llama-zip models/gemma-2b.Q4_K_M.gguf --n-gpu-layers -1 -c < "$input_file" > "$output_file"
done

# gemma-7b
for lang in "${languages[@]}"; do
  input_file="genesis/${lang}-200.txt"
  output_file="gemma-7b-genesis/${lang}-200.llzip"
  llama-zip models/gemma-7b-Q4_K_M.gguf --n-gpu-layers -1 -c < "$input_file" > "$output_file"
done

