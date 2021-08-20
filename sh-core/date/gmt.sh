gmt(){

for i in {-24..-1}
do
    est=$(date -v${i}H)
    gmt=$(date -u -v${i}H)
    echo "$i    $est    $gmt"
done
est=$(date)
gmt=$(date -u)
echo "0 $est    $gmt"

}