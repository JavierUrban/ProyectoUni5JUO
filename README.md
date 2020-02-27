# ProyectoUnidad 4 y 5

**Javier Urbán**

En este proyecto se presentan como descargar y realizar análisis básicos de filtrado de datos genómicos y estructura genetica de un conjunto de genotipos tomadas de:
[Schweizer, Rena M. et al. (2015), Data from: Targeted capture and resequencing of 1040 genes reveal environmentally driven functional variation in gray wolves, Dryad, Dataset,] (https://doi.org/10.5061/dryad.8g0s3)
 

## Descarga de secuencias y transformación de archivos 

En el directorio bin se encuentra un script para poder descarga los datos correctamente usando el comando `wget` auuque también se puede usar: `curl`
Aquí se descargan a un directorio llamado **data** (para usar los datos desde aqui recurda descomprimir con `unzip`) 
desde el directorio **bin** se recomienda tener cuidado al copiar pues se utilizan rutas realativas

El analisis de los datos se realizon utilizando **VCFtools**  

## Script para filtros 

Tambien se encuentra un scrip dentro de **bim** donde se muestra cómo correr **VCFtools** y los comandos necesarios para contesar a las siguientes preguntas:

a) ¿Cuántos individuos y variantes (SNPs) tiene el archivo?

b) Calcula la frecuencia de cada alelo para todos los individuos dentro del archivo y guarda el resultado en un archivo.

c) ¿Cuántos sitios del archivo no tienen missing data?

d) Calcula la frecuencia de cada alelo para todos los individuos pero solo para los sitios sin missing data y guarda el resultado en un archivo.

e) ¿Cuántos sitios tienen una frecuencia del alelo menor <0.05?

f) Calcula la heterozygosidad de cada individuo.

g) Calcula la diversidad nucleotídica por sitio.

h) Calcula la diversidad nucleotídica por sitio solo para los sitios del cromosoma 3

i) Filtra los sitios que tengan una frecuencia del alelo menor <0.05 y crea un archivo nuevo llamado wolves_maf05.vcf.

j) Convierte el archivo wolves_maf05.vcf a formato plink.

Recorrdar que los archivos **wolves.vcf** estan en el directorio **data**


## Script para análisis de PCA

Finalmente tambien se presenta un script para cargar el archivo de genotipos a R (rebizar el uso de rutas relativas y recordar que el 
script esta en el mismo directorio que los datos) y realizar un análisis de componentes principales junto con un reporte html.


