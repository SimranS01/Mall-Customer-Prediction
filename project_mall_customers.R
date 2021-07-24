customer_data=read.csv("C:\\Users\\DELL\\Desktop\\Stats\\Mall_Customers.csv")
str(customer_data)
head(customer_data)

# k algo used because unsupervised dataset
#Elbow method
library(purrr)
set.seed(123)
# function to calculate total intra-cluster sum of square 
iss <- function(k) {
  kmeans(customer_data[,3:5],k,iter.max=100,nstart=100,algorithm="Lloyd" )$tot.withinss
}
k.values <- 1:10  
iss_values <- map_dbl(k.values,iss)
plot(k.values, iss_values,
     type="b", pch = 19, frame = FALSE, 
     xlab="Number of clusters K",
     ylab="Total intra-clusters sum of squares")                  ###k4 is optimal as it apperas before elbow curve




