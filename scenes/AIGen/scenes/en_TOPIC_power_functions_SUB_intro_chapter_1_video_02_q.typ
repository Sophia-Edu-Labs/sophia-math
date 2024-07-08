#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[General Form of a Cubic Function]
  #v(40pt)

  #only("1-")[Which of the following is the general form of a cubic function?]
  #v(20pt)

  #only("2-")[a) $f(x) = a x^3 + b x + c$]
  #v(10pt)
  #only("3-")[b) $f(x) = a x^3 + b x^2 + c x + d$]
  #v(10pt)
  #only("4-")[c) $f(x) = a x^3 + b$]
  #v(10pt)
  #only("5-")[d) $f(x) = a/x^3$]

  #only("1")[#voiceover("Let's test your knowledge on cubic functions. Which of the following options represents the general form of a cubic function?")]
  #only("2")[#voiceover("Is it f of x equals a times x cubed plus b times x plus c?")]
  #only("3")[#voiceover("Or is it f of x equals a times x cubed plus b times x squared plus c times x plus d?")]
  #only("4")[#voiceover("Maybe it's f of x equals a times x cubed plus b?")]
  #only("5")[#voiceover("Or could it be f of x equals a divided by x cubed?")]
]

//Type: MC 
#questionDef( 
questionText: "What is the general form of a cubic function?", 
answerOptions: ("$f(x) = ax^3 + bx + c$", "$f(x) = ax^3 + bx^2 + cx + d$", "$f(x) = ax^3 + b$", "$f(x) = \frac{a}{x^3}$"),
correctAnswerIndex: 1 
)