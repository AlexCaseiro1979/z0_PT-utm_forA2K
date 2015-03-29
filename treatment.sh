# ficheiro original (CLC2006.zip) descarregado de: http://sniamb.apambiente.pt/clc/frm/

# depois de descomprimir o ficheiro, há uma shapefile (CLC06_PT.shp) e os ficheiros anexos.
# O comando ogrinfo mostra que existe na shapefile o campo CODE_06, que é o que indica o uso do solo: ogrinfo -al -so CLC06_PT.shp

# primeiro, reprojetar para UTM/WGS-84.
# A SRS de origem pode-se encontrar no pdf que acompanha os dados: ETRS89/PT_TM06.
# Esta SRS de origem corresponde ao EPSG:3763 (http://epsg.io/3763)
# o comando ogr2ogr reprojeta para WGS/UTM84:

ogr2ogr -s_srs "+init=EPSG:3763" -t_srs "+proj=utm +zone=29 +north +west +datum=WGS84 +ellps=WGS84 +units=m +no_defs" CLC06_PT_WGS84.shp CLC06_PT.shp

# pode-se também usar '-s_srs "EPSG:3763"'
# o comando ogrinfo mostra que existe na shapefile o campo CODE_06
# para converter o ficheiro vectorial para um ficheiro matricial:

gdal_rasterize -tr 100 100 -a CODE_06 -l CLC06_PT_WGS84 CLC06_PT_WGS84.shp CLC06_PT_WGS84.tiff

# As informações sobre a extensão deste raster (do gdalinfo: 2887 columns, 5970 lines) parecem corretas.

# converter para o formato ASCII Grid:

gdal_translate -of AAIGrid CLC06_PT_WGS84.tiff CLC06_PT_WGS84.asc

# Este ficheiro tem 5975 linhas (wc -l), as cinco primeiras sao cabecalho.

# Vamos copiar o cabecalho do raster asc (linhas 1 a 5)

head -n 5 CLC06_PT_WGS84.asc > head_CLC06_PT_WGS84.asc.txt

# essas cinco linhas podem entao ser removidas do ficheiro raster asc, criando um novo ficheiro:

sed '1,5d' CLC06_PT_WGS84.asc > CLC06_PT_WGS84_noheader.asc

# As linhas sao demasiado longas para serem trabalhadas no perl (deASCparaDMNT.pl e deASCparaDMNT2.pl nao funcionam).

# usando sed e echo num script bash:
bash deASCparaDMNT.sh

# Pretendemos ter algo equivalente ao:
# z0-utm.dmna, o cabecalho, que vamos fazer à mao
# z0-utm.dmnt, os dados, que devem ser zipados (gz)

# O ficheiro resultante é o ficheiro .dmnt, que podemos renomear

mv CLC06_PT_WGS84_noheader.asc z0_PT-utm.dmnt

# and zip

gzip z0_PT-utm.dmnt


