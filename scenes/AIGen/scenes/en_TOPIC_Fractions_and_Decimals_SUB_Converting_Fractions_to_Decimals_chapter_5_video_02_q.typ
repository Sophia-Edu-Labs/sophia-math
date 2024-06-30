#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Converting Fractions to Decimals]
  #v(40pt)

  #only("1-")[What is $4/5$ as a decimal?]
  #v(20pt)

  #only("2-")[a) 0.8]
  #v(10pt)
  #only("3-")[b) 0.45]
  #v(10pt)
  #only("4-")[c) 0.75]
  #v(10pt)
  #only("5-")[d) 0.5]

  #only("1")[#voiceover("Let's practice converting fractions to decimals. Here's our question: What is four-fifths as a decimal?")]
  #only("2")[#voiceover("Is it zero point eight,")]
  #only("3")[#voiceover("or zero point four five,")]
  #only("4")[#voiceover("or zero point seven five,")]
  #only("5")[#voiceover("or is it zero point five?")]
]

//Type: MC 
#questionDef( 
questionText: "What is $\frac{4}{5}$ as a decimal?", 
answerOptions: ("$0.8$", "$0.45$", "$0.75$", "$0.5$"),
correctAnswerIndex: 0 
)