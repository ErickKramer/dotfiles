# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/kramer/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#|--------------------------------------------
#| ROS workspaces
#|--------------------------------------------
alias foxy="source /opt/ros/foxy/setup.zsh"
alias noetic="source /opt/ros/noetic/setup.zsh"
alias colcon_clean="rm -rf build/ install/ log/"
alias cc="rm -rf build/ install/ log/"
alias sw="source install/setup.zsh"
alias colcon_build="source /opt/ros/foxy/setup.zsh && colcon build --symlink-install && source install/setup.zsh"
alias cb="source /opt/ros/foxy/setup.zsh && colcon build --symlink-install && source install/setup.zsh"
alias colcon_build_verbose="source /opt/ros/foxy/setup.zsh && colcon build --symlink-install --event-handlers console_cohesion+ && source install/setup.zsh"
alias cbv="source /opt/ros/foxy/setup.zsh && colcon build --symlink-install --event-handlers console_cohesion+ && source install/setup.zsh"

#|--------------------------------------------
#| Docker images
#|--------------------------------------------
alias trusty="docker run --rm -it ubuntu:trusty"
alias xenial="docker run --rm -it ubuntu:xenial"
alias bionic="docker run --rm -it ubuntu:bionic"
alias focal="docker run --rm -it ubuntu:focal"

#|--------------------------------------------
#| Hotfixes
#|--------------------------------------------
#| - Gazebo
export SVGA_VGPU10=0
