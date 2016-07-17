echo '### STARTANDO SUMARIZADOR RODANDO NO SPARK ....####'
echo '\n'
spark-submit --master spark://localhost:7077 sumarizador.py
echo '\n'
echo '### FINALIZADO SUMARIZADOR NO SPARK! ####'

