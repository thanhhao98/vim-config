# for chest-cxx build
export SSL_CERT_DIR=/etc/ssl/certs

export ZSH_DISABLE_COMPFIX=true

export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="/home/thanhhao/.oh-my-zsh"

export LD_LIBRARY_PATH=/usr/local/lib:/usr/lib

export JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64"

# openvino for compile chest-cxx
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/intel/openvino_2021/deployment_tools/ngraph/lib/
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/intel/openvino_2021/deployment_tools/inference_engine/external/tbb/lib
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/intel/openvino_2021/deployment_tools/inference_engine/lib/intel64

# deepstream-app run require
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/lib/x86_64-linux-gnu
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/nvidia/deepstream/deepstream/bin/

export HADOOP_HOME=/home/thanhhao/.packages/hadoop
export HADOOP_INSTALL=$HADOOP_HOME
export HADOOP_MAPRED_HOME=$HADOOP_HOME
export HADOOP_COMMON_HOME=$HADOOP_HOME
export HADOOP_HDFS_HOME=$HADOOP_HOME
export YARN_HOME=$HADOOP_HOME
export HADOOP_COMMON_LIB_NATIVE_DIR=$HADOOP_HOME/lib/native
export PATH=$PATH:$HADOOP_HOME/sbin:$HADOOP_HOME/bin

# cuda
export CUDA_INCLUDE_DIRS=/usr/local/cuda/include

ZSH_THEME="robbyrussell"


plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

export LANG=en_US.UTF-8
export EDITOR='nvim'

# Aliases
alias v="nvim"
alias vi="nvim"
alias vim="nvim"
alias docker-clean-images="docker images | grep none | awk '{ print $3; }' | xargs docker rmi"
alias connect-open-vpn="openvpn3 session-start --config ~/.packages/haopt15.ovpn"

# conda fix error load environment in tmux
if [ -n "$TMUX" ]; then
    conda deactivate
    conda activate base
fi

# conda initialize >>>
__conda_setup="$('/home/thanhhao/.config/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/thanhhao/.config/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/thanhhao/.config/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/thanhhao/.config/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# load fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# activate dvc
source ~/.config/settup_dvc.sh

function Conda() {
    local session
    session=$(conda env list | sed 1d | sed 1d | fzf --query="$1" | awk '{print $1}')
    conda activate $session
}

