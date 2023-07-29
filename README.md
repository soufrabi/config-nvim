# Neovim Config



## To use my config file

#### Clone this repository

UNIX
```
git clone https://github.com/awesomeDev12/nvim.git ~/.config/nvim
```

Windows
```
git clone https://github.com/awesomeDev12/nvim.git $Env:USERPROFILE\AppData\Local\nvim
```

#### Install Packer plugin manager
UNIX
```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

Windows
```
git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"
```


#### Python provider

Python virtualenv command
```

#Install in virtualenv
python3 -m venv ~/.venvs/.nvim-venv && source ~/.venvs/.nvim-venv/bin/activate && python3 -m pip install --upgrade pip && python3 -m pip install pynvim && which python
```










