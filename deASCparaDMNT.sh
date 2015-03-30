
# replace the land use codes

sed -i s/'331'/1/g CLC06_PT_WGS84_noheader.asc # Praias, dunas e areais
sed -i s/'512'/1/g CLC06_PT_WGS84_noheader.asc # Planos de água

sed -i s/'132'/2/g CLC06_PT_WGS84_noheader.asc # Áreas de deposição de resíduos
sed -i s/'231'/2/g CLC06_PT_WGS84_noheader.asc # Pastagens
sed -i s/'321'/2/g CLC06_PT_WGS84_noheader.asc # Pastagens naturais
sed -i s/'333'/2/g CLC06_PT_WGS84_noheader.asc # Vegetação esparsa
sed -i s/'421'/2/g CLC06_PT_WGS84_noheader.asc # Sapais
sed -i s/'422'/2/g CLC06_PT_WGS84_noheader.asc # Salinas
sed -i s/'423'/2/g CLC06_PT_WGS84_noheader.asc # Zonas intertidais
sed -i s/'511'/2/g CLC06_PT_WGS84_noheader.asc # Linhas de água
sed -i s/'522'/2/g CLC06_PT_WGS84_noheader.asc # Estuários

sed -i s/'131'/3/g CLC06_PT_WGS84_noheader.asc # Áreas de extracção mineira
sed -i s/'142'/3/g CLC06_PT_WGS84_noheader.asc # Equipamentos desportivos e de lazer
sed -i s/'211'/3/g CLC06_PT_WGS84_noheader.asc # Culturas anuais de sequeiro
sed -i s/'335'/3/g CLC06_PT_WGS84_noheader.asc # Neves eternas e glaciares
sed -i s/'521'/3/g CLC06_PT_WGS84_noheader.asc # Lagunas litorais

sed -i s/'124'/4/g CLC06_PT_WGS84_noheader.asc # Aeroportos
sed -i s/'212'/4/g CLC06_PT_WGS84_noheader.asc # Culturas anuais de regadio
sed -i s/'213'/4/g CLC06_PT_WGS84_noheader.asc # Arrozais
sed -i s/'241'/4/g CLC06_PT_WGS84_noheader.asc # Culturas anuais associadas às culturas permanentes
sed -i s/'411'/4/g CLC06_PT_WGS84_noheader.asc # Pauis
sed -i s/'412'/4/g CLC06_PT_WGS84_noheader.asc # Turfeiras
sed -i s/'523'/4/g CLC06_PT_WGS84_noheader.asc # Mar e oceano

sed -i s/'122'/5/g CLC06_PT_WGS84_noheader.asc # Redes viárias e ferroviárias e espaços associados
sed -i s/'141'/5/g CLC06_PT_WGS84_noheader.asc # Espaços verdes urbanos
sed -i s/'221'/5/g CLC06_PT_WGS84_noheader.asc # Vinhas
sed -i s/'242'/5/g CLC06_PT_WGS84_noheader.asc # Sistemas culturais e parcelares complexos
sed -i s/'243'/5/g CLC06_PT_WGS84_noheader.asc # Agricultura com espaços naturais
sed -i s/'322'/5/g CLC06_PT_WGS84_noheader.asc # Matos
sed -i s/'332'/5/g CLC06_PT_WGS84_noheader.asc # Rocha nua
sed -i s/'334'/5/g CLC06_PT_WGS84_noheader.asc # Áreas ardidas

sed -i s/'123'/6/g CLC06_PT_WGS84_noheader.asc # Zonas portuárias
sed -i s/'222'/6/g CLC06_PT_WGS84_noheader.asc # Pomares
sed -i s/'223'/6/g CLC06_PT_WGS84_noheader.asc # Olivais
sed -i s/'244'/6/g CLC06_PT_WGS84_noheader.asc # Sistemas agro-florestais
sed -i s/'323'/6/g CLC06_PT_WGS84_noheader.asc # Vegetação esclerofítica
sed -i s/'324'/6/g CLC06_PT_WGS84_noheader.asc # Espaços florestais degradados, cortes e novas plantações

sed -i s/'112'/7/g CLC06_PT_WGS84_noheader.asc # Tecido urbano descontínuo
sed -i s/'121'/7/g CLC06_PT_WGS84_noheader.asc # Indústria, comércio e equipamentos gerais
sed -i s/'133'/7/g CLC06_PT_WGS84_noheader.asc # Áreas em construção
sed -i s/'312'/7/g CLC06_PT_WGS84_noheader.asc # Florestas de resinosas

sed -i s/'311'/8/g CLC06_PT_WGS84_noheader.asc # Florestas de folhosas
sed -i s/'313'/8/g CLC06_PT_WGS84_noheader.asc # Florestas mistas

sed -i s/'111'/9/g CLC06_PT_WGS84_noheader.asc # Tecido urbano contínuo


# replace all the whitespaces

sed -i s/' '//g CLC06_PT_WGS84_noheader.asc

# add space + " to the beginning of each line

sed -i 's/^/ "/' CLC06_PT_WGS84_noheader.asc

# add " to the end of each line

sed -e 's/$/"/' -i CLC06_PT_WGS84_noheader.asc

# add \n"***" to the end of the file

echo -e "\n***" >> CLC06_PT_WGS84_noheader.asc

