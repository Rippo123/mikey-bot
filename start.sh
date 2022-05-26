if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Rippo123/mikey-bot.git /mikey-bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /mikey-bot
fi
cd /mikey-bot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
