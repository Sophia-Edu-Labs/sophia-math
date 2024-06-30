#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Converting Fractions to Decimals]
  #v(40pt)

  #only("1-")[Question: What is $11/20$ as a decimal?]
  #v(20pt)

  #only("2-")[Options:]
  #v(10pt)
  #only("3-")[a) $0.55$]
  #v(10pt)
  #only("4-")[b) $0.5$]
  #v(10pt)
  #only("5-")[c) $0.525$]
  #v(10pt)
  #only("6-")[d) $0.50$]

  #only("1")[#voiceover("Let's practice converting fractions to decimals. Here's our question: What is eleven twentieths as a decimal?")]
  #only("2")[#voiceover("We have four options to choose from.")]
  #only("3")[#voiceover("Is it zero point five five?")]
  #only("4")[#voiceover("Or is it simply zero point five?")]
  #only("5")[#voiceover("Maybe it's zero point five two five?")]
  #only("6")[#voiceover("Or could it be zero point five zero?")]
]

//Type: MC 
#questionDef( 
questionText: "What is $\frac{11}{20}$ as a decimal?", 
answerOptions: ("$0.55$", "$0.5$", "$0.525$", "$0.50$"),
correctAnswerIndex: 0 
)