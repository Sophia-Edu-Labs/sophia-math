#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[

#only("1")[
#voiceover("Lass uns die Funktion betrachten")
]

#text(size: 30pt, weight: "bold")[Stetige Erweiterbarkeit]

#v(40pt)

#only("2-")[#text()[$ f(x) = (x^2 - 1)/(x - 1) $]]

#v(40pt)

#only("3-")[Ist $f(x)$ stetig erweiterbar bei $x = 1$? 🤔]

#only("2")[
#voiceover("f von x ist gleich x Quadrat minus eins geteilt durch x minus eins.")
]

#only("3")[
#voiceover("Ist die Funktion f stetig erweiterbar bei x gleich eins?")
]

]#questionDef(
questionText: "Ist die Funktion $f(x) = \frac{x^2 - 1}{x - 1}$ stetig erweiterbar bei $x = 1$?",
answerOptions: ("Ja, $f(x)$ ist stetig erweiterbar bei $x = 1$.", "Nein, $f(x)$ ist nicht stetig erweiterbar bei $x = 1$."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)