set -e

curl localhost/impressum | grep 'HRfilter.de'
echo "SUCCESS: Web app is running!"

pgrep -f sidekiq
echo "SUCCESS: Sidekiq is running!"

