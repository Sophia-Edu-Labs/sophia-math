#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Converting Fractions to Decimals]
  #v(40pt)

  #only("1-")[What is $2/5$ as a decimal?]
  #v(20pt)

  #only("2-")[a) 0.25]
  #v(10pt)
  #only("3-")[b) 0.4]
  #v(10pt)
  #only("4-")[c) 0.5]
  #v(10pt)
  #only("5-")[d) 0.2]

  #only("1")[#voiceover("Let's practice converting fractions to decimals. Here's a question for you: What is two-fifths as a decimal?")]
  #only("2")[#voiceover("Is it zero point two five?")]
  #only("3")[#voiceover("Or is it zero point four?")]
  #only("4")[#voiceover("Maybe it's zero point five?")]
  #only("5")[#voiceover("Or could it be zero point two? Think about it carefully!")]
]

//Type: MC 
#questionDef( 
questionText: "What is $\frac{2}{5}$ as a decimal?", 
answerOptions: ("$0.25$", "$0.4$", "$0.5$", "$0.2$"),
correctAnswerIndex: 1 
)