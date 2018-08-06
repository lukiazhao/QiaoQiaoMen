/**
 * 本参考程序来自IT敲门砖
 * - IT敲门砖致力于帮助更多中国澳洲留学生找到好的工作，教师团队均来自澳洲一线大公司在职工程师。
 * - 现有的面试培训课程包括：面试求职必修班，iOS攻城狮，web攻城狮，java攻城狮，BA分析师
 * - 更多详情请见官方网站：https://www.qiaomenzhuan.com.au/itman-iOS-god.html
 * - 加入敲门砖QQ1群获取最新求职课程资讯：716553693
 */

import Foundation

/*:
 ## Arrays
 ### Challenge 1.
 Which of the following are valid statements?
*/
 
let array1 = [Int]()
// your answer goes here
//valid

let array3: [String] = []
// your answer goes here
//valid
//: Given:
let array4 = [1, 2, 3]

//: Which of the following five statements are valid

debugPrint(array4[0])
// your answer goes here
// valid

array4[1...2]
// your answer goes here
// valid
//: Given:
var array5 = [1, 2, 3]

//: Which of the five statements are valid?

array5[0] = array5[1]

array5[0...1] = [4, 5]
// your answer goes here
// valid. Assign values to particular array elements/

for item in array5 { debugPrint(item) }
// your answer goes here
// 4, 5, 3
/*:
 ### Challenge 2
 Write a function that removes the first occurrence of a given integer from an array of integers.
 This is the signature of the function:
 
 ```
 func removingOnce(_ item: Int, from array: [Int]) -> [Int]
 ```
*/

// your answer goes here
func removingOnce(_ item: Int, from array: [Int]) -> [Int] {

    var temp = array

    //check if contain the item
    if array.contains(item) {
        temp.remove(at: array.index(of: item)!)
    }

    return temp
}

removingOnce(2, from: [2,3,4,5,2])


/*:
 ### Challenge 3
 Write a function that removes all occurrences of a given integer from an array of integers. 
 This is the signature of the function:
 
```
 func removing(_ item: Int, from array: [Int]) -> [Int]
```
*/

// your answer goes here
func removing(_ item: Int, from array: [Int]) -> [Int] {
    var temp = array

    for i in array {
        if item == i {      // to make sure item exist in the array, enable using ! in next line
            temp.remove(at: temp.index(of: i)!)
        }
    }
    return temp
}

removing(2, from: [2,3,4,2])
/*:
 ### Challenge 4
 Arrays have a `reversed()` method that returns an array holding the same elements as the original array, in reverse order. 
 Write a function that does the same thing, without using `reversed()`. This is the signature of the function:

 ```
 func reversed(_ array: [Int]) -> [Int]
 ```
*/

// your answer goes here
//create a new array, copy the oritinal array into opposite position
func reversed(_ array: [Int]) -> [Int] {
    var reverseArray: [Int] = []
    print(reverseArray)

    for item in stride(from: (array.count), to: 0, by: -1) {    //to 0 不包括0， through 0 包括0
        reverseArray.append(item)
    }
    return reverseArray
}

reversed([1,2,3,4,5])
/*:
 ### Challenge 5
 The function below returns a random number between 0 and the given argument: 
 */


func randomFromZero(to number: Int) -> Int {
  return Int(arc4random_uniform(UInt32(number)))
}

/*:
 Use it to write a function that shuffles the elements of an array in random order.
 This is the signature of the function:

```
 func randomized(_ array: [Int]) -> [Int]
```
*/

// your answer goes here
func randomized(_ array: [Int]) -> [Int] {
    var tempArray = array
    for i in 0..<array.count {
        let randomInd = randomFromZero(to: (tempArray.count - 1))
        //swap the element with current index to an element with a randomly generated index
        let temp = tempArray[i]
        tempArray[i] = tempArray[randomInd]
        tempArray[randomInd] = temp
    }
    return tempArray
}
randomized([1,2,3,4,5])
/*:
 ### Challenge 6
 
 Write a function that calculates the minimum and maximum value in an array of integers. 
 Calculate these values yourself, do not use the methods `min` and `max`. 
 Return `nil` if the given array is empty.
 
 This is the signature of the function:

```
func minMax(of numbers: [Int]) -> (min: Int, max: Int)?
```
 
 */
