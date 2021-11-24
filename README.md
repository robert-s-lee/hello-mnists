
[![gridai mnists keras](https://github.com/robert-s-lee/hello-mnists/actions/workflows/gridai_mnist_keras.yml/badge.svg)](https://github.com/robert-s-lee/hello-mnists/actions/workflows/gridai_mnist_keras.yml)
[![gridai mnists lightning](https://github.com/robert-s-lee/hello-mnists/actions/workflows/gridai_mnist_lightning.yml/badge.svg)](https://github.com/robert-s-lee/hello-mnists/actions/workflows/gridai_mnist_lightning.yml) 
[![gridai mnists](https://github.com/robert-s-lee/hello-mnists/actions/workflows/gridai_mnist_pytroch.yml/badge.svg)](https://github.com/robert-s-lee/hello-mnists/actions/workflows/gridai_mnist_pytroch.yml)
[![gridai cifar10 lightning](https://github.com/robert-s-lee/hello-mnists/actions/workflows/gridai_cifar10_ligntning.yml/badge.svg)](https://github.com/robert-s-lee/hello-mnists/actions/workflows/gridai_cifar10_ligntning.yml)

Grid.ai running MNIST classifier written in PyTorch, PyTorch Lightning, and Keras.

NOTE: Please create Grid.ai Datastore when running Hyperparameter Optimization (HPO).
Without the Datastore, HPO performs the high-frequency download of [MNIST datasets](http://yann.lecun.com/exdb/mnist/).
The download may fail from time to time resulting in failed experiments.
The download failure is logged in Grid.ai `Stdout Logs` as `urllib.error.HTTPError: HTTP Error 503: Service Unavailable`


# Install Dependencies

[Grid Session SSH](https://docs.grid.ai/products/sessions/how-to-ssh-into-a-session) can be used to run the below CLI commands.

```bash
conda create --yes --name mnist python=3.8
conda activate mnist
pip install -r requirements.txt
pip install lightning-grid
grid login

git clone https://github.com/robert-s-lee/hello-mnists
cd hello-mnists
```

# PyTorch

Use the CLI commands below. 

```bash
# Local Run
python pytorch.py

# Grid.ai Run
grid run pytorch.py | tee /tmp/grid.run.log
```

# PyTorch Lightning

Use the CLI commands below.

```bash
# Local Run
python plmnist.py

# Grid.ai Run
grid run plmnist.py | tee /tmp/grid.run.log
```

# Keras

Use the CLI commands below.

```bash
# Local Run
python keras.py

# Grid.ai Run
grid run keras.py | tee /tmp/grid.run.log
```

# CIFAR-10 Bonus

Use the CLI commands below.

```bash
# Local Run
python plcifar10.py

# Grid.ai Run
grid run plcifar10.py | tee /tmp/grid.run.log
```

# Datastore Examples with Hyperparameter Optimization(HPO)

```bash
# build the datastore for hyperparameter sweep
ls data cifar-10-batches-py MNIST
grid datastore create --name hello-mnist --source .
```

- Run all 4 scripts from bash using the CLI command

```
grid run run.sh --data_dir grid:hello-mnist:1 
```

- Run in parallel varying the learning rate using the CLI commands.

```
grid run --use_spot run.sh --data_dir grid:hello-mnist:1 --max_epochs 1 --lr "uniform(0,.1,8)"
```

# GPU examples

## Node Count: 1 GPU Per Server (n1g1)
```
grid run --use_spot --instance_type g4dn.2xlarge --gpus 1 --name n1g1-mnists-$(date '+%m%d-%H%M%S') runtorch.sh --data_dir grid:hello-mnist:1 --max_epochs 8 --gpus 1
```

TODO: Multi node for PyTorch and Lightning.

# Default Command Line Argument Values per Script

| Argument Name  | keras.py | pl_cifar10.py | pl_mnist.py | pytorch.py| 
|  --:| :--: | :--: | :--: | :--: | 
| --max_epochs | 5 | 10 | 10 | 14| 
| --lr | 1.00E-03 | 1.00E-03 | 1.00E-03 | 1 | 
| --batch_size | 32 | 32 | 32 | 64 | 
| --data_dir | os.getcwd | os.getcwd | os.getcwd | os.getcwd | 
| --num_workers |   | 8 | 8 |  | 
| --gpus |   | 0 | 0 |  | 
| --test_batch_size |   |   |   | 1000| 
| --seed |   |   |   | 1| 
| --save_model |   |   |   | FALSE| 
| --log_interval |   |   |   | 10| 
| --gamma |   |   |   | 0.7| 
| --dry_run |   |   |   | FALSE| 
| --cuda |   |   |   | FALSE | 

# Grid.ai Run Monitor

```bash
RUN_NAME=$(grep grid_name /tmp/grid.run.log | cut -d':' -f 2 | sed -e 's/^[[:space:]]*//')
watch grid status --details $RUN_NAME
grid history | grep $RUN_NAME
grid logs ${RUN_NAME}-exp0 | tee /tmp/grid.exp0.log
```
