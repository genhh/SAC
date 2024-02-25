# SAC Implementation

PyTorch implementation of SAC


Networks are trained using [PyTorch 1.2](https://github.com/pytorch/pytorch) and Python 3.7. 

### Usage
The all environments results can be reproduced by running:
```
./run_experiments.sh
```
Experiments on single environments can be run by calling:
```
python main.py --env HalfCheetah-v2
```

Hyper-parameters can be modified with different arguments to main.py. 



### Results
Minor adjustments to hyperparamters, etc, to improve performance. Learning curves are still the original results found.

Learning curves are found under /learning_curves. Each learning curve are formatted as NumPy arrays of 201 evaluations (201,), where each evaluation corresponds to the average total reward from running the policy for 10 episodes with no exploration. The first evaluation is the randomly initialized policy network. Evaluations are peformed every 5000 time steps, over a total of 1 million time steps. 



