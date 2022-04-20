host="fabmedical-591140.mongo.cosmos.azure.com"
username="fabmedical-591140"
password="PtgxuAwrW7zLzSX5Dy9tXIOZcmzQRdk1YwtKm1iOCHZnVLzfSMBtt3Q4iKvMGnvh52e0C0QPXyrp8pXzxOv3eQ=="
dbname="contentdb"
port="10255"

for i in {1..250}; do
    mongo $host:$port/$dbname \
        -u $username -p $password \
        --ssl --sslAllowInvalidCertificates \
        --eval 'db.sessions.insert({"title":"Perf Test"})' &
done
