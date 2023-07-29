
#### Python provider

Python virtualenv command
```

#Install in virtualenv
python3 -m venv ~/.venvs/.nvim-venv && source ~/.venvs/.nvim-venv/bin/activate && python3 -m pip install --upgrade pip && python3 -m pip install pynvim && which python
```

For Ubuntu
```
sudo apt install python3-pip
pip install venvs


# Run this command if the above the command is not working
# Check version before installing (Its needed for debian systems)
sudo apt install python3.10-venv


#Install in virtualenv
python3 -m venv ~/.venvs/.nvim-venv && source ~/.venvs/.nvim-venv/bin/activate && python3 -m pip install --upgrade pip && python3 -m pip install pynvim && which python

```

For Arch
```
sudo pacman -S python-pip
pip install venvs

#Install in virtualenv
python3 -m venv ~/.venvs/.nvim-venv && source ~/.venvs/.nvim-venv/bin/activate && python3 -m pip install --upgrade pip && python3 -m pip install pynvim && which python
```






## My Reference for Python

Create a virtualenv
```
python -m venv ~/.venvs/.nvim-venv && source ~/.venvs/.nvim-venv/bin/activate && python3 -m pip install --upgrade pip && python3 -m pip install pynvim && which python
```

Set that path so that nvim reconizes it
```
vim.g.python_host_prog=""
vim.g.python3_host_prog=""
```

to activate
```
source ~/.venvs/.nvim-venv/bin/activate
```

[Python Virtualenv Stackoverflow](https://stackoverflow.com/questions/67951453/python-and-nvim-how-to-activate-both-global-and-local-virtual-env-at-the-same-t)


The virtualenv that the python_host_prog is pointing to is not for the virtual environment that the python 
language server uses. It is for nvim to use on python plugins. So you can have a separate virtual environment 
to use to execute the plugins that has pynvim installed and then your virtual environment for your project.
python3 -m venv ~/.venvs/.nvim-venv && source ~/.venvs/.nvim-venv/bin/activate && python3 -m pip install pynvim 
&& which python
Then you can take the output from which python and put that in your init.vim as g:python_host_prog and 
g:python3_host_prog.
Now you can deactivate and go work on a project. Activate your project's virtualenv and start up nvim.
You can :checkhealth and see that the python provider is looking at the virtualenv we created earlier.
Your Python virtual env provider should be set to the project you are in. The virtualenv provider is the one that I believe coc-pyright uses for providing intellisense and it is also the one that will be used when running !python. So everything will work as intended. Now if you install a python nvim plugin that needs pynvim, it will be available but like @fannheyward said, it is unnecessary for coc-pyright because it doesn't use the python nvim interface that pynvim provides.
It is a bit confusing because nvim will look for a provider to use for itself if one is not explicitly provided 
and the project virtualenv python is in that resolution chain. So the purpose of the virtual env provider and
python provider can easily be confused.

