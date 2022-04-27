import Cocoa

var lowerLimit = 1
var upperLimit = 50
var numberOfRSANumbers = 0


for i in lowerLimit...upperLimit {
    var numberOfDivisors = 0
    for j in lowerLimit...i{
        if i.isMultiple(of: j) {
            numberOfDivisors += 1
        }
    }
    if numberOfDivisors == 4{
        numberOfRSANumbers += 1
    }
    
}

print ("There are \(numberOfRSANumbers) RSA numbers between \(lowerLimit) and \(upperLimit).")


