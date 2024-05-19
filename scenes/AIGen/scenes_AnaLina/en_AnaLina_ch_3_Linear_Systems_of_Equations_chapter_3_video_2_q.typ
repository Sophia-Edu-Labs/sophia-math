#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Gaussian Algorithm]
#v(40pt)
#only("1-")[What is the first step in the Gaussian Algorithm?]
#v(40pt)
#only("2-")[a) Multiply rows by scalars]
#v(10pt)
#only("3-")[b) Add/subtract rows]
#v(10pt)
#only("4-")[c) Swap rows if necessary]
#v(10pt)
#only("5-")[d) Find the determinant]
#only("1")[#voiceover("Let's test your knowledge on the Gaussian Algorithm. What is the first step in this algorithm?")]
#only("2")[#voiceover("Is it to multiply rows by scalars,")]
#only("3")[#voiceover("or to add or subtract rows,")]
#only("4")[#voiceover("or maybe to swap rows if necessary,")]
#only("5")[#voiceover("or is it to find the determinant?")]
]#questionDef(
// use latex Notation instead of Typst Notation here
questionText: "What is the first step in the Gaussian Algorithm?",
answerOptions: ("Multiply rows by scalars", "Add/subtract rows", "Swap rows if necessary", "Find the determinant"),
correctAnswerIndex: 2,
)