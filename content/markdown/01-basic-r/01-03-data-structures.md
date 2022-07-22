# Data Types
**Author:** Cole Brookson
**Date:** 13 June 2022

## Data Structures

To make use of these individual pieces of data we combine them together into data *structures*. There are 4 main data structures that we work with consistently:

1. Vectors
2. Matrices
3. Dataframes
4. Arrays

### Vectors

Vectors are subset into atomic vectors (collections of data of the same type) and lists (collections of different data types). Vectors are the workshorses of R and mosts other OOP languages use vectors or a very similar structure to hold data. From this point forward, we’ll use ‘vector’ to refer to atomic vectors and call lists by name. We make vectors the same way we make variables, with an assignment statement.

Often we start by making an empty vector that we may decide to fill with values later. To do this, we use the `vector()` function.

```
x <- vector("character", length = 5)
```
Here, the function `vector()` takes two required arguments. the first argument asks for the data *type* we would like to use, and the second is the number of elements (the *length*) that we want the vector to be. 

When we already know the content we want included, we can use a simpler `c()` function (`c` is short for *combine*). 

```
x <- c(1, 2, 3, 4)
```
Here, R automatically understands what type of data we're using and since we passed four values, the length is automatically four. We could actually shorten this using R's `:` notation:

```
y <- c(1:4)
```
And we can check this works as expected:
```
x == y

TRUE
```

**Note:** One thing to understand is that previously when we assigned a variable a single data object (i.e. `x = 10`), what we were actually doing is making a vector! This is just a special case vector of length 1. 

We can determine what is and what is NOT an atomic vector with the following basic command `is.atomic()`. Recall that lists are *also* vectors, but not the kind we're working with now. 

**EXERCISE**
```
x  <- c("The quick brown fox jumped over the lazy dog")
```


