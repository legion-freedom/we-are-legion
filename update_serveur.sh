cd /home/wearelegion/httpdocs/dev
echo "Suppression de /home/wearelegion/httpdocs/dev/*"
rm -rf *
echo "git clone dans ./we-are-legion"
git clone https://github.com/legion-freedom/we-are-legion.git
echo "mv -> .."
mv we-are-legion/* ./
echo "Permissions"
chmod 777 app app/storage app/tests app/lang public/robots.txt
chmod 775 app/controllers app/views
chmod ug+s public/index.php app/storage/sessions
echo "rm readme.md"
rm readme.md

