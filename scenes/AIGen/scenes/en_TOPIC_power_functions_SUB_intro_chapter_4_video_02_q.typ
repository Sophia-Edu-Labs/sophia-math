#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Power Functions with Negative Exponents]
  #v(40pt)

  #only("1-")[What is the general form of a power function with a negative exponent?]
  #v(40pt)

  #only("2-")[a) $f(x) = a x^b$]
  #v(10pt)
  #only("3-")[b) $f(x) = a x^(-b)$]
  #v(10pt)
  #only("4-")[c) $f(x) = a / x^b$]
  #v(10pt)
  #only("5-")[d) $f(x) = a b^x$]

  #only("1")[#voiceover("Let's explore power functions with negative exponents. What is the general form of such a function?")]
  #only("2")[#voiceover("Is it f of x equals a times x to the power of b,")]
  #only("3")[#voiceover("or f of x equals a times x to the power of negative b,")]
  #only("4")[#voiceover("or perhaps f of x equals a divided by x to the power of b,")]
  #only("5")[#voiceover("or lastly, is it f of x equals a times b to the power of x?")]
]

//Type: MC 
#questionDef( 
questionText: "What is the general form of a power function with a negative exponent?", 
answerOptions: ("$f(x) = a x^b$", "$f(x) = a x^{-b}$", "$f(x) = a / x^b$", "$f(x) = a b^x$"),
correctAnswerIndex: 1 
)