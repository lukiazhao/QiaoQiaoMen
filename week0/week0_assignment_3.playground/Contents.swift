/**
 * 本参考程序来自IT敲门砖
 * - IT敲门砖致力于帮助更多中国澳洲留学生找到好的工作，教师团队均来自澳洲一线大公司在职工程师。
 * - 现有的面试培训课程包括：面试求职必修班，iOS攻城狮，web攻城狮，java攻城狮，BA分析师
 * - 更多详情请见官方网站：https://www.qiaomenzhuan.com.au/itman-iOS-god.html
 * - 加入敲门砖QQ1群获取最新求职课程资讯：716553693
 */

/*:
 ## Optionals
 
 ### Challenge 1: You be the compiler
 Which of the following are valid statements?
 
 ```swift
 var name: String? = "Ray"
 var age: Int = nil
 let distance: Float = 26.7
 var middleName: String? = nil
 ```
*/
// your answer goes here
// valid 1, 3, 4
// invalid 2 : the type is initially declared as Int, and nil cannot be initialized value. Can be var age: Int? = nil

/*:
 ### Challenge 2: Divide and conquer
 
 First, create a function that returns the number of times an integer can be divided by another integer without a remainder. The function should return `nil` if the division doesn’t produce a whole number. Name the function `divideIfWhole`.
 
 Then, write code that tries to unwrap the optional result of the function. There should be two cases: upon success, print `"Yep, it divides \(answer) times"`, and upon failure, print `"Not divisible :["`.
 
 Finally, test your function:
 
 1. Divide 10 by 2. This should print `"Yep, it divides 5 times."`
 2. Divide 10 by 3. This should print `"Not divisible :[."`
 
 **Hint 1**: Use the following as the start of the function signature:
 
 ```swift
 func divideIfWhole(_ value: Int, by divisor: Int)
 ```
 
 You’ll need to add the return type, which will be an optional!
 
 **Hint 2**: You can use the modulo operator (`%`) to determine if a value is divisible by another; recall that this operation returns the remainder from the division of two numbers. For example, `10 % 2 = 0` means that 10 is divisible by 2 with no remainder, whereas `10 % 3 = 1` means that 10 is divisible by 3 with a remainder of 1.
*/
// your answer goes here
func divideIfWhole(_ value: Int, by divisor: Int) -> Int? {

    if divisor == 0 {
        return nil
    }

    //check divisable
    if value % divisor != 0 {
        return nil

    } else {
        return value / divisor
    }

}

var msg = divideIfWhole(10, by: 2)
//check if msg == null
if let msg = msg {
    print("Yep, it divides \(msg) times.")
}else {
    debugPrint(msg)
    print("Not divisible :[.")
}


/*:
 ### Challenge 3: Refactor and reduce

 The code you wrote in the last challenge used `if` statements. In this challenge, refactor that code to use nil coalescing instead. This time, make it print `"It divides X times"` in all cases, but if the division doesn’t result in a whole number, then `X` should be `0`.
 */
// your answer goes here
func divideOfWhole(_ value: Int, by divisor: Int) -> String {

    let x = (value % divisor == 0 ? value / divisor : 0)
    return "It divides \(x) times"
}
divideOfWhole(10, by: 5)
/*:
 ### Challenge 4: Nested optionals
 
 Consider the following nested optional. It corresponds to a number inside a box inside a box inside a box.
 
 ```swift
 let number: Int??? = 10
 ```
 
 If you print number you get the following:
 
 ```swift
 print(number)
 // Optional(Optional(Optional(10)))
 
 print(number!)
 // Optional(Optional(10))
 ```
 
 1. Fully force unwrap and print `number`.
 2. Optionally bind and print `number` with if let.
 3. Write a function `printNumber(_ number: Int???)` that uses `guard` to print the number only if it is bound.
 */
let number: Int??? = 10

// your answer goes here
//1.
print(number!!!)

// 2.
if let number = number {
    if let number = number {
        if let number = number {
            print(number)
        }
    }
}
//3.
func printNumber(_ number: Int???) {
    // guard ?
    guard let num1 = number else {
        return
    }

    guard let num2 = num1 else {
        return
    }

    guard let num3 = num2 else {
        return
    }

    print(num3)
}

printNumber(number)
