#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Math in Stock Trading 📈]
#v(40pt)
#only("1-")[Which mathematical concept is #text(weight: "bold")[NOT] commonly used in stock trading?]
#v(40pt)
#only("2-")[a) Probability 🎲]
#v(10pt)
#only("3-")[b) Algebra ➗]
#v(10pt)
#only("4-")[c) Calculus ∫]
#v(10pt)
#only("5-")[d) Typography 🔤]

#only("1")[#voiceover("Let's test your knowledge about the use of mathematics in stock trading. Which of the following mathematical concepts is NOT commonly used in stock trading?")]
#only("2")[#voiceover("Is it probability,")]
#only("3")[#voiceover("or algebra,")]
#only("4")[#voiceover("or calculus,")]
#only("5")[#voiceover("or is it typography?")]
]#questionDef(
questionText: "Which mathematical concept is NOT commonly used in stock trading?",
answerOptions: ("Probability", "Algebra", "Calculus", "Typography"),
correctAnswerIndex: 3
)