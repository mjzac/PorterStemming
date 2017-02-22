//: Playground - noun: a place where people can play


struct PorterStemmer {
    var buffer: String = ""
    var k: Int = 0
    var k0: Int = 0
    var j: Int = 0
    
    func hasConsonant(at index:Int ) -> Bool {
        guard buffer.characters.count > index, index >= 0  else { return false }
        switch  buffer[buffer.index(buffer.startIndex, offsetBy: index)] {
        case "a", "e", "i", "o", "u":
            return false
        case "y":
            if index == self.k0 {
                return true
            } else {
                return !self.hasConsonant(at: index-1)
            }
        default:
            break
        }
        return true
    }
    
    func m() -> Int {
        var n = 0
        var i = self.k0
        while true {
            if i > self.j {
                return n
            }
            if !self.hasConsonant(at: i) {
                break
            }
            i += 1
        }
        i += 1
        
        while true {
            while true {
                if i > self.j {
                    return n
                }
                if self.hasConsonant(at: i) {
                    break
                }
                i += 1
            }
            i += 1
            n += 1
            
            while true {
                if i > self.j {
                    return n
                }
                if !self.hasConsonant(at: i) {
                    break
                }
                i += 1
            }
            i += 1
        }
    }
    
    func hasVowelInStem() -> Bool {
        for i in self.k0..<self.j+1 {
            if !self.hasConsonant(at: i) {
                return true
            }
        }
        return false
    }
    
    func doubleC() -> Bool {
        return true
    }
    
    func cvc() -> Bool {
        return true
    }
    
    func ends(with string: String) -> Bool {
        return self.buffer.hasSuffix(string)
    }
    
    mutating func setTo(string: String) {
        
    }
    
    func r(string: String) {
        
    }
    
    func stepOneAB() {
        
    }
    func stepOneC() {
        
    }
    func stepTwo() {
        
    }
    func stepThree() {
        
    }
    func stepFour() {
        
    }
    func stepFive() {
        
    }
    func stem(p: String, i: Int, j: Int) {
        
    }
    
}

