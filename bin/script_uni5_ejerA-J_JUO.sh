##Javier Urbán
##Proyect wolves Unit5
##Excersice BioInfoRepro A-J


##Access to a repository where it is installed vcftools docker and creates a variable to store the absolute path
vcftools="docker run -u 1600 --rm -v ~/:/data biocontainers/vcftools:0.1.15 vcftools"

##(A) Open the file wolves.vcf to observe the number of individuals and SNPs
$vcftools -vcf wolves.vcf

##(B)Calculates the frequency for each allele of all individuals and are saved in a file freq_wolves
$vcftools --vcf wolves.vcf --freq --out freq_wolves

##(C)Check how many sites within the wolves have no missing data file
$vcftools --vcf wolves.vcf --max-missing 1.0

##(D)Calculates the frequency of each allele individuals without missing data and stores the result in a freq_missing_wolves file
$vcftools --vcf wolves.vcf --freq --max-missing 1.0 --out freq_missing_wolves

##(E)Calculates sites with a minor allele frequency MAF = <0.05
$vcftools --vcf wolves.vcf --max-maf 0.05

##(F) Calculates the basic heterozygosity per individual
$vcftools --vcf wolves.vcf --het --out heterozy_wolves

##(G) Calculates (pi) nucleotidic diversity per sitio and are save in pi_wolves file
$vcftools --vcf wolves.vcf --site-pi --out pi_wolves

##(H) Calculate (pi) the nucleotide diversity for sites like (here will be for chromosome 3)
$vcftools --vcf wolves.vcf --site-pi --chr 3

##(I) sites are filtered with a minor allele frequency of the MAF = <0.05 and saved in a file called wolves_maf05.vcf
$vcftools --vcf wolves.vcf --max-maf 0.05 --recode --out wolves_maf05

##(J) Convert a from vcf to Plink here it is done with file wolves_maf05.vcf
$vcftools --vcf wolves_maf05.recode.vcf --plink
