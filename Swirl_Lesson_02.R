R Swirl 



Lesson 2



In this lesson, you'll learn how to examine your local workspace in R and begin to

explore the relationship between your workspace and the file system of your machine.



R provided common API ( a common set of commands for interacting with files)



To determine which directory the R session is using as its currenty directory



Function = **getwd()** 

Answer = 1] "C:/Users/shama/repos/portfolio"



To list all the objects in your local workspace 



Function = **ls()**


Answer = \[1] "my\_div"  "my\_sqrt" "x"       "y"       "Y"       "z" 
(these are the variables I created in lesson 1!)

To list all the files in your working directory

Function = **list.files()** or **dir()**
Answer = \[1] "\_quarto.yml"     "\_site"           "index.qmd"       "portfolio.Rproj" "R"    



For each new function examine help pages by using ? followed by function

e.g. ?list.files opens the help page for this. Important to check out the **see also** section



The args() function can be used on another function to see what argument a function can take.

To assign value of the current working directory to a variable called old.dir



old.dir <- getwd()

To create a directory in the current working directory called "testdir"



**Function: dir.create("testdir")**

To set a new working directory, the function to use is **setwd()

Function: setwd("testdir") has set the newly created testdir as the new working directory**

To create a file in the working directory use file.create() function.
In this example I am creating a new file called "mytest.R".


**Function: file.create("mytest.R")**



To check that this is the only file in this newly created directory, list all the files in the current directory

**Function: list.files()**



To check if the newly created "mytest.R" exists in the working directory

**Function: file.exists("mytest.R")**
Answer: TRUE

To access information about the file "mytest.R" use the function file.info()

Function: file.info(**"mytest.R"**)


To change the name of a file use the function file.rename(oldname,newname)

**Function: file.rename("mytest.R", "mytest2.R")**

To make a copy of a file use the function file.copy(filename,copyfilename)

**Function: file.copy("mytest2.R","mytest3.R") - this created a copy with a new name**

A safe way to join  file/folder names together to create a path is by using **file.path()

Function: file.path('folder1','folder2')** 

You can a create a directory in the current working directory and subdirectory all in one command using both dir.create() and filepath(). Note: "recursive" argument must be set true in order to create nested directories

Example - I want to create a directory called "testdir2" and a subdirectory called "testdir3".

**Function:  dir.create(file.path("testdir2", "testdir3"), recursive = TRUE)**


Now to go back to your old working directory use function setwd()

To delete the testdir and everything itn u





