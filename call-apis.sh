echo '### CHAMANDO APIs REST'
echo '\n'

echo '## CHAMANDO /api/topfiveusers ##'
echo '\n'
curl -H "Accept:application/json" http://127.0.0.1:8080/api/topfiveusers 
echo '\n'

echo '## CHAMANDO /api/resumebytag ##'
echo '\n'
curl -H "Accept:application/json" http://127.0.0.1:8080/api/resumebytag 
echo '\n'

echo '## CHAMANDO /api/resumebydayhour ##'
echo '\n'
curl -H "Accept:application/json" http://127.0.0.1:8080/api/resumebydayhour 
echo '\n'


