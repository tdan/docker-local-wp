WWW_DATA_UID=33
RESULT=$(docker compose exec -u www-data wp id -u)
COMMAND_SUCCESS=$?
if [ $COMMAND_SUCCESS -eq 0 ]; then
  WWW_DATA_UID=$(echo $RESULT | tr -d '\r')
fi

sudo chown -R $WWW_DATA_UID:$USER app/
sudo find app/ -type d -exec chmod 775 {} \;
sudo find app/ -type f -exec chmod 664 {} \;
