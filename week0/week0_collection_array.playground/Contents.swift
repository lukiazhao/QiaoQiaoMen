/**
 * 本参考程序来自IT敲门砖
 * - IT敲门砖致力于帮助更多中国澳洲留学生找到好的工作，教师团队均来自澳洲一线大公司在职工程师。
 * - 现有的面试培训课程包括：面试求职必修班，iOS攻城狮，web攻城狮，java攻城狮，BA分析师
 * - 更多详情请见官方网站：https://www.qiaomenzhuan.com.au/itman-iOS-god.html
 * - 加入敲门砖QQ1群获取最新求职课程资讯：716553693
 */

import Foundation


// MARK: - Array Init

var array1: Array<Int> = Array<Int>()
var array2: [Int] = []
var array3 = array2

// [3, 3, 3]
var threeInts = [Int](repeating: 3, count: 3)
// [3, 3, 3, 3, 3, 3]
var sixInts = threeInts + threeInts
// [1, 2, 3, 4, 5]
var fiveInts = [1, 2, 3, 4, 5]


// MARK: - Array Common Attribute

array1.count    // 0
fiveInts.count  // 5

if array2.isEmpty {
    // array2 is empty
    debugPrint("array2 is empty")
}


// MARK: - Element in Array

fiveInts[2] // 3
//fiveInts[5] // This will crash

fiveInts[0...2] // [1, 2, 3]
fiveInts[0..<2] // [1, 2]


// MARK: - Array Looping

for value in fiveInts {
    debugPrint(value)
}

for (index, value) in fiveInts.enumerated() {
    debugPrint("\(index): \(value)")
}

fiveInts.forEach { debugPrint($0) }


// MARK: - Array CRUD

array1.append(1)     // [1]
array1 += [2, 3, 4]  // [1, 2, 3, 4]
array1.insert(5, at: array1.endIndex)
array1.removeLast()
