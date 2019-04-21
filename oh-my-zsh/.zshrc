
# Path to your oh-my-zsh installation.
  export ZSH="/home/kramer/.oh-my-zsh"

#ZSH_THEME="pygmalion"
ZSH_THEME="geometry/geometry"

# Plugins
plugins=(
  git
  python
)

source $ZSH/oh-my-zsh.sh

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# ---- Aliases ----
# Alias for RnD folders
alias rnd_tools="cd ~/Documents/second_semester/RnD/natural_language_processing/nlu_tools/"
alias rnd_papers="cd ~/Documents/second_semester/RnD/natural_language_processing/papers/"
alias ls='ls -lt --color=auto'

# JAVA 8
# export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-amd64/jre/
export JAVA_HOME=/usr/lib/jvm/java-8-oracle/jre/
# Add JAVA to the path
export PATH=$JAVA_HOME:$PATH

# Add Jython to the path
export PATH=$HOME/tools/jython2.7.0/bin:$PATH

# ---- ROS Workspaces ----
# RnD ROS WS
# source ~/Documents/ROS/catkin_ws/devel/setup.zsh

# @HOME ros repo
# source ~/ros/catkin_ws/devel/setup.zsh

# Hide python warnings
export PYTHONWARNINGS="ignore"

VISUAL=vim; export VISUAL EDITOR=vim; export EDITOR

# Add trilium to the path
export PATH=$PATH:~/tools/trilium/