// your answer goes here
func minMax(of numbers: [Int]) -> (min: Int, max: Int)? {
    var max: Int = numbers[0]
    var min: Int = numbers[0]

    for i in numbers {
        if i < min { min = i }
        if i > max { max = i }
    }
    
    return (min, max)
}
minMax(of: [3,2,5,7,9,1])
/*:
 ## Dictionaries
 ### Challenge 7
 Which of the following statements are valid?
 */

//let dict1: [Int, Int] = [:]   //invalid
//let dict2 = [:]               //invalid
let dict3: [Int: Int] = [:] //valid

//: Given
let dict4 = ["One": 1, "Two": 2, "Three": 3]
//: Which of the following are valid:

//dict4[1]
dict4["One"]          //valid
//dict4["Zero"] = 0
//dict4[0] = "Zero"


// let dict4 is a constant dictionary, not able to be edited (especially keys)
//: Given
var dict5 = ["NY": "New York", "CA": "California"]

//: Which of the following are valid?
dict5["NY"]                        //valid
dict5["WA"] = "Washington"      //valid, insert (key,value) pair in the front
dict5
//dict5["CA"] = nil               //valid
dict5

/*:
 ### Challenge 8
 Given a dictionary with 2-letter state codes as keys and the full state name as values, write a function that prints all the states whose name is longer than 8 characters. For example, for this dictionary ["NY": "New York", "CA": "California"] the output would be "California".
 */

func printLongStateNames(in dictionary: [String: String]) {
  // your answer goes here
    for value in dictionary.values {
        if value.count > 8 {
            print(value)

        }
    }
}
printLongStateNames(in: dict5)

/*:
 ### Challenge 9
 Write a function that combines two dictionaries into one. If a certain key appears in both dictionaries, ignore the pair from the first dictionary.
 This is the signature of the function:
 ```
 func combine(dict1: [String: String], with dict2: [String: String]) -> [String: String]
 ```
 */

// your answer goes here
func combine(dict1: [String: String], with dict2: [String: String]) -> [String: String] {
    var dict11 = dict1
    for (key, value) in dict2 {
        dict11[key] = value
    }
    return dict11
}

combine(dict1: ["1" : "11", "2" : "22"], with: ["3" : "33" , "1" : "22"])

/*:
 ### Challenge 10
 Declare a function `occurrencesOfCharacters` that calculates which characters occur in a string, as well as how often each of these characters occur.
 Return the result as a dictionary. This is the function signature:
 ```
 func occurrencesOfCharacters(in text: String) -> [Character: Int]
 ```
 Hint: `String` is a collection of characters that you can iterate over with a for statement.
*/

// your answer goes here
func occurrencesOfCharacters(in text: String) -> [Character: Int] {
    var dictionary: [Character: Int] = [:]
    for char in text {
        if dictionary.keys.contains(char) {
            dictionary[char]! += 1
        }else {
            dictionary[char] = 1
        }
    }
    return dictionary
}
occurrencesOfCharacters(in: "abbcdddd")


/*
 Bonus: To make your code shorter, dictionaries have a special subscript operator that let you add a default value if it is not found in the dictionary. For example, dictionary["a", default: 0] creates a 0 entry for the character "a" if it is not found instead of returning nil.
*/

func occurrencesOfCharactersBonus(in text: String) -> [Character: Int] {
  var occurrences: [Character: Int] = [:]
  for character in text {
    occurrences[character, default: 0] += 1
  }
  return occurrences
}

/*:
 ### Challenge 11
 Write a function that returns true if all of the values of a dictionary are unique.  Use a set to test uniqueness.
 This is the function signature:
 ```
 func isInvertible(_ dictionary: [String: Int]) -> Bool
 ```
 */
// your answer goes here
func isInvertible(_ dictionary: [String: Int]) -> Bool {
    var unique: Set<Int> = Set<Int>()
    var isUnique = true

    for value in dictionary.values {
        if unique.insert(value) != (true,value) {
            isUnique = false
        }
    }
    return isUnique

}

isInvertible(["1" : 1, "2" : 2, "3" : 3, "4" : 3])


