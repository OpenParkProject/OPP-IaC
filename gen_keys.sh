echo "Generating keys..."
mkdir -p keys
openssl genrsa -out keys/private.pem 4096
openssl rsa -in keys/private.pem -pubout -out keys/public.pem

echo "Setting keys..."
PRIVATE_KEY=$(cat keys/private.pem | base64 -w 0)
PUBLIC_KEY=$(cat keys/public.pem | base64 -w 0)

sed -i '/^PRIVATE_KEY=/d' .env
sed -i '/^PUBLIC_KEY=/d' .env
echo "PRIVATE_KEY=$PRIVATE_KEY" >> .env
echo "PUBLIC_KEY=$PUBLIC_KEY" >> .env

echo "Done!"
