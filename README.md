# swift-apply
Language construct that applies a function to a list of arguments, exists in many programmic languages https://en.wikipedia.org/wiki/Apply

Inspired by https://www.drivenbycode.com/the-missing-apply-function-in-swift

## Usage Example

```swift
// 1
let first = apply(fn: firstWord, args: ["hello world"])
print(first)
// 2
let repeatTest = apply(fn2: repeatString, args: ["ha", 3])
print(repeatTest)
// variadic
let count = apply(fn: someVariadic, args: ["hello world", "bye"])
print(count)
// 20
let fundumentals = apply(fn20: stringify20FundamentalTypes, args: [1,Int8(2),Int16(3),Int32(4),Int64(5),
                                                                   Double(6),Float(7),Float32(8),Float64(9),Float80(10),
                                                                   11,12,13,14,15,
                                                                   true,"!",["wow"],["#":"kek"],Set(["a", "b", "a"])])
print(fundumentals)
    
    
/** 1 argument */
func firstWord(sentence: String) -> String {
    if let firstWord = sentence.split(separator: " ").first.map(String.init) {
        return firstWord
    }
    return ""
}

/** 2 arguments */
func repeatString(str: String, n: Int) -> String {
    return [String](repeating: str, count: n).joined(separator: " ")
}

/** variadic arguments */
func someVariadic(strings: String...) -> Int{
    return strings.count
}

/** 20 arguments */
func stringify20FundamentalTypes(a1:Int,
                                 a2:Int8,
                                 a3:Int16,
                                 a4:Int32,
                                 a5:Int64,
                                 a6:Double,
                                 a7:Float,
                                 a8:Float32,
                                 a9:Float64,
                                 a10:Float80,
                                 a11:Int,
                                 a12:Int,
                                 a13:Int,
                                 a14:Int,
                                 a15:Int,
                                 a16:Bool,
                                 a17:String,
                                 a18:[Any],
                                 a19:[AnyHashable:Any],
                                 a20:Set<AnyHashable>) -> [String] {
    return [String(a1),
            String(a2),
            String(a3),
            String(a4),
            String(a5),
            String(a6),
            String(a7),
            String(a8),
            String(a9),
            String(a10),
            String(a11),
            String(a12),
            String(a13),
            String(a14),
            String(a15),
            String(a16),
            String(a17),
            a18.description,
            a19.description,
            a20.description
    ]
}
```
