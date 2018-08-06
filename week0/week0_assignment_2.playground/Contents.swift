/**
 * 本参考程序来自IT敲门砖
 * - IT敲门砖致力于帮助更多中国澳洲留学生找到好的工作，教师团队均来自澳洲一线大公司在职工程师。
 * - 现有的面试培训课程包括：面试求职必修班，iOS攻城狮，web攻城狮，java攻城狮，BA分析师
 * - 更多详情请见官方网站：https://www.qiaomenzhuan.com.au/itman-iOS-god.html
 * - 加入敲门砖QQ1群获取最新求职课程资讯：716553693
 */

import Foundation

/*:
 ## Basic Control Flow
 ### Challenge 1
 What’s wrong with the following code?
 
 ```
 let firstName = "Matt"
 
 if firstName == "Matt" {
   let lastName = "Galloway"
 } else if firstName == "Ray" {
   let lastName = "Wenderlich"
 }
 let fullName = firstName + " " + lastName
 ```
 */
// your answer goes here
//1. lastName should be declared as a variable outside the if loop.
//2. firstName is constant, it wont change. So the else if will never be used.
/*:
 ### Challenge 2
 In each of the following statements, what is the value of the Boolean `answer` constant?
 */

let answer1 = true && true
// your answer goes here
//true

let answer2 = false || false
// your answer goes here
//false

let answer3 = (true && 1 != 2) || (4 > 3 && 100 < 1)
// your answer goes here
// true || false ==> true

let answer4 = ((10 / 2) > 3) && ((10 % 2) == 0)
// your answer goes here
// true && true ==> true
/*:
 ### Challenge 3
 Suppose the squares on a chessboard are numbered left to right, top to bottom, with 0 being the top-left square and 63 being the bottom-right square. Rows are numbered top to bottom, 0 to 7. Columns are numbered left to right, 0 to 7. Given a current position on the chessboard, expressed as a row and column number, calculate the next position on the chessboard, again expressed as a row and column number. The ordering is determined by the numbering from 0 to 63. The position after 63 is again 0.
 */
// your answer goes here
//// if next position = current + 1

//current position in row and column
let row_curr = 0
let column_curr = 7
print(row_curr, column_curr)

//next position
var row_next = row_curr
var column_next = column_curr

if column_curr == 7 && row_curr == 7 {
    row_next = 0
    column_next = 0
} else if column_curr == 7 {
    row_next += 1;
    column_next = 0
} else {
    column_next += 1;
}

print(row_next, column_next)
/*: 
 ### Challenge 4
 Given the coefficients a, b and c, calculate the solutions to a quadratic equation with these coefficients. Take into account the different number of solutions (0, 1 or 2). If you need a math refresher, this Wikipedia article on the quadratic equation will help [https://en.wikipedia.org/wiki/Quadratic_formula](https://en.wikipedia.org/wiki/Quadratic_formula).
 */
// your answer goes here
// y^2 = ax^2 + bx + c
var a, b, c : Double
a = 1
b = 2
c = 1

var express = b * b - 4 * a * c
var solutionX = [Double]()
type(of: solutionX)

if express < 0 {
    // no solution

}else if express == 0 {
    // one solution

    solutionX.append((-b) / (2 * a))
}else {
    solutionX.append ((-b + express.squareRoot()) / (2 * a))
    solutionX.append((-b - express.squareRoot()) / (2 * a))
}

debugPrint(solutionX)
/*:
 ### Challenge 5
 Given a month (represented with a `String` in all lowercase) and the current year (represented with an `Int`), calculate the number of days in the month. Remember that because of leap years, "february" has 29 days when the year is a multiple of 4 but not a multiple of 100.  February also has 29 days when the year is a multiple of 400.
 */
// your answer goes here
var month: String = "feburary"
var year: Int = 2001
var days: Int?

let bigMonth = ["january", "march", "may", "july", "august", "october", "december"]
let smallMonth = ["april", "june", "september", "november"]
let leapMonth = ["feburary"]

let allmonth = bigMonth + smallMonth + leapMonth

for _ in allmonth {
    if leapMonth.contains(month) {
        if (year % 4 == 0 && year % 100 != 0 ) || year % 400 == 0 {
            days = 29
        }else {
            days = 28
        }
    } else if bigMonth.contains(month) {
        days = 31
    } else if smallMonth.contains(month) {
        days = 30
    }
//    } else {
//        days = nil
//    }
}

print(days!)


/*:
 ### Challenge 6
 Given a number, determine if this number is a power of 2. (Hint: you can use `log2(number)` to find the base 2 logarithm of `number`. `log2(number)` will return a whole number if `number` is a power of two. You can also solve the problem using a loop and no logarithm.)
 */
let number = 1024.0
/*:
 Solution using logarithms:
 */
// your answer goes here
type(of: log2(number))

if log2(number).truncatingRemainder(dividingBy: 1) == 0 {
    print(number, "is a power Of 2")
}else {
    print(number, " is not a power of 2")
}

/*:
 Solution without using logarithms:
 */
// your answer goes here
var num = number

while num.truncatingRemainder(dividingBy: 2) == 0 {
    num = num / 2
}

if num == 1 {
    print (number , "is a power of 2")
} else {
    print(number , " is not a power of 2")

}

/*:
 ### Challenge 7
 Print a table of the first 10 powers of 2.
 */
// your answer goes here
var x = 2
for i in 1...10 {
    print(i,":", x)
    x *= 2
}
/*:
 ### Challenge 8
 Given a number n, calculate the n-th Fibonacci number.  (Recall Fibonacci is 1, 1, 2, 3, 5, 8, 13, ... Start with 1 and 1 and add these values together to get the next value.  The next value is the sum of the previous two.  So the next value in this case is 8+13 = 21.)
 */
// your answer goes here
let n = 8


var n0 = 0
var n1 = 1

var fibo = 1
for _ in 1..<n{
    fibo = n0 + n1
    n0 = n1
    n1 = fibo
}
print(fibo)

/*:
 ### Challenge 9
 Given a number n, calculate the factorial of n.  (Example: 4 factorial is equal to 1 * 2 * 3 * 4.)
 */
// your answer goes here
let factorial = 5

var result = 1
for i in 1...factorial {

    result = result * i
}
print(result)
/*:
 ### Challenge 10
 Given a number between 2 and 12, calculate the odds of rolling this number using two six-sided dice. Compute it by exhaustively looping through all of the combinations and counting the fraction of outcomes that give you that value. Don't use a formula.
 */
// your answer goes here
let dice = 6


var allCombin: Double = 0   // the number of all of the possible combinations
var givenValue: Double = 0  // the number of the possible combinations of the given value

// exhaustive loop
for i in 1...6 {
    for j in 1...6 {
        allCombin += 1
        if (i + j) == dice {
            givenValue += 1
        }
    }
}

// fraction
let fraction = givenValue / allCombin
print(fraction)

