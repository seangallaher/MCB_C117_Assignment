# For the assignment, we will be analyzing a dataset 
# from an experiment in the alga, Chlamydomonas reinhardtii,
# that was designed to induce the alga to produce
# large quantities of TAG that could be used for
# making bio-diesel.

# See the accompanying slides for a description
# of the experiment.

# Also, you can read more about the experiment here:
# https://doi.org/10.1128/ec.00013-14

# Description of experiment:
# This is a comparison of two time courses
# conducted on WT and mutant sta6 cells.
# t=0h to t=48h collected after removal of 
# nitrogen.


# There are 34 samples total in the 
# original experiment, but for 
# our purposes, we will be analyzing 
# only 10 of them.
# There are no replicates.

# Here are the sample IDs and what they mean:
# sample_ID         strain  sample#    time_point 
#	WT_01_0h        	WT	    sample_01	  0 h	
#	WT_02_4h        	WT	    sample_02	  4 h	
#	WT_03_12h	        WT	    sample_03	  12 h	      
#	WT_04_24h	        WT	    sample_04	  24 h	      
#	WT_05_48h	        WT	    sample_05	  48 h	      
#	sta6_06_0h	      sta6	  sample_06	  0 h	
#	sta6_07_4h	      sta6	  sample_07	  4 h	
#	sta6_08_12h	      sta6	  sample_08	  12 h	      
#	sta6_09_24h	      sta6	  sample_09	  24 h	      
#	sta6_10_48h	      sta6	  sample_10	  48 h	      


# For you assignment, you will edit this Rscript
# to complete the tasks below. 


# First, load needed libraries, cummeRbund and dplyr:
library(cummeRbund)
library(dplyr)


# Next, set the working directory
setwd("acetate_boost_cuffdiff/")


# Third, load the RNA-Seq data into cuff DB:

cuff<-readCufflinks()


############### Task 1 (6 points) ###################

# This experiment compares WT cells with a 
# sta6 mutant. Go to Phytozome:

# https://phytozome-next.jgi.doe.gov/

# and find the gene ID for sta6 in 
# Chlamydomonas reinhardtii v5.6.
# It will look like CreXX.gNNNNNN
# Just use the first 13 characters
# and discard any additional characters
# (e.g. version numbers, transcript isoform numbers, etc.)
# Put that gene ID into a variable 
# called sta6:



# Next, get the data for the sta6
# gene out of your cuff database,
# and use it to make an expression
# plot for sta6. 
# Since there is only
# one replicate, do not include
# error bars. 





# Save the result as a PDF file called Task_1.pdf
# and include it with your submission.


############### Task 2 (6 points) ###################

# Identify significantly different genes 
# in the comparison between 
# the final sta6 sample relative to the
# first sta6 sample. Include your code
# here:




# How many DEGs are there in this 
# comparison:

# Answer = 

# Identify DEGs for a comparison of 
# sta6 vs. WT at the last timepoint
# for each. Include your code
# here:




# How many DEGs are there in this 
# comparison:

# Answer = 

# Which aspect of the experiment
# has a greater effect on gene expression, 
# the sta6 mutation or the -N time course?

# Answer = 



############### Task 3 (7 points) ###################

# Identify all of the significantly different
# genes in the full dataset (i.e. don't specify
# two samples to compare as you did in Task 2). 
# Get the data for this list of genes from 
# you cuff database, and subject the 
# resulting data to k-means clustering
# with a k = 4. Include your script here:




# Make a cluster plot figure of your results. Save it
# as a PDF called Task_3.pdf and include it with 
# your submission.



# In which cluster are the genes consistently
# more abundant in the sta6 mutant relative
# to the WT? 

# Answer = 

# In which cluster does gene expression increase 
# over the whole time course regardless of 
# sta6 status?

# Answer = 

############### Task 4 (6 points) ###################

# Choose a group of genes from one of the analyses above
# (e.g. one of the clusters from your k-means analysis
# in Task 3  or a set of DEGs you
# identified in Task 2) that you hope will capture 
# some of the genes that are important for TAG accumulation
# or the effects of the sta6 mutation. 
# Make a heatmap of the expression for that set of genes. 




# Change the default settings for making the heatmap,
# and replot it. Remove row labels and choose a
# nice color scheme. 



# Save the result as a PDF file called Task_4.pdf
# and include it with your submission.

###################### END ########################














