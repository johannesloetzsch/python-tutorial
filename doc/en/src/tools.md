# Tools

This chapter introduces some usefull tools for managing bigger projects by increasing the maintainability and improving the code quality.

> If you have the [Nix package manager](https://nixos.org/download/) with [Flakes](https://nixos.wiki/wiki/flakes), all dependencies are provided by:
> ```
> nix develop github:johannesloetzsch/python-tutorial#example_tools
> ```

```
git clone https://github.com/johannesloetzsch/python-tutorial.git
cd python-tutorial
```


This chapter consists of several lectures. Here just some of the links with a minimal example:

### [Testing](testing.md)
```
pytest examples/tools
```

### [Linter](linter.md)
```
pycodestyle -v examples/tools/**/*.py

flake8 -v examples/tools/**/*.py

pylint examples/tools/**/*.py
```


## Further reading

* [https://books.agiliq.com/projects/essential-python-tools](https://books.agiliq.com/projects/essential-python-tools/en/)
