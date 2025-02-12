#################
## Making set of prime numbers
##################
prime = c(2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 
          59, 61, 67, 71, 73, 79, 83, 89, 97) #Set of all prime numbers under 100

wrong.vec = c(6, 10, 14, 15, 21, 22, 26, 33, 34, 35, 38, 39, 46, 51, 55, 57, 58, 
              62, 65, 69, 75, 77, 82, 85, 86, 87, 91, 93, 94, 95)

prime.mult = c() #setting up what will be final vector
prime.index = c(1:length(prime))

######################################
##  Making a vector of unique prime multiples
#######################################

for (i in prime.index){ #Loop over each prime to add itself and unique multiples to vector
  curr = prime[i]
  #Initializing multiples
  count = 1 
  mult = curr*prime[i+count] #Initializing first multiple
  while(i<length(prime) & mult<100){ #Adding unique multiples
    if (!mult %in% prime.mult) #Checks if it is unique
      prime.mult = c(prime.mult, mult) #Add to vector if it is unique
    #Prepping for next iteration
    count = count+1
    mult = curr*prime[i+count]
  }
}
###Making the vector sorted properly
prime.mult = sort(prime.mult)

### Comparing given vs calculated vector
setdiff(wrong.vec, prime.mult) #75 should NOT be in given vector
setdiff(prime.mult, wrong.vec) #74 SHOULD be in given vector

#From here, replacing either 74 with 75 in given vector
#or replacing the given vector with prime.mult would successfully correct the mistake







