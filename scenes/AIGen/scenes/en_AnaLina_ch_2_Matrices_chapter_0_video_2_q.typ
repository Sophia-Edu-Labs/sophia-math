#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[What is a Matrix? 🤔]
#v(40pt)
#only("1-")[What is the correct definition of a matrix?]
#v(40pt)
#only("2-")[a) A single number]
#v(10pt)
#only("3-")[b) A rectangular array of numbers]
#v(10pt)
#only("4-")[c) A set of equations]
#v(10pt)
#only("5-")[d) A graph]
#only("1")[#voiceover("Let's test your knowledge. What is the correct definition of a matrix?")]
#only("2")[#voiceover("Is it a single number,")]
#only("3")[#voiceover("or a rectangular array of numbers,")]
#only("4")[#voiceover("or a set of equations,")]
#only("5")[#voiceover("or is it a graph?")]
]#questionDef(
questionText: "What is the correct definition of a matrix?",
answerOptions: ("A single number", "A rectangular array of numbers", "A set of equations", "A graph"),
correctAnswerIndex: 1,
)