# text mining demo

# call the relevant libraries

library(readr) # to read csv

library(tm) # text mining

library(wordcloud) # word cloud

library(michigancolors) # michigan colors

# get data
# 200 most recent articles on Adverse Childhood Experiences (ACES)
# from PubMed

ACESarticles <- read_csv("csv-adversechi-set.csv")

# make a "corpus" from the title field
# a corpus is a special data format for text mining

myCorpus <- Corpus(VectorSource(ACESarticles$Title))

# clean the corpus with tm_map()

# remove "stopwords"

myCorpus <- tm_map(myCorpus, removeWords, stopwords("english"))

# remove custom words

myCorpus <- tm_map(myCorpus, removeWords, c("the")) 

# make the word cloud

wordcloud(myCorpus, # use my corpus
          min.freq = 10, # minimum frequency to plot
          colors = michigancolors()) # UM colors




