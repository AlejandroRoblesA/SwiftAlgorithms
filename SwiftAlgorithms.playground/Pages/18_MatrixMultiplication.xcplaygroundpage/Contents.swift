/*:
[<- Table Of Contents](@previous)
# 18 - Matrix Multiplication
## Instrcutions:
 Write a function that receive two squere arrays of the same size and return the matrix multiplication of the matrix received
 Example:
 
 ![Matrix 2x2](2x2.png)
 ![Matrix 3x3](3x3.png)
 ![Matrix 3x3](3x3-2.png)
 ![MAtrix 4x4](4x4.png)
 
 [-> Lonely Integer](@next)
*/
var matrixA = [[-2,1],[0,4]]
var matrixB = [[6,5],[-7,1]]
print(matrixMultiplication(matrixA,matrixB))
matrixA = [[1,2,3], [4,5,6], [7,8,9]]
matrixB = [[9,8,7], [6,5,4], [3,2,1]]
print(matrixMultiplication(matrixA,matrixB))
matrixA = [[4,3,0], [8,0,0], [0,9,0]]
matrixB = [[7,0,0], [2,5,0], [1,0,0]]
print(matrixMultiplication(matrixA,matrixB))
matrixA = [[1,2,3,4], [5,6,7,8], [9,10,11,12], [13,14,15,16]]
matrixB = [[17,18,19,20], [21,22,23,24], [25,26,27,28], [29,30,31,32]]
print(matrixMultiplication(matrixA,matrixB))
