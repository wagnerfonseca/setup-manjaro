#!/bin/bash
# Cria uma arquivo para realizar backup em pastas especificas
# .ssh
# .teresa
# .zshrc
  
PATH_SCRIPT=$HOME/.scripts_backup
SOURCE=$PATH_SCRIPT/backup_keys_config.sh

if [ ! -r "$PATH_SCRIPT" ]; then
  mkdir "$PATH_SCRIPT"
fi

#Create arquivo de script para log
cat > $SOURCE <<EOL
INICIO=\`date +%d/%m/%Y-%H:%M:%S\`
PATH_LOG=\$HOME/.log
if [ ! -r "\$PATH_LOG" ]; then
  mkdir "\$PATH_LOG"
fi
LOG=\$PATH_LOG/\`date +%Y-%m-%d\`_backup.log

echo "| ------ ------ ------ ------ ------ ------ -----------" >> \$LOG
echo "  Sincronizacao iniciada em \$INICIO" >> \$LOG
echo "  Sincronizando os arquivos " >> \$LOG

rsync --progress --stats -a -r -u --delete-after --include=.zshrc --include=.zsh_history --include=.bash_history --include=.bashrc --include=.profile --exclude=* $HOME/ $HOME/MEGAsync/backup/Home/ >> \$LOG
echo "  Sincronizando diretórios " >> \$LOG
rsync --progress --stats -a -r -u --delete-after $HOME/.teresa $HOME/.ssh $HOME/MEGAsync/backup/Home/ >> \$LOG
echo "  Fazendo backup DataGrip " >> \$LOG
rsync -h --progress --stats -r -tgo -p -l -D --update --delete-after --prune-empty-dirs --include=config/projects/default/.idea/** --include=config/consoles/** --include=*/ --exclude=* $HOME/.DataGrip2018.2/ $HOME/MEGAsync/backup/Home/.DataGrip2018.2 >> \$LOG


FINAL=\`date +%d/%m/%Y-%H%:M:%S\`

echo "  Sincronizacao Finalizada em $FINAL" >> \$LOG
echo "| ------ ------ ------ ------ ------ ------ -----------"  >> \$LOG
echo " " >> \$LOG
echo " " >> \$LOG
EOL

chmod +x $SOURCE

## crontab
# PATH_CRON=/var/spool/cron/$USER
# if [ ! -f "$PATH_CRON" ]; then
# sudo -s
# cat > $PATH_CRON <<EOL
# /# ~~~~~~~~~~~~~~~~~~~ entries ~~~~~~~~~~~~~~~~~~~
# */3 * * * *	/home/wagner/.script_backup/backup_keys_config.sh 2>&1
# /# ~~~~~~~~~~~~~~~~ end entries ~~~~~~~~~~~~~~~~~~
# EOL
# fi

# Minutos | Horas | Dia_do_mes | Mês | Dia_da_semana Comando
# # ~~~~~~~~~~~~~~~~~~~ entries ~~~~~~~~~~~~~~~~~~~
# 0 13 * * 1	${SOURCE} 2>&1
# # ~~~~~~~~~~~~~~~~ end entries ~~~~~~~~~~~~~~~~~~