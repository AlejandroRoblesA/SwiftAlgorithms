/*:
[<- Reduce](@previous)
# 17 - Table Of Contents
## Instrcutions:
 Create a table of contents for a simple markup language. It must follow two rules:
 1. If a line starts with a single # followed by a space, then it's a chapter title.
 2. If a line starts with a double # followed by a space, then it's a section title.
 
The table of contents should be displayed in the following format:

1. Title of the first chapter\
1.1. Title of the first section of the first chapter\
1.2. Title of the second section of the first chapter\
2. Title of the second chapter\
2.1. Title of the first section of the second chapter\
2.2. Title of the second section of the second chapter
 
 Note that each number is followed b a period and the last period is followed by 1 space.
 
 For example, the input text is n = 12 lines long, where text is the following:
 
 \# Algorithms\
 This chapter covers the most basic algorithms.\
 \## Sorting\
 Quicksort is fast and widely used in practice\
 Merge sort is a deterministic algorithm\
 \## Searching\
 DFS and BFS are widely used graph searching algorithms\
 Some variants of DFS are also used in game theory applications\
 \# Data Structures\
 This chapter is all about data structures\
 It's a draft for now and will contain more sections in the future\
 \# Binary Search Trees
 
 This is the table of contents that must be produced:
 
 1. Algorithms\
 1.1. Sorting\
 1.2. Searching
 2. Data Structures
 3. Binary Search Trees

 ### Function Description
 Complete the function tableOfContents in the editor below.
 
 tableOfContents has the following parameter:\
 string text[n]: the input text
 
 Returns:\
 string[]: each string is a line in the table of
 contents
 
 Constraints:\
 • 1sns 1000\
 • 1 ≤ length of text[i]s 100\
 • When a line starts with # or with ##, these special characters are always followed by a space.\
 • The first line of the text is guaranteed to be a chapter line.
 
 Input Format Format for Custom Testing:\
 In the first line, there is a single integer, n, the number of lines in text. Each line of the n subsequent lines (where O < i < n) contains a string, text[i].
 
 Sample Case 0:
 
 Sample Input:\
 10\
 \# Cars\
 Cars came into global use during the 20th century\
 Most definitions of car say they run primarily on roads\
 \## Sedan\
 Sedan's first recorded use as a name for a car body was in 1912\
 \## Coupe\
 A coupe is a passenger car with a sloping rear roofline and generally two doors\
 \## SUV\
 The predecessors to SUVs date back to military and low-volume models from the late 1930s\
 There is no commonly agreed definition of an SUV, and usage varies between countries.\
 
 Sample Output:
 1. Cars\
 1.1. Sedan\
 1.2. Coupe\
 1.3. SUV
 
 Explanation:\
 The first line of input indicates there are n = 10 lines of text. There is only 1 chapter in the input, and it contains 3 sections. All the lines that don't begin with # or ## are ignored in the table of contents.
 
 Sample Case 1:
 
 Sample Input:\
 10\
 \# Games\
 \## Board\
 \## Computer\
 \## Zero sum\
 \## Multiplayer\
 \# Strategies\
 \## Greedy\
 \## Tree pruning\
 \## Others\
 \# Summary
 
 Sample Output:
 1. Games\
 1.1. Board\
 1.2. Computer\
 1.3. Zero sum\
 1.4. Multiplayer
 2. Strategies\
 2.1. Greedy\
 2.2. Tree pruning\
 2.3. Others
 3. Summary
 
 Explanation:\
 Again, the first line of input indicates there
 are n = 10 lines of text. This text already
 looks like an outline because it contains only chapters and sections. Chapter 1 has 4 sections in it, Chapter 2 has 3 sections, and Chapter 3 has no sections.
 
 
 [-> Next](@next)
*/
