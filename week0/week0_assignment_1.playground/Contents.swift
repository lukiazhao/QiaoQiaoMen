/**
 * 本参考程序来自IT敲门砖
 * - IT敲门砖致力于帮助更多中国澳洲留学生找到好的工作，教师团队均来自澳洲一线大公司在职工程师。
 * - 现有的面试培训课程包括：面试求职必修班，iOS攻城狮，web攻城狮，java攻城狮，BA分析师
 * - 更多详情请见官方网站：https://www.qiaomenzhuan.com.au/itman-iOS-god.html
 * - 加入敲门砖QQ1群获取最新求职课程资讯：716553693
 */

import Foundation

/*: 
## Expressions, Variables & Constants Challenges

### Challenge 1
 Declare a constant `exercises` with value 9 and a variable `exercisesSolved` with value 0. Increment this variable every time you solve an exercise (including this one).
 */
// your answer goes here
let exercises = 9
var exercisesSolved = 0

// while loop
var i = 0
while i < 9 {
    exercisesSolved += 1
    i += 1
}

// or for loop
for _ in 1...9 {
    exercisesSolved += 1
}
/*:
### Challenge 2
 Given the following code:
 ```swift
 age = 16
 print(age)
 age = 30
 print(age)
 ```
  Declare `age` so that it compiles.  Did you use `var` or `let`?
*/
// your answer goes here
// use var
var age = 16
print(age)
age = 30
print(age)
/*:
### Challenge 3
 Consider the following code:

```swift
let a: Int = 46
let b: Int = 10
```
 Work out what `answer` equals when you add the following lines of code:
```swift
// 1
let answer1: Int = (a * 100) + b
// 2
let answer2: Int = (a * 100) + (b * 100)
// 3
let answer3: Int = (a * 100) + (b / 10)
```
*/
// your answer goes here
let a: Int = 46
let b: Int = 10

let answer1: Int = (a * 100) + b
let answer2: Int = (a * 100) + (b * 100)
let answer3: Int = (a * 100) + (b / 10)
/*:
### Challenge 4
 Add parentheses to the following calculation. The parentheses should show the order in which the operations are performed and should not alter the result of the calculation.
 */
5 * 3 - 4 / 2 * 2
/*:
 Solution:
 */
// your answer goes here
(5 * 3) - ((4 / 2) * 2)
/*:
### Challenge 5
 Declare two constants `x` and `y` of type `Double` and assign both a value. Calculate the average of `x` and `y` and store the result in a constant named `average`.
 */
// your answer goes here
let x: Double = 1
let y: Double = 2
let average = (x + y) / 2
/*:
 Bonus: why is it important that `x` and `y` are of type `Double`?
 
*/
// your answer goes here
//if not declare as double, x and y will be considered as int. When the result of division between x and y will become an int = 3 / 2 = 1.5 => 1
/*:
### Challenge 7
 Suppose the squares on a chessboard are numbered left to right, top to bottom, with 0 being the top-left square and 63 being the bottom-right square. Rows are numbered top to bottom, 0 to 7. Columns are numbered left to right, 0 to 7.
 
 Declare a constant `position` and assign it a value between 0 and 63. Calculate the corresponding row and column numbers and store the results in constants named `row` and `column`.
 */
// your answer goes here
let position = 63

let row = position / 8
let column = position % 8
/*:
 ### Challenge 8
 A circle is made up of 2𝜋 radians, corresponding with 360 degrees. Declare a constant `degrees` of type `Double` and assign it an initial value. Calculate the corresponding angle in radians and store the result in a constant named `radians`.
 */
// your answer goes here
let degree: Double = 45
let radians = (2 * Double.pi * degree) / 360
/*:
### Challenge 9
 Declare four constants named `x1`, `y1`, `x2` and `y2` of type `Double`. These constants represent the 2-dimensional coordinates of two points. Calculate the distance between these two points and store the result in a constant named `distance`.
 */
// your answer goes here
let x1, x2, y1, y2 : Double
x1 = 1
x2 = 2
y1 = 1
y2 = 2

let distance = (pow((x1 - x2), 2) + pow((y1 - y2), 2)).squareRoot()

