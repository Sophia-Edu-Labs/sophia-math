#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Matrix Definition]
  #v(40pt)

  #only("1-")[What is a matrix? 🤔]
  #v(20pt)

  #only("2-")[a) A single number 🔢]
  #v(10pt)
  #only("3-")[b) A row of numbers ➡️]
  #v(10pt)
  #only("4-")[c) A rectangular array of numbers 📊]
  #v(10pt)
  #only("5-")[d) None of the above ❌]

  #only("1")[
    #voiceover("Let's test your understanding of matrices. What exactly is a matrix?")
  ]
  #only("2")[
    #voiceover("Is it simply a single number,")
  ]
  #only("3")[
    #voiceover("or perhaps just a row of numbers,")
  ]
  #only("4")[
    #voiceover("or is it a rectangular array of numbers,")
  ]
  #only("5")[
    #voiceover("or could it be none of these options?")
  ]
]

//Type: MC 
#questionDef( 
questionText: "What is a matrix?", 
answerOptions: ("A single number", "A row of numbers", "A rectangular array of numbers", "None of the above"),
correctAnswerIndex: 2 
)