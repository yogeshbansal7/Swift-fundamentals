/*:
## Exercise - Control Transfer Statements
 
 Create a for-in loop that will loop through `alphabet`. Inside the loop, print every other letter by continuing to the next iteration if you are on a letter you do not wish to print. (Hint: You can use the `isMultiple(of:)` method on `Int` to only print even indexed characters).
 */
let alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

//let index = alphabet.index(alphabet.startIndex, offsetBy: 3)
//let startChar = alphabet[index]
//print(startChar)



var size = alphabet.count
//var i = 0

for i in 0...size-1{
    if(i.isMultiple(of: 2)){
        var index = alphabet.index(alphabet.startIndex, offsetBy: i)
        print(alphabet[index])
    }
}

for (index, letter) in alphabet.enumerated(){
    if(index.isMultiple(of: 2)){
        print(letter)
    }
}

//while(i<size){
//    var index = alphabet.index(alphabet.startIndex, offsetBy: i)
//    print(alphabet[index])
//    i += 2
//}
//:  Create a `[String: String]` dictionary where the keys are names of states and the values are their capitals. Include at least three key/value pairs in your collection, with one of them being your home state. Now loop through this dictionary again, printing out the keys and values in a sentence, but add an if statement that will check if the current iteration is your home state. If it is, print("I found my home!") and break out of the loop.
var dic : [String: String] = ["a":"b", "c":"d", "e":"f"]

for (k, v) in dic{
    if(k == "c"){
        print("i found my home")
    }
}

/*:
[Previous](@previous)  |  page 5 of 6  |  [Next: App Exercise - Finding Movements](@next)
 */
