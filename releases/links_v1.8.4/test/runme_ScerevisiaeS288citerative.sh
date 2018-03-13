d=`date`
echo ---------------------------------------------------------------------------------------------
echo Running LINKS on baseline S. cerevisiae S288c assembly with raw Oxford Nanopore long reads
echo --------------------------------------------------------------------------------------------- 
echo *Must be running on a computer with at least 132 GB RAM, with current set of parameters
echo Figure 1 -red circle- in manuscript 
echo ---------------------------------------------------------------------------------------------
echo Downloading baseline assembly and ONT long reads... be patient.
wget ftp://ftp.bcgsc.ca/supplementary/LINKS/S288cillumina-baseline.fa
wget ftp://ftp.bcgsc.ca/supplementary/LINKS/W303_rawONT_longread.fa.gz
echo ---------------------------------------------------------------------------------------------
echo Decompressing ONT long reads file...be patient.
gunzip -f W303_rawONT_longread.fa.gz
echo ---------------------------------------------------------------------------------------------
echo W303_rawONT_longread.fa > W303_RAW.fof
echo Running LINKS iteratively a few times...be very patient!
/usr/bin/time -v -o timeLINKS_SCS288c.txt ./runIterativeLINKS_SCS288c.sh 15 6 5 0.3
