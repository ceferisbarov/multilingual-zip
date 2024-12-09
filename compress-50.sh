#!/bin/bash

# # List of languages
languages=("en" "tr" "ar" "zh" "eo" "sr" "uk" "bg" "ru" "vi") 

# Qwen1.5-7b
for lang in "${languages[@]}"; do
  input_file="genesis/${lang}-50.txt"
  output_file="qwen1.5-7b-genesis/${lang}-50.llzip"
  llama-zip models/Qwen1.5-7B-Q4_K_M.gguf --n-gpu-layers -1 -c < "$input_file" > "$output_file"
done

# aya-23
for lang in "${languages[@]}"; do
  input_file="genesis/${lang}-50.txt"
  output_file="aya23-genesis/${lang}-50.llzip"
  llama-zip models/aya-23-8B-Q4_K_M.gguf --n-gpu-layers -1 -c < "$input_file" > "$output_file"
done

# gemma-2b
for lang in "${languages[@]}"; do
  input_file="genesis/${lang}-50.txt"
  output_file="gemma-2b-genesis/${lang}-50.llzip"
  llama-zip models/gemma-2b.Q4_K_M.gguf --n-gpu-layers -1 -c < "$input_file" > "$output_file"
done

# gemma-7b
for lang in "${languages[@]}"; do
  input_file="genesis/${lang}-50.txt"
  output_file="gemma-7b-genesis/${lang}-50.llzip"
  llama-zip models/gemma-7b-Q4_K_M.gguf --n-gpu-layers -1 -c < "$input_file" > "$output_file"
done


# olmo-7b
for lang in "${languages[@]}"; do
  input_file="genesis/${lang}-50.txt"
  output_file="olmo-7b-genesis/${lang}-50.llzip"
  llama-zip models/OLMo-7B-hf-Q4_K_M.gguf --n-gpu-layers -1 -c < "$input_file" > "$output_file"
done

# gemma-2-9b
for lang in "${languages[@]}"; do
  input_file="genesis/${lang}-50.txt"
  output_file="gemma-2-9b-genesis/${lang}-50.llzip"
  llama-zip models/gemma-2-9b.Q4_K_M.gguf --n-gpu-layers -1 -c < "$input_file" > "$output_file"
done

# Yi-1.5-9B
for lang in "${languages[@]}"; do
  input_file="genesis/${lang}-50.txt"
  output_file="Yi-1.5-9B-genesis/${lang}-50.llzip"
  llama-zip models/Yi-1.5-9B.Q4_K_M.gguf --n-gpu-layers -1 -c < "$input_file" > "$output_file"
done

# Qwen2.5-7B
for lang in "${languages[@]}"; do
  input_file="genesis/${lang}-50.txt"
  output_file="Qwen2.5-7B-genesis/${lang}-50.llzip"
  llama-zip models/Qwen2.5-7B.Q4_K_M.gguf --n-gpu-layers -1 -c < "$input_file" > "$output_file"
done

# Qwen2.5-7B
for lang in "${languages[@]}"; do
  input_file="genesis/${lang}-50.txt"
  output_file="granite-3.0-8b-base-genesis/${lang}-50.llzip"
  llama-zip models/granite-3.0-8b-base.Q4_K_M.gguf --n-gpu-layers -1 -c < "$input_file" > "$output_file"
done

# Qwen2.5-7B
for lang in "${languages[@]}"; do
  input_file="genesis/${lang}-50.txt"
  output_file="gemma-2b-it-genesis/${lang}-50.llzip"
  llama-zip models/gemma-2b-it.Q4_K_M.gguf --n-gpu-layers -1 -c < "$input_file" > "$output_file"
done
