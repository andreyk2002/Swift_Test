
func isEnglish(_ str : Character ) -> Bool {
  return (str >= "A" && str <= "Z") || (str >= "a" && str <= "z")
}

func isRussian(_ str : Character ) -> Bool {
  return (str >= "а" && str <= "я") || (str >= "А" && str <= "Я")
}

func addRussianCodes(_ str : String) -> String  {
  var result = ""
   for character in Array(str) {
     result.append(character)
     if(isRussian(character)){
       let code = character.unicodeScalars.first!.value
       result += String(code)
     }
   }
   return result
}

func addQuotes(_ str : String) -> String {
   var result = ""
   for character in Array(str) {
     result.append(character)
     if(isEnglish(character)){
       result += "«»"
     }
   }
   return result
}


let test = "яHelloДарова"
var withRussianCode = addRussianCodes(test)
var withQuotes = addQuotes(withRussianCode)
print(withQuotes)