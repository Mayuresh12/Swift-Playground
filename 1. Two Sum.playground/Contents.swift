import UIKit

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var index : [Int] = [0, 1]
    for (index1, element) in nums.enumerated() {
        for (index, element) in nums.enumerated() {
            print(index1, ":", element)
        }
    }
    let unique = Array(Set(index))
    return unique
}

let nums = [2,7,11,15], target = 9

//let nums = [3,2,3], target = 6

print("Answer \(twoSum(nums, target))")
