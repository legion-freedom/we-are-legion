export LANG="fr_BE.UTF-8"
cd /home/wearelegion/httpdocs
rm -rf dev
git clone  https://github.com/legion-freedom/we-are-legion.git dev
line="*/3 * * * * /home/wearelegion/httpdocs/dev/update_serveur.sh"
(crontab -u root -l; echo "$line" ) | crontab -u root -
