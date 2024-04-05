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
# only 8 of them.
# There are no replicates.

# Here are the sample IDs and what they mean:
# sample_ID         strain  sample#    time_point 
#	WT_1_0h        	  WT	    sample_1	   0 h	
#	WT_2_12h	        WT	    sample_2	  12 h	      
#	WT_3_24h	        WT	    sample_3	  24 h	      
#	WT_4_48h	        WT	    sample_4	  48 h	      
#	sta6_5_0h	        sta6	  sample_5	   0 h	
#	sta6_6_12h	      sta6	  sample_6	  12 h	      
#	sta6_7_24h	      sta6	  sample_7	  24 h	      
#	sta6_8_48h	      sta6	  sample_8	  48 h	      


# For you assignment, you will edit this Rscript
# to complete the tasks below. 


# First, load needed libraries, cummeRbund and dplyr:
library(cummeRbund)
library(dplyr)

# Next, set the working directory
setwd("~/MCB_C117_assignment.git/")

# Third, load the RNA-Seq data into cuff DB:
cuff<-readCufflinks(dir = "acetate_boost_cuffdiff/")


############### Task 1 (5 points) ###################

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

############### Task 2 (5 points) ###################

# Get the normalized counts (FPKMs) for all genes
# and put this into a data frame.



# Each student has been assigned a gene. 
# Look up the ID of your gene on Phytozome
# just like you did in Task 1 to find
# your gene's ID. Make a smaller 
# data frame from your data frame of all 
# FPKMs that just has your assigned gene.


# Use an R function to find the maximum value of FPKMs for your
# of FPKMs for your gene? 



# Answer = 

# Use an R function to calculate the standard deviation 
# of FPKMs for your gene, but for just the WT samples (columns 1 - 4)? 



# Answer = 

############### Task 3 (5 points) ###################

# How does expression change in the sta6 mutant?
# Identify significantly different genes 
# in the comparison between 
# the last sta6 sample (48h) relative to the
# first sta6 sample (0h). Include your code
# here:




# How many DEGs are there in this 
# comparison:

# Answer = 

# Identify DEGs for a comparison of 
# sta6 vs. WT at the last time point (48h)
# for each. Include your code
# here:




# How many DEGs are there in this 
# comparison:

# Answer = 

# Which aspect of the experiment
# has a greater effect on gene expression, 
# the sta6 mutation or the -N time course?

# Answer = 



############### Task 4 (5 points) ###################

# Identify all of the significantly different
# genes in the full dataset (i.e. don't specify
# two samples to compare as you did in Task 3). 
# Get the data for this list of genes from 
# you cuff database, and subject the 
# resulting data to k-means clustering
# with a k = 4. Include your script here:




# Make a cluster plot figure of your results. Save it
# as a PDF called Task_4.pdf and include it with 
# your submission.



# In which cluster are the genes consistently
# more abundant in the sta6 mutant relative
# to the WT? 

# Answer = 

# In which cluster does gene expression increase 
# over the whole time course regardless of 
# sta6 status?

# Answer = 

############### Task 5 (5 points) ###################

# Choose a group of genes from one of the analyses above
# (e.g. one of the clusters from your k-means analysis
# in Task 4  or a set of DEGs you
# identified in Task 3) that you hope will capture 
# some of the genes that are important for TAG accumulation
# or the effects of the sta6 mutation. 
# Make a heatmap of the expression for that set of genes. 



# Change the default settings for making the heatmap,
# and replot it. Remove row labels and choose a
# nice color scheme. 



# Save the result as a PDF file called Task_5.pdf
# and include it with your submission.

###################### END ########################














