
# replace the land use codes

sed -i s/331/1/g CLC06_PT_WGS84_noheader.asc
sed -i s/512/1/g CLC06_PT_WGS84_noheader.asc

sed -i s/132/2/g CLC06_PT_WGS84_noheader.asc
sed -i s/231/2/g CLC06_PT_WGS84_noheader.asc
sed -i s/321/2/g CLC06_PT_WGS84_noheader.asc
sed -i s/333/2/g CLC06_PT_WGS84_noheader.asc
sed -i s/421/2/g CLC06_PT_WGS84_noheader.asc
sed -i s/423/2/g CLC06_PT_WGS84_noheader.asc
sed -i s/511/2/g CLC06_PT_WGS84_noheader.asc
sed -i s/522/2/g CLC06_PT_WGS84_noheader.asc

sed -i s/131/3/g CLC06_PT_WGS84_noheader.asc
sed -i s/142/3/g CLC06_PT_WGS84_noheader.asc
sed -i s/211/3/g CLC06_PT_WGS84_noheader.asc
sed -i s/335/3/g CLC06_PT_WGS84_noheader.asc
sed -i s/521/3/g CLC06_PT_WGS84_noheader.asc

sed -i s/124/4/g CLC06_PT_WGS84_noheader.asc
sed -i s/411/4/g CLC06_PT_WGS84_noheader.asc
sed -i s/412/4/g CLC06_PT_WGS84_noheader.asc
sed -i s/523/4/g CLC06_PT_WGS84_noheader.asc

sed -i s/122/5/g CLC06_PT_WGS84_noheader.asc
sed -i s/141/5/g CLC06_PT_WGS84_noheader.asc
sed -i s/221/5/g CLC06_PT_WGS84_noheader.asc
sed -i s/242/5/g CLC06_PT_WGS84_noheader.asc
sed -i s/243/5/g CLC06_PT_WGS84_noheader.asc
sed -i s/322/5/g CLC06_PT_WGS84_noheader.asc
sed -i s/332/5/g CLC06_PT_WGS84_noheader.asc

sed -i s/123/6/g CLC06_PT_WGS84_noheader.asc
sed -i s/222/6/g CLC06_PT_WGS84_noheader.asc
sed -i s/324/6/g CLC06_PT_WGS84_noheader.asc

sed -i s/112/7/g CLC06_PT_WGS84_noheader.asc
sed -i s/121/7/g CLC06_PT_WGS84_noheader.asc
sed -i s/133/7/g CLC06_PT_WGS84_noheader.asc
sed -i s/312/7/g CLC06_PT_WGS84_noheader.asc

sed -i s/311/8/g CLC06_PT_WGS84_noheader.asc
sed -i s/313/8/g CLC06_PT_WGS84_noheader.asc

sed -i s/111/9/g CLC06_PT_WGS84_noheader.asc


# replace all the whitespaces

sed -i s/' '//g CLC06_PT_WGS84_noheader.asc

# add space + " to the beginning of each line

sed -i 's/^/ "/' CLC06_PT_WGS84_noheader.asc

# add " to the end of each line

sed -e 's/$/"/' -i CLC06_PT_WGS84_noheader.asc

# add \n"***" to the end of the file

echo -e "\n***" >> CLC06_PT_WGS84_noheader.asc

