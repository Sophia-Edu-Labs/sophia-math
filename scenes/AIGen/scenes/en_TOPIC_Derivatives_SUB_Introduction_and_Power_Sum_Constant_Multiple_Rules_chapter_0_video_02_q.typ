#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Rate of Change]
  #v(40pt)

  #only("1-")[What does a derivative represent?]
  #v(20pt)

  #only("2-")[a) The area under a curve 📊]
  #v(10pt)
  #only("3-")[b) The rate of change 📈]
  #v(10pt)
  #only("4-")[c) The maximum value 🔝]
  #v(10pt)
  #only("5-")[d) The minimum value 🔻]

  #only("1")[
    #voiceover("Let's test your understanding of derivatives. What does a derivative represent?")
  ]
  #only("2")[
    #voiceover("Is it the area under a curve,")
  ]
  #only("3")[
    #voiceover("or the rate of change,")
  ]
  #only("4")[
    #voiceover("or perhaps the maximum value,")
  ]
  #only("5")[
    #voiceover("or maybe the minimum value?")
  ]
]

//Type: MC 
#questionDef( 
questionText: "What does a derivative represent?", 
answerOptions: ("The area under a curve", "The rate of change", "The maximum value", "The minimum value"),
correctAnswerIndex: 1 
)