#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[

#text(size: 30pt, weight: "bold")[Substitutionseffekt]
// Der Titel "Substitutionseffekt" wird auf allen Folien angezeigt

#v(40pt)

#only("1-")[- Tritt auf, wenn eine Preisänderung ein Gut relativ billiger oder teurer macht 💰]
// Der Aufzählungspunkt wird ab Folie 1 angezeigt

#v(40pt)

#only("2-")[- Führt zu einer Änderung im Konsum 🛒]
// Der zweite Aufzählungspunkt wird ab Folie 2 angezeigt

#v(40pt)

#only("3-")[Beschreibe den Substitutionseffekt kurz in deinen eigenen Worten.]
// Die Frage wird auf Folie 3 angezeigt

#only("1")[
#voiceover("Der Substitutionseffekt tritt auf, wenn eine Preisänderung ein Gut im Vergleich zu anderen Gütern relativ billiger oder teurer macht.")
]

#only("2")[
#voiceover("Diese Änderung der relativen Preise führt zu einer Änderung im Konsum des Gutes.")
]

#only("3")[
#voiceover("Kannst du nun den Substitutionseffekt kurz in deinen eigenen Worten beschreiben?")
]

]#questionDef(
questionText: "Beschreibe den Substitutionseffekt kurz in deinen eigenen Worten.",
answerOptions: ("Der Substitutionseffekt ist die Änderung im Konsum eines Gutes, die sich aus einer Änderung seines Preises im Verhältnis zu anderen Gütern ergibt, wobei der Nutzen konstant bleibt.", "Die Antwort beschreibt den Substitutionseffekt nicht korrekt."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)