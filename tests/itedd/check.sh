set -e

curl localhost/impressum | grep 'Impressum'
echo "SUCCESS: Web app is running!"
