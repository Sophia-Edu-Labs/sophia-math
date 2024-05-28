#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Substitution Effect]
#v(40pt)
#only("1-")[What happens to the quantity demanded of good X due to the substitution effect if the price of good X decreases?]
#v(40pt)
#only("2-")[
- a) Increases 📈
- b) Decreases 📉
]
#only("1")[
#voiceover("Consider the following question: If the price of good X decreases, what happens to the quantity demanded of good X due to the substitution effect?")
]
#only("2")[
#voiceover("Is it: a) The quantity demanded increases, or b) The quantity demanded decreases?")
]
]#questionDef(
questionText: "If the price of good $X$ decreases, what happens to the quantity demanded of good $X$ due to the substitution effect?",
answerOptions: ("Increases", "Decreases"),
correctAnswerIndex: 0,
)