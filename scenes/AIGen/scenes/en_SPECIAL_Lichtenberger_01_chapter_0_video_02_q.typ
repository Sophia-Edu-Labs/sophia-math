#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Suction Cup 🪠]
#v(40pt)
#only("1-")[A suction cup is pressed against the wall to hang a cloth on it. Why does the suction cup stick to the wall?]
#v(40pt)
#only("2-")[a) The vacuum inside sucks it to the wall.]
#v(10pt)
#only("3-")[b) The ambient pressure pushes the suction cup against the wall.]
#v(10pt) 
#only("4-")[c) The plastic adheres to the smooth wall surface.]
#only("1")[#voiceover("Let's test your understanding of suction cups. A suction cup is pressed against the wall to hang a cloth on it. Why does the suction cup stick to the wall?")]
#only("2")[#voiceover("Is it because the vacuum inside sucks it to the wall,")]  
#only("3")[#voiceover("or is it because the ambient pressure pushes the suction cup against the wall,")]
#only("4")[#voiceover("or maybe because the plastic adheres to the smooth wall surface?")]
]#questionDef(
questionText: "A suction cup is pressed against the wall to hang a cloth on it. Why does the suction cup stick to the wall?",
answerOptions: ("The vacuum inside sucks it to the wall.", "The ambient pressure pushes the suction cup against the wall.", "The plastic adheres to the smooth wall surface."),
correctAnswerIndex: 1,
)