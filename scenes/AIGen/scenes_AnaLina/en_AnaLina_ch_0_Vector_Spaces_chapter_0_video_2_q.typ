#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Properties of a Vector Space]
#v(40pt)
#only("1-")[Which of the following is a property of a vector space?]
#v(40pt)
#only("2-")[a) Closure under addition]
#v(10pt)
#only("3-")[b) Closure under scalar multiplication]
#v(10pt)
#only("4-")[c) Existence of a zero vector]
#v(10pt)
#only("5-")[d) All of the above]
#only("1")[#voiceover("Let's test your knowledge on vector spaces. Which of the following is a property of a vector space?")]
#only("2")[#voiceover("Is it closure under addition,")]
#only("3")[#voiceover("or closure under scalar multiplication,")]
#only("4")[#voiceover("or the existence of a zero vector,")]
#only("5")[#voiceover("or are all of these properties of a vector space?")]
]#questionDef(
// use latex Notation instead of Typst Notation here
questionText: "Which of the following is a property of a vector space?", 
answerOptions: ("Closure under addition", "Closure under scalar multiplication", "Existence of a zero vector", "All of the above"),
correctAnswerIndex: 3,
)