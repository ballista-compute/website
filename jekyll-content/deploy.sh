bundle exec jekyll clean
bundle exec jekyll build
cd _site
rm -f ballista.tgz
tar czf ballista.tgz *
scp -i ~/.ssh/id_rsa_lightsail.pem ballista.tgz ubuntu@18.188.179.245:
ssh -i ~/.ssh/id_rsa_lightsail.pem ubuntu@18.188.179.245 "cd /var/www/ballistacompute.org ; tar xzf /home/ubuntu/ballista.tgz"
