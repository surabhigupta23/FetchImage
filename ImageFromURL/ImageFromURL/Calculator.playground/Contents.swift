//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
print(str)
var num1:Float = 2 , num2:Float = 1 , value:Float = 0
var oprtr:Character = "/"
//num2 = Float(oprtr)

switch oprtr {
case "/":
    value = num1 / num2
    case "+":
    value = num1 + num2
    case "-":
    value = num1 - num2
    case "*":
    value = num1 * num2
  default:
      print("invalid operator")
}

print("sum \(value)")
print("world")
