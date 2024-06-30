#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Converting Fractions to Decimals]
  #v(40pt)

  #only("1-")[What is $3/4$ as a decimal?]
  #v(20pt)

  #only("2-")[a) 0.34]
  #v(10pt)
  #only("3-")[b) 0.43]
  #v(10pt)
  #only("4-")[c) 0.75]
  #v(10pt)
  #only("5-")[d) 0.57]

  #only("1")[#voiceover("Let's practice converting fractions to decimals. Here's a multiple-choice question: What is three-fourths as a decimal?")]
  #only("2")[#voiceover("Is it zero point three four,")]
  #only("3")[#voiceover("or zero point four three,")]
  #only("4")[#voiceover("or zero point seven five,")]
  #only("5")[#voiceover("or zero point five seven?")]
]

//Type: MC 
#questionDef( 
questionText: "What is $\frac{3}{4}$ as a decimal?", 
answerOptions: ("$0.34$", "$0.43$", "$0.75$", "$0.57$"),
correctAnswerIndex: 2 
)