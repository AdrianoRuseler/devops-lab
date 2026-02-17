#!/bin/bash

# source .bashrc

# --- Docker Shortcuts ---
alias dps='docker ps --format "table {{.Names}}\t{{.Status}}\t{{.Ports}}"'
alias dimg='docker images'
alias dcup='docker compose up -d'
alias dcstop='docker compose stop'
alias dclog='docker compose logs -f'
alias dcrebuild='docker compose up -d --build'
alias dclean='docker system prune -af'

# --- Navigation & Logic ---
alias ..='cd ..'
alias ll='ls -alF'
alias cls='clear'

# --- PHP & Scripting ---
alias phpserv='php -S localhost:8000'
alias checksh='shellcheck *.sh'
alias composer='php /path/to/composer.phar' # Update with actual path
