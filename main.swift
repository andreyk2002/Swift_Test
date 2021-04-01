func testDigits(_ number : Int) -> Bool {
    var tmp = number
    var first = number % 10
    tmp /= 10
    var second = tmp % 10
    tmp /= 10
    var third = tmp % 10
    tmp /= 10
    var fourth = tmp
    return first == fourth && second == third
}

func testNumber(_ number : Int) -> Bool {
   var sum = 0
   var tmp  = number
   while tmp != 0 {
      var digit = number % 10
      sum += digit
      tmp /= 10
   }
   return sum % 7 == 0
}


var test = 1111
print(testDigits(1111))
print(testNumber(1111))

