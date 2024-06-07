#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[n-th Roots of Negative Numbers]
#v(40pt)
#only("1-")[What is $root(3, -27)$?]
#v(40pt)
#only("2-")[a) -3]
#v(10pt)
#only("3-")[b) 3]
#v(10pt) 
#only("4-")[c) -9]
#v(10pt)
#only("5-")[d) 9]
#only("1")[#voiceover("Let's test your knowledge on n-th roots of negative numbers. What is the cube root of negative 27?")]
#only("2")[#voiceover("Is it negative 3,")]
#only("3")[#voiceover("or is it positive 3,")]
#only("4")[#voiceover("or maybe negative 9,")]
#only("5")[#voiceover("or is it positive 9?")]
]#questionDef(
questionText: "What is $\\sqrt[3]{-27}$?", 
answerOptions: ("$-3$", "$3$", "$-9$", "$9$"),
correctAnswerIndex: 0,
)