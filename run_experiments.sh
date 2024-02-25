#!/bin/bash

# Script to reproduce results

for ((i=0;i<10;i+=1))
do 
	python main.py \
	--policy "SAC" \
	--env "HalfCheetah-v3" \
	--seed $i

	python main.py \
	--policy "SAC" \
	--env "Hopper-v3" \
	--seed $i

	python main.py \
	--policy "SAC" \
	--env "Walker2d-v3" \
	--seed $i

	python main.py \
	--policy "SAC" \
	--env "Ant-v3" \
	--seed $i

	python main.py \
	--policy "SAC" \
	--env "Humanoid-v3" \
	--seed $i

	python main.py \
	--policy "SAC" \
	--env "InvertedPendulum-v2" \
	--seed $i \
	--start_timesteps 1000

	python main.py \
	--policy "SAC" \
	--env "InvertedDoublePendulum-v2" \
	--seed $i \
	--start_timesteps 1000

	python main.py \
	--policy "SAC" \
	--env "Reacher-v2" \
	--seed $i \
	--start_timesteps 1000
done
