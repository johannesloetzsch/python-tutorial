# Getting started

This lecture explains how to install **`python`**, **`pip`** and **`ipython`**.

> If you have the [**Nix** package manager](https://nixos.org/download/) with [Flakes](https://nixos.wiki/wiki/flakes), all dependencies are provided by:
> ```
> nix develop github:johannesloetzsch/python-tutorial#example_getting_started_ipython
> ```

> For **Debian** this should work:
> ```
> sudo apt install python3 python3-pip ipython
> ```

## Installation

For a reliable and secure setup, you should avoid downloading and installing programs manually.

Instead of following the instructions from [https://www.python.org/downloads/](https://www.python.org/downloads/), I highly recommend using the packet manager or app store of your operating system.

A good guide on how to install python on your system can be found at [https://realpython.com/installing-python](https://realpython.com/installing-python).

### First test

You can run your first tiny python scripts directly from the command line using the `-c` argument of python:

```sh
python -c 'print("Hello world")'

python -c 'print(6*7)'
```


## Tool recommendations

For bigger projects and professional development, several additional tools [are recommended](https://packaging.python.org/en/latest/guides/tool-recommendations/).

This tutorial is going to give an introduction into some of them.


### venv

If you develop and integrate python projects, you will need different isolated versions of python and python packages for different projects. This can be achived by setting up [virtual environments (venv)](https://docs.python.org/3/library/venv.html) for each project:

```
python -m venv .venv
source .venv/bin/activate
```


### pip

Soon we want to install additional python packages (libraries) from the [Python Package Index (PyPI)](https://pypi.org/).

There exist serveral different package-management systems for python. The most widespread is [pip](https://en.wikipedia.org/wiki/Pip_%28package_manager%29).

For this tutorial we expect pip to be installed. In most cases the following command should work as [described in the documentation](https://pip.pypa.io/en/stable/installation/):

```
python -m ensurepip
```

Otherwise this [guide how to install pip](https://python.land/virtual-environments/installing-packages-with-pip) should be helpfull.

After successful installation this command should work:

```
pip --help
```


### IPython

For development of productive code, you will later write your python scripts into files.

Python allows another quick and easy way of testing ideas: you can open an interactive interpreter and run code directly there.

```sh
## Using the python-command without any arguments opens the interactive interpreter
python
```

```python
>>> print("The interactive python shell is so usefull :)")
>>> exit()
```

A more enhanced interactive python shell is provided by the [IPython](https://ipython.readthedocs.io/en/stable/overview.html) package.

You can install it with the package manager of your operating system or [use pip to install](https://ipython.readthedocs.io/en/stable/install/index.html) it:

```
 pip install ipython
```

```sh
ipython
```

```python
>>> print("The interactive IPython shell is awesome :D")
>>> exit()
```

The [IPython Tutorial](https://ipython.readthedocs.io/en/stable/interactive/tutorial.html) explains how to efficiently use python interactively…
