#A. Create a student data frame with the fields of student id, name, level and student DoB.
student_id <- c(240001,240002, 240003)
name <- c("Sahar Alshahrani", "Sara Alshahrani", "Leen Alshahrani")
level <- c("one", "Tow", "Three")
dob <- as.Date(c("1992-02-17", "2020-10-06", "2022-03-23"))
studentWithoutGPA<- data.frame(student_id,name,level,dob,stringsAsFactors = FALSE )
print(studentWithoutGPA)
#For same student data frame add a column name “ student_GPA“ and add random GPA out of 5 and display the complete data frame with its summary. 
GPA<- c(5,4.99,4.98)
studentWithGPA<- data.frame(student_id,name,level,dob,GPA,stringsAsFactors = FALSE )
print(studentWithGPA)
print(summary(studentWithGPA))

         #________________________________________________________________________________________________
         #________________________________________________________________________________________________

#Write an R program to create an array of two 3x3 matrices each with 3 rows and 3 columns from two given two vectors as mentioned below.
#Then, Print the second row of the second matrix of the array and the element in the 3rd row and 3rd column of the 1st matrix.


M1 <- matrix(c(1, 3, 4, 5, 10, 11, 12, 13, 14), nrow = 3,byrow = FALSE)#by Default bycolomn=TRUE
print(M1)
M2 <- matrix(c(15, 1, 3, 4, 5, 10, 11, 12, 13), nrow = 3, byrow = FALSE)
print(M2)
col.names<-c("col1","col2","col3")
raw.names<-c("raw1","raw2","raw3")
result.array<-array(c(M1,M2),dim=c(3,3,2),dimnames = list(raw.names,col.names))
print(result.array)
print(result.array[2,,2])
print(result.array[3,3,1])

       #________________________________________________________________________________________________
       #________________________________________________________________________________________________

#dataset
# a. Cumulative Frequency Graph
data(iris)
library(ggplot2)
CF <- as.data.frame(table(iris$Sepal.Length))
CF$cumulative <- cumsum(CF$Freq)
ggplot(CF, aes(x = Var1, y = cumulative)) +
  geom_line(color = "pink") +
  geom_point(color = "pink") +
  labs(title = "Cumulative Frequency Graph of Sepal Length",
       x = "Sepal Length",
       y = "Cumulative Frequency") +
  theme_minimal()

# b. Cumulative Relative Frequency Graph
CRF <- CF
CRF$CR <- cumsum(CF$Freq) / sum(CF$Freq)
ggplot(CRF, aes(x = Var1, y = CR)) +
  geom_line(color = "purple") +
  geom_point(color = "purple") +
  labs(title = "Cumulative Relative Frequency Graph of Sepal Length",
       x = "Sepal Length",
       y = "Cumulative Relative Frequency") +
  theme_minimal()

# c. Scatter Plot of Sepal Length vs Sepal Width
ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) +
  geom_point(size = 3) +
  labs(title = "Scatter Plot of Sepal Length vs Sepal Width",
       x = "Sepal Length",
       y = "Sepal Width") +
  theme_minimal() +
  scale_color_manual(values = c("setosa" = "red", "versicolor" = "green", "virginica" = "blue"))

#________________________________________________________________________________________________
library(readr)
reviews_data <- read_csv("tiktok_google_play_reviews.csv")
str(reviews_data)
colnames(reviews_data)
summary(reviews_data)
head(reviews_data, 10)
user_review <- reviews_data[reviews_data$userName == "Shalina Sayed", c("reviewCreatedVersion", "score")]
print(user_review)
