#=====================================================================#
# This is code to create: a '/data' folder, a '/code' folder, a '/text'
# folder, and a `README.txt` file.
# Authored by and feedback to mjfrigaard@gmail.com
# MIT License
# Version: 1.1
#=====================================================================#


# data ------------------------------------------------------------------
if (!file.exists("./data/")) {
    dir.create("./data/")
}


# code ------------------------------------------------------------------
if (!file.exists("./code/")) {
    dir.create("./code/")
}


# text ------------------------------------------------------------------
if (!file.exists("./text/")) {
    dir.create("./text/")
}


# README ----------------------------------------------------------------
if (!file.exists("README.txt")) {
    file.create("README.txt")
}
