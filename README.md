# G1DBN
references
scicomp2014.edc.uri.edu/posts.html

try
https://askubuntu.com/questions/471045/14-04-doesnt-have-package-imagemagick
https://www.kaggle.com/c/facial-keypoints-detection/details/getting-started-with-r
https://dahtah.github.io/imager/imager.html

From R to Java
http://docs.renjin.org/en/latest/moving-data-between-java-and-r-code.html#pulling-data-from-r-into-java

Code Help
http://www.inside-r.org/packages/cran/G1DBN/docs/SimulNetworkAdjMatrix
http://www.inside-r.org/packages/cran/G1DBN/docs/SimulGeneExpressionAR1

G1DBN is a R package (Lebre, 2009) that estimates dynamic Bayesian networks, using first order conditional dependencies. G1DBN is designed to work with time series and implements a lag-one model. Each gene is represented by two nodes lagged by one time point. Interactions are only allowed from nodes at time t − 1 to nodes at time t. It is a two-step method: the first step computes all possible regression coefficients, of each gene Xt − 1j to each gene Xti, conditioned on each other gene Xtk, k ≠ j, i. This way, each directed interaction is assigned a number of coefficients, one for each conditioning variable. Each of these coefficients is subject to a statistical test based on the student's t distribution (the null hypothesis is that the value is zero) and a p-value is returned. The maximum of these p-values is considered as a score for the respective interaction. A threshold α1 is defined, and edges with scores lower than it are selected. The second step of the algorithm starts with this graph and removes more edges: for each gene, it is calculated the regression coefficient of it toward one of its parents, given all the other parents. To each of these coefficients is assigned a p-value, in an analogous way as in the first step. A new threshold α2 is defined, and only edges with p-values lower than α2 are kept. In our experiments, we defined α1 = 0.7, as it was the value used in the method's original proposal. We used several values for α2, and for each of them an adjacency matrix was returned, with the estimated p-values for each possible interaction. For each interaction, the subtraction 1 minus the average of the respective final p-values, was used as the final score.
Source:https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3872039/

http://wi.pb.edu.pl/pliki/nauka/zeszyty/z9/Lupinska-full.pdf

Rdocumentation: http://www.rdocumentation.org/packages/G1DBN/versions/3.1.

R help, advanced search this url in google to obtain help related to R: https://stat.ethz.ch/mailman/listinfo/r-help
