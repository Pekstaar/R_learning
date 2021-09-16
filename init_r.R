1+1
2-4
#This is a comment
variable1 = 1+300 #stores the calculation here
variable1
variable1<-3+4 #assigning via method 2
variable1
#<- is equal to = operation
# r adores BODMAS operation
#BODMAS:
1+4/2-2*5
5*(2/(1+1))

#VECTORS-list of numbers or letters:
vector=1:20
vector2=21:40
vector
vector2
1:8
decimalBased = 1.2:9#adds the numbers by 1 till it reaches the destination(largest number)
decimalBased
  #vector based on c function
  #c function allows a list of numbers whose difference is not constant
vectorOnC = c(1,3,2,-9.2)
vectorOnC

  #vector based on certain increment
vector3=1:9
vector3
  #adding vectors require vectors of same size
vector+vector2
  #descending (reversed vector)
vector4=20:1
vector4
sumVect4Vect1=vector+vector4
sumVect4Vect1
  
vector5=1:3

vector5
vector3
vector3+vector5
vector3*vector5
vector5*vector5

####################END OF VECTORS######################

#################BEGINNING OF MATRICES##################
#MATRICE declaration via c function
matrix(c(1,2,3,4,5,6,7,8,9),ncol=3)

#MATRICE declaration for similar elements(same properties)
matrix(1:10, nrow = 5)
#using already declared vector:
matrix(vector3, nrow=3)
mat1=matrix(vector3,nrow=3)

#incrementing each number/element by certain steps:
mat1+2 # adds 2 to each element in the matrix

mat1+mat1

  #matrice multiplication
mat1%*%mat1

  #matrice square
mat1*mat1
  
  #matrice transpose:
t(mat1)
mat1

  #getting matrix position
mat1[2,3]
  
  #displaying column only
mat1[,3]

  #deleting rows and column
  # deleting column
mat1[,-2]
  # deleting row
mat1[-2,]
mat1

  #changing certain positioned value:
mat1[1,1]=12
mat1

  # replacing entire column:
mat1[,2]=0
mat1
  # replacing column based on range
mat1[,2:3]=1
mat1
  #creating certain columns based on range:
mat1[,1:3]=1:9
mat1

  #matrix based on range
mat1[mat1>5] #lists values that are greater than 5
mat1[mat1>2] #  '        "          "            2

  #matrix boolean operators:
mat1>5
  
  #matrix search and replace:
mat1[mat1>=8]=3 # used to carry out data cleaning
mat1

############# END OF MATRIX###############

##############LOOPS####################
  #runs from 1 to 10 undertaking commands declared!
for(i in 1:3){
  print(i)
  print(i+5)
}

mat1
matrix3  
mat1[,1:3]=1:9
mat1
mat3=mat1+5 # add 5 to each value of matrix 3
mat3
print(mat3)

for(i in 1:3){
  mat3[i,]=mat1[i,]
}
print(mat3)

for(i in 1:3){
  if(mat3[i,1]>=2){
    mat3[i,1]=0
  }
}
print(mat3)

 #while loop
while(sum(vector4) >=10){
  vector4=vector4-1
  print(vector4)
}

#5 DATA TYPES:
# numeric type:
calc1=1+2
calc1

# confirm the datatype of calc1 using class()
class(calc1)

# c function below concatenates the numbers.

numbers1=c(1,2,3)
class(numbers1)

# integer type:
numbers2 = 1:3
numbers2
class(numbers2)

numbers3 = 1.1:3
numbers3
class(numbers3)

# Character type:
char1 = "Hello World"
char1
class(char1)

char2 = c("red","green","blue")
char2
class(char2)
  # characters combined with numbers results to character type
combined1 = c(1,"test",3.3)
combined1
class(combined1)

# Logical class Type:
  # contains True/False values.
logical1=c(T,F,F)
logical1
class(logical1)

# Vector type:
vector1=vector(mode="logical", 3)
vector1
vector2=vector(mode="numeric",4)
vector2
  #changes value of the third vector digit
vector2[3]=5
vector2
# Matrix:
  # two dimensional vector
matrix2=matrix(c(T,F,T,T,F,T),ncol=3)
matrix2
class(matrix2)

#Array type:
  #has one type of data in it only
  # can store matrices as its elements and tow other datatypes known as dataframes and lists
  # arrays can be multidimensional
  # can be controlled by creating a vetor for no. of elements in each dimension and setting dim equal to the vector

array1 = array(1:16, dim=c(4,2,2))
array1
class(array1)
  # array 1 above has 4*2*2 dimensions.

#Dataframes type
myvalues1=c(358,349,936,123,394)
myvalues2=c(T,F,T,T,F)
names=c("name 1", "name 2", "Name 3", "name 4", "name 5")
dataframe1=data.frame(myvalues1, myvalues2, row.names = names)
dataframe1
class(dataframe1)

  #changeing column name
names(dataframe1)[1]="velocity"
dataframe1

# List type:
  # these contain any number of any datatype
list1=list("thing1",1.5,FALSE)
list1

list2= list(category1=c("thing1","thing2"),category2=1.5, catogory3=c(FALSE, TRUE))
list2
list2$category2=5
list2$category2
list2$category1[2]="thing 3"
list2$category1
str(list2)

#6 READING IN DATA
  # R includes 2 main types of data that will read into R:  
    #Spreadsheet type data and data in r object form.
  # Spreadsheet type data is read in as delineated(There is a standard separator to tell r how to separate cells in a table i.e. comma) files

  # get working directory:
setwd('Documents/R')
getwd()

  # save csv to variable
  # read.csv() imports the data into R(R creates a new data frame out of it)
  # header - true tells the function that the first row contains the column names 
proteinconc = read.csv("proteinconc.csv", header=TRUE)
class(proteinconc)
proteinconc

  # reset the first column in data frame as row names
row.names(proteinconc) =proteinconc[,1]
proteinconc
proteinconc = proteinconc[,-1]

  # To read in a file delineated by something else rather than commas we use 
  # read.delim("filename.xxx", header=TRUE, sep=";",dec=".")

  ##Reading in data that is R saved object.
  # TO load in the data:
load("proteinconc.rdata")
proteinconc2
yourmessage

# 7: Plotting data
  ## Dot plots
  # called via plot() command. it takes w vectors of equal lengths and plots them against each other
plotvector1=1:9
plot(plotvector1, plotvector1)

plotvector2=9:1
plot(plotvector1, plotvector2)

  # opening a new window while plotting:
x11()

plot(plotvector1,plotvector1)

par(mfrow=c(1,2), bg="grey", bty="n",cex=.75)
par(mfrow=c(1,2), bg = "grey", bty="n", cex=.75)

plot(plotvector1, plotvector1)
plot(plotvector1,plotvector2)
plot(plotvector1, plotvector2, xlab="1:9", ylab="9:1", main="Plot of 1:9 versus 9:1", col="red", pch=3)

















