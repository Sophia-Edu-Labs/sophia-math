#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Divergence to Infinity]
#v(40pt)
#only("1-")[Consider the sequence:]
#v(20pt)
#only("2-")[$ a_n = n^2 $]
#only("1")[
#voiceover("Consider the following sequence:")
]
#only("2")[
#voiceover("a sub n equals n squared.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Question 🤔]
#v(40pt)
#only("1-")[Does the sequence $ a_n = n^2 $ diverge to infinity as $ n → ∞ $? 🚀]
#only("1")[
#voiceover("Does the sequence a sub n equals n squared diverge to infinity as n approaches infinity?")
]
#v(20pt)
#only("2-")[Think about the behavior of $ n^2 $ as $ n $ gets larger and larger. 📈]
#only("2")[
#voiceover("Think about the behavior of n squared as n gets larger and larger.")
]
]#questionDef(
questionText: "Does the sequence $a_n = n^2$ diverge to infinity as $n \\to \infty$?",
answerOptions: ("Yes", "No"),
correctAnswerIndex: 0
)