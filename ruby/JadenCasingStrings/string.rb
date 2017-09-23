class String

  def toJadenCase
    arrayOfWords = self.split
    arrayOfCapitalizedWords = []

    arrayOfWords.each do | item |
      arrayOfCapitalizedWords.push(item.capitalize)
    end

    output = ""
    arrayOfCapitalizedWords.each do | item |
      output = output + item + " "
    end
    return output.strip
  end
end
