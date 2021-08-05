# Hello MNIST in 3 Frameworks

Simple MNIST classifier written in PyTorch, PyTorch Lightning, and Keras.

# Install Dependencies

```bash
conda create --yes --name mnist python=3.8
conda activate mnist
pip install -r requirements.txt
pip install lightning-grid
grid login
```

# PyTorch

Use the CLI commands below or click 
[![PyTorch](https://img.shields.io/badge/rid_AI-run-78FF96.svg?labelColor=black&logo=data:image/svg%2bxml;base64,PHN2ZyB3aWR0aD0iNDgiIGhlaWdodD0iNDgiIGZpbGw9Im5vbmUiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PHBhdGggZD0iTTEgMTR2MjBhMTQgMTQgMCAwMDE0IDE0aDlWMzYuOEgxMi42VjExaDIyLjV2N2gxMS4yVjE0QTE0IDE0IDAgMDAzMi40IDBIMTVBMTQgMTQgMCAwMDEgMTR6IiBmaWxsPSIjZmZmIi8+PHBhdGggZD0iTTM1LjIgNDhoMTEuMlYyNS41SDIzLjl2MTEuM2gxMS4zVjQ4eiIgZmlsbD0iI2ZmZiIvPjwvc3ZnPg==)](
https://platform.grid.ai/#/runs?script=https://github.com/robert-s-lee/hello-mnists/blob/60b2ca867645f727cd7ab83e3b810b05ae085aa5/pytorch.py&cloud=grid&instance=t2.medium&accelerators=1&disk_size=200&framework=lightning 
)

```bash
# Local Run
python pytorch.py

# Grid.ai Run
grid run pytorch.py | tee /tmp/grid.run.log
```

# PyTorch Lightning

Use the CLI commands below or click 
[![Lightning](https://img.shields.io/badge/rid_AI-run-78FF96.svg?labelColor=black&logo=data:image/svg%2bxml;base64,PHN2ZyB3aWR0aD0iNDgiIGhlaWdodD0iNDgiIGZpbGw9Im5vbmUiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PHBhdGggZD0iTTEgMTR2MjBhMTQgMTQgMCAwMDE0IDE0aDlWMzYuOEgxMi42VjExaDIyLjV2N2gxMS4yVjE0QTE0IDE0IDAgMDAzMi40IDBIMTVBMTQgMTQgMCAwMDEgMTR6IiBmaWxsPSIjZmZmIi8+PHBhdGggZD0iTTM1LjIgNDhoMTEuMlYyNS41SDIzLjl2MTEuM2gxMS4zVjQ4eiIgZmlsbD0iI2ZmZiIvPjwvc3ZnPg==)](
https://platform.grid.ai/#/runs?script=https://github.com/robert-s-lee/hello-mnists/blob/60b2ca867645f727cd7ab83e3b810b05ae085aa5/plmnist.py&cloud=grid&instance=t2.medium&accelerators=1&disk_size=200&framework=lightning
)

```bash
# Local Run
python plmnist.py

# Grid.ai Run
grid run plmnist.py | tee /tmp/grid.run.log
```

# Keras

Use the CLI commands below or click 
[![Keras](https://img.shields.io/badge/rid_AI-run-78FF96.svg?labelColor=black&logo=data:image/svg%2bxml;base64,PHN2ZyB3aWR0aD0iNDgiIGhlaWdodD0iNDgiIGZpbGw9Im5vbmUiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PHBhdGggZD0iTTEgMTR2MjBhMTQgMTQgMCAwMDE0IDE0aDlWMzYuOEgxMi42VjExaDIyLjV2N2gxMS4yVjE0QTE0IDE0IDAgMDAzMi40IDBIMTVBMTQgMTQgMCAwMDEgMTR6IiBmaWxsPSIjZmZmIi8+PHBhdGggZD0iTTM1LjIgNDhoMTEuMlYyNS41SDIzLjl2MTEuM2gxMS4zVjQ4eiIgZmlsbD0iI2ZmZiIvPjwvc3ZnPg==)](
https://platform.grid.ai/#/runs?script=https://github.com/robert-s-lee/hello-mnists/blob/60b2ca867645f727cd7ab83e3b810b05ae085aa5/keras.py&cloud=grid&instance=t2.medium&accelerators=1&disk_size=200&framework=lightning&script_args=keras.py  
)

```bash
# Local Run
python keras.py

# Grid.ai Run
grid run keras.py | tee /tmp/grid.run.log
```

# CIFAR-10 Bonus

Use the CLI commands below or click 
[![Keras](https://img.shields.io/badge/rid_AI-run-78FF96.svg?labelColor=black&logo=data:image/svg%2bxml;base64,PHN2ZyB3aWR0aD0iNDgiIGhlaWdodD0iNDgiIGZpbGw9Im5vbmUiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PHBhdGggZD0iTTEgMTR2MjBhMTQgMTQgMCAwMDE0IDE0aDlWMzYuOEgxMi42VjExaDIyLjV2N2gxMS4yVjE0QTE0IDE0IDAgMDAzMi40IDBIMTVBMTQgMTQgMCAwMDEgMTR6IiBmaWxsPSIjZmZmIi8+PHBhdGggZD0iTTM1LjIgNDhoMTEuMlYyNS41SDIzLjl2MTEuM2gxMS4zVjQ4eiIgZmlsbD0iI2ZmZiIvPjwvc3ZnPg==)](
https://platform.grid.ai/#/runs?script=https://github.com/robert-s-lee/hello-mnists/blob/60b2ca867645f727cd7ab83e3b810b05ae085aa5/plcifar10.py&cloud=grid&instance=t2.medium&accelerators=1&disk_size=200&framework=lightning&script_args=plcifar10.py  
)
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

- Run all 4 scripts from bash using the CLI commands below or click 
[![PyTorch](https://img.shields.io/badge/rid_AI-run-78FF96.svg?labelColor=black&logo=data:image/svg%2bxml;base64,PHN2ZyB3aWR0aD0iNDgiIGhlaWdodD0iNDgiIGZpbGw9Im5vbmUiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PHBhdGggZD0iTTEgMTR2MjBhMTQgMTQgMCAwMDE0IDE0aDlWMzYuOEgxMi42VjExaDIyLjV2N2gxMS4yVjE0QTE0IDE0IDAgMDAzMi40IDBIMTVBMTQgMTQgMCAwMDEgMTR6IiBmaWxsPSIjZmZmIi8+PHBhdGggZD0iTTM1LjIgNDhoMTEuMlYyNS41SDIzLjl2MTEuM2gxMS4zVjQ4eiIgZmlsbD0iI2ZmZiIvPjwvc3ZnPg==)](https://platform.grid.ai/#/runs?script=https://github.com/robert-s-lee/hello_mnists/blob/257a4b5edda6383160cd7110f18dbbadd23ab6a2/run.sh&cloud=grid&instance=t2.medium&accelerators=1&disk_size=200&framework=lightning&script_args=run.sh%20--data_dir%20grid:hello-mnist:1&datastore_name=hello-mnist&datastore_version=1&datastore_id=14a098d4-1384-4d2b-9e26-e0ea62fb3340&datastore_creator=sangkyulee@gmail.com&datastore_mount_dir=/datastores/hello-mnist)


```
grid run run.sh --data_dir grid:hello-mnist:1 
```

- Run in parallel varying the learning rate using the CLI commands.

```
grid run --use_spot run.sh --data_dir grid:hello-mnist:1 --max_epochs 1 --lr "uniform(0,.1,8)"
```

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
