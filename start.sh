if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Mayavi333/Tsunade-auto-filter.git /Tsunade-auto-filter
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Tsunade-auto-filter
fi
cd /Tsunade-auto-filter
pip3 install -U -r requirements.txt
echo "Starting ᴛꜱᴜɴᴀᴅᴇ⚡️...."
python3 bot.py
