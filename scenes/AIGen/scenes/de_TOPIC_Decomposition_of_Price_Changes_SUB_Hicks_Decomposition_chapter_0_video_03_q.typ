#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Hicks-Zerlegung]
#v(40pt)
#only("1-")[
Wenn der Preis eines Gutes steigt, isoliert die Hicks-Zerlegung die Effekte in einer bestimmten Reihenfolge. 🤔
]
#v(20pt)
#only("2-")[
Welcher Effekt wird zuerst isoliert? 
]
#v(20pt)
#only("3-")[

]
#only("1")[
#voiceover("Wenn der Preis eines Gutes steigt, isoliert die Hicks-Zerlegung die Effekte in einer bestimmten Reihenfolge.")
]
#only("2")[
#voiceover("Welcher Effekt wird zuerst isoliert?")
]
#only("3")[
#voiceover("Ist es der Substitutionseffekt oder der Einkommenseffekt? Denk darüber nach und wähle Deine Antwort.")
]
]

#questionDef(
questionText: "Wenn der Preis des Gutes $X$ steigt, welcher Effekt wird durch die Hicks-Zerlegung zuerst isoliert?",
answerOptions: ("Substitutionseffekt", "Einkommenseffekt"),
correctAnswerIndex: 0,
)