#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[

#text(size: 30pt, weight: "bold")[Hicks vs. Slutsky Zerlegung]
// Der Titel "Hicks vs. Slutsky Zerlegung" wird auf allen Folien angezeigt

#v(40pt)

#only("1-")[Die Hicks-Zerlegung hält den Nutzen konstant, während die Slutsky-Zerlegung das reale Einkommen konstant hält. 🎓]
// Der Unterschied zwischen Hicks- und Slutsky-Zerlegung wird ab Folie 1 angezeigt

#v(40pt)

#only("2-")[In welchem Szenario könnte die Hicks-Zerlegung angemessener sein als die Slutsky-Zerlegung? 🤔]
// Die Frage wird ab Folie 2 angezeigt

#only("1")[
#voiceover("Die Hicks-Zerlegung hält den Nutzen konstant, während die Slutsky-Zerlegung das reale Einkommen konstant hält.")
]

#only("2")[
#voiceover("In welchem Szenario könnte die Hicks-Zerlegung angemessener sein als die Slutsky-Zerlegung?")
]

]#questionDef(
questionText: "In welchem Szenario könnte die Hicks-Zerlegung angemessener sein als die Slutsky-Zerlegung?",
answerOptions: ("Wenn die Auswirkung einer Preisänderung auf die Wahl eines Konsumenten analysiert wird, während dessen Zufriedenheitsniveau (Nutzen) konstant bleibt.", "Die Antwort ist falsch."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)