#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Hicks vs Slutsky Zerlegung 🤔]
#v(40pt)
#only("1-")[Was ist ein wesentlicher Unterschied zwischen der Hicks- und der Slutsky-Zerlegung?]
#only("1")[
#voiceover("Lass uns den Unterschied zwischen der Hicks- und der Slutsky-Zerlegung betrachten.")
]
#only("2")[
#voiceover("Was ist ein wesentlicher Unterschied zwischen diesen beiden Zerlegungen?")
]
]#questionDef(
questionText: "Was ist ein wesentlicher Unterschied zwischen der Hicks- und der Slutsky-Zerlegung?",
answerOptions: ("Die Hicks-Zerlegung hält den $Nutzen$ konstant, während die Slutsky-Zerlegung das $reale\ Einkommen$ konstant hält.", "Die Antwort ist falsch."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)