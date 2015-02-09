# Jobs List coding excercise

We have a list of jobs, each represented by a character. Because certain jobs must be done before others, a job may have a
dependency on another job. For example, a may depend on b, meaning the final sequence of jobs should place b before a. If a has no dependency, the position of a in the final sequence does not matter.

I had some issues starting this excercise because of trying to figure out the best approach to get going. In the end i did not feel using a string would be the most ideal data structure for the excercise, due to this i decided to use a hash. For the logic itself i decided to initially use map to iterate through the elements as an initial basis to build upon. After this i tried to implement a bubble sort algorithm to look at two characters at a time and sort it. I then tried to build upon the condition that if the current object has a dependency which is found by accessing the value of the hash if the dependency is equal to the next element in the pair then a is dependent on b. Following on from this i tried to break the problem down by treating jobs as parents and childs so the values would be the child of the parent. From this i implemented group by so that everything was grouped by its parent. This then led me to some problems with nil being returned which was why i had to implement and if statement. I ran in to some problems understanding how to approach multiple dependencies which is why this is broken down in to two steps and a matcher is used for have order. I was unable to get the final test to pass and feel if i were to do so i would have to re work quite alot of my logic so i have more options. 

I found myself getting quite caught up in the logic of the task and a big mistake i made was to not break down the code further. I would be worried about the readbility of the code and feel that the interface of the class should be modified or the logic should be moved to the instace of the class as opposed to being in the class method itself. The reason i struggled with this is that the logic itself is relatively low level and does not have a need to interact between classes but if the logic had been split between small classes it certainly would help with structural readability. 

