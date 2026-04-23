## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(echo = TRUE)

## -----------------------------------------------------------------------------
library(SurprisalAnalysis)
library(ggplot2)

## -----------------------------------------------------------------------------
data <- read.csv(system.file("extdata", "helper_T_cell_0_test.csv.gz", package = "SurprisalAnalysis"), header=TRUE)
results <- surprisal_analysis(data)
results[[2]]-> transcript_weights
percentile_GO <- 0.95 #change based on your preference
lambda_no <- 2 #change based on your preference, lambda #1 is the baseline state

## ----eval = FALSE-------------------------------------------------------------
# GO.results <- GO_analysis_surprisal_analysis(transcript_weights, percentile_GO, lambda_no, key_type = "SYMBOL", flip = FALSE, species.db.str =  "org.Mm.eg.db", top_GO_terms=15)

## ----eval = FALSE-------------------------------------------------------------
# 
# ggplot(GO.results, aes(x=Description, y=Count, fill=p.adjust))+geom_bar(stat="identity")+scale_fill_gradient(low = "#790915", high = "#062c5c")+theme_minimal()+
# 
#   theme(
#     # Remove panel border
#     panel.border=element_blank(),
#     #plot.border = element_blank(),
#     # Remove panel grid lines
#     panel.background = element_blank(),
#     panel.grid.major = element_blank(),
#     panel.grid.minor = element_blank(),
#     # Add axis line
#     axis.line = element_line(colour = "black"),
#     #axis.title.x = element_blank(),
#     axis.title.y = element_blank(),
#     #axis.text = element_blank(),
#     #legend.position = "none",
#     plot.title = element_text(hjust = 0.5, size=20),
#     #axis.text = element_text(size = 15),
# 
#     text = element_text(size=18)
#   ) +coord_flip()+labs(tag="A", title="GO analysis")
# 
# 

