# hapmapAllelesSummary.sql was originally generated by the autoSql program, which also 
# generated hapmapAllelesSummary.c and hapmapAllelesSummary.h.  This creates the database representation of
# an object which can be loaded and saved from RAM in a fairly 
# automatic way.

#HapMap allele summaries for filtering
CREATE TABLE hapmapAllelesSummary (
    bin int unsigned not null,					# For browser speed-up
    chrom varchar(255) not null,				# Chromosome
    chromStart int unsigned not null,				# Start position in chrom (0 based)
    chromEnd int unsigned not null,				# End position in chrom (1 based)
    name varchar(255) not null,					# Reference SNP identifier from dbSnp
    score int unsigned not null,				# Use for heterozygosity
    strand enum ('+', '-', '?') default '?' not null,		# Which genomic strand contains the observed alleles
    observed varchar(255) not null,				# Observed string from genotype file
    allele1 enum('A', 'C', 'G', 'T') not null,			# This allele has been observed
    allele2 enum('C', 'G', 'T', 'none') not null,		# This allele may not have been observed
    popCount int unsigned not null,				# How many populations have data
    isMixed varchar(255) not null,				# Are there different major alleles? (YES or NO)
    majorAlleleCEU enum ('A', 'C', 'G', 'T', 'none') not null,	# major allele for the CEU population
    majorAlleleCountCEU int unsigned not null,			# major allele count for the CEU population
    totalAlleleCountCEU int unsigned not null,			# total allele count for the CEU population
    majorAlleleCHB enum ('A', 'C', 'G', 'T', 'none') not null,	# major allele for the CHB population
    majorAlleleCountCHB int unsigned not null,			# major allele count for the CHB population
    totalAlleleCountCHB int unsigned not null,			# total allele count for the CHB population
    majorAlleleJPT enum ('A', 'C', 'G', 'T', 'none') not null,	# major allele for the JPT population
    majorAlleleCountJPT int unsigned not null,			# major allele count for the JPT population
    totalAlleleCountJPT int unsigned not null,			# total allele count for the JPT population
    majorAlleleYRI enum ('A', 'C', 'G', 'T', 'none') not null,	# major allele for the YRI population
    majorAlleleCountYRI int unsigned not null,			# major allele count for the YRI population
    totalAlleleCountYRI int unsigned not null,			# total allele count for the YRI population
    chimpAllele enum ('A', 'C', 'G', 'N', 'T', 'none') not null,	# chimp allele
    chimpAlleleQuality int unsigned not null,			# quality score (0-100)
    macaqueAllele enum ('A', 'C', 'G', 'N', 'T', 'none') not null,	# macaque allele
    macaqueAlleleQuality int unsigned not null,			# quality score (0-100)
    index name (name),
    index chrom (chrom, bin)
);