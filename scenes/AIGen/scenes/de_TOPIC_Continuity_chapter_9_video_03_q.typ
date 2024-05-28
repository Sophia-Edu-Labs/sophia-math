#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[

#only("1")[
#voiceover("Betrachten wir die Funktion")
]

#text(size: 30pt, weight: "bold")[Stetigkeit]

#v(40pt)

#only("2-")[#text()[$ f(x) = x^3 - 3x + 2 $]]

#v(40pt)

#only("3-")[Ist $f(x)$ stetig bei $x = 1$? 🤔]

#only("2")[
#voiceover("f von x ist gleich x hoch drei minus drei x plus zwei.")
]

#only("3")[
#voiceover("Ist die Funktion f stetig bei x gleich eins?")
]

]#questionDef(
questionText: "Ist die Funktion $f(x) = x^3 - 3x + 2$ stetig bei $x = 1$?",
answerOptions: ("Ja, $f(x)$ ist stetig bei $x = 1$.", "Nein, $f(x)$ ist nicht stetig bei $x = 1$."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)