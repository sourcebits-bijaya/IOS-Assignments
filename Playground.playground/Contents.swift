//: Playground - noun: a place where people can play

import UIKit


for var i = 5; i <= 50; i = i + 5 {

println(i)
    
}

var arr = [8,2,3,4,5,6,7]

for x in arr {

println(x)

}

for (index, x) in enumerate(arr) {

arr[index+1] = x
    
}