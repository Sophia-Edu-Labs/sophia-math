#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Vector Space Properties 🌠]
#v(40pt)
#only("1-")[Which of the following is #text(weight: "bold")[not necessarily] a property of a vector space?]
#v(40pt)
#only("2-")[a) Associativity of addition ➕]
#v(10pt)
#only("3-")[b) Commutativity of multiplication 🔄]
#v(10pt)
#only("4-")[c) Distributivity of scalar multiplication over vector addition 🧮]
#v(10pt)
#only("5-")[d) Existence of additive inverses ➖]
#only("1")[#voiceover("Let's test your knowledge on vector space properties. Which of the following is not necessarily a property of a vector space?")]
#only("2")[#voiceover("Is it associativity of addition,")]
#only("3")[#voiceover("or commutativity of multiplication,")]
#only("4")[#voiceover("or distributivity of scalar multiplication over vector addition,")]
#only("5")[#voiceover("or the existence of additive inverses?")]
]#questionDef(
questionText: "Which of the following is not necessarily a property of a vector space?",
answerOptions: ("Associativity of addition", "Commutativity of multiplication", "Distributivity of scalar multiplication over vector addition", "Existence of additive inverses"),
correctAnswerIndex: 1
)