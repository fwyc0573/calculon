#!/bin/bash

# Create results directory if it doesn't exist
mkdir -p results/a800

# # FP32 96GPUS 175B PP12TP8DP1
# calculon llm models/gpt3-175B.json examples/96_gpu_PP12TP8DP1.json systems/h800_80g_nvl8.json results/h800/gpt3-175B_96gpu_PP12TP8DP1.json

# # FP32 96GPUS 70B PP12TP4DP2
# calculon llm models/gpt3-70B.json examples/96_gpu_PP12TP4DP2.json systems/h800_80g_nvl8.json results/h800/gpt3-70B_96gpu_PP12TP4DP2.json

# # FP32 64GPUS 40B PP8TP4DP2
# calculon llm models/gpt3-40B.json examples/64_gpu_PP8TP4DP2.json systems/h800_80g_nvl8.json results/h800/gpt3-40B_64gpu_PP8TP4DP2.json

# # FP32 64GPUS 30B PP8TP4DP2
# calculon llm models/gpt3-30B.json examples/64_gpu_PP8TP4DP2.json systems/h800_80g_nvl8.json results/h800/gpt3-30B_64gpu_PP8TP4DP2.json

# # FP32 64GPUS 13B PP8TP4DP2
# calculon llm models/gpt3-13B.json examples/64_gpu_PP8TP4DP2.json systems/h800_80g_nvl8.json results/h800/gpt3-13B_64gpu_PP8TP4DP2.json


# FP32 8GPUS 13B PP2TP2DP2
# calculon llm models/gpt3-13B.json examples/8gpu_gpt13b_tp2_pp2_dp2.json systems/a800_80g.json results/a800/gpt3-13B_8gpu_PP2TP4DP1.json
# calculon llm models/gpt3-13B.json examples/8gpu_gpt13b_tp2_pp2_dp2.json systems/a800_80g.json results/a800/gpt3-13B_8gpu_PP2TP2DP2.json
# OOM

# FP32 8GPUS 13B PP4TP2DP1
calculon llm models/gpt3-13B.json examples/8gpu_gpt13b_tp2_pp4_dp1.json systems/a800_80g.json results/a800/gpt3-13B_8gpu_PP4TP2DP1.json

# FP32 8GPUS 13B PP8TP1DP1
calculon llm models/gpt3-13B.json examples/8gpu_gpt13b_tp1_pp8_dp1.json systems/a800_80g.json results/a800/gpt3-13B_8gpu_PP8TP1DP1.json




echo "All calculations completed. Results saved in results/a800 directory."