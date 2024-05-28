#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]


#slide()[

#only("1")[
#voiceover("Betrachte die Betragsfunktion")
]

#text(size: 30pt, weight: "bold")[Kontinuitätsübung]
// Der Titel "Kontinuitätsübung" wird auf allen Folien angezeigt

#v(40pt)

#only("2-")[#text()[$ f(x) = |x| $]]
// Die Funktion f(x) wird ab Folie 2 angezeigt

#v(40pt)

#only("3-")[Ist $f(x)$ stetig bei $x = 0$? 🤔]
// Die Frage "Ist f(x) stetig bei x = 0?" wird ab Folie 3 angezeigt

#only("2")[
#voiceover("f von x ist gleich der Betrag von x.")
]

#only("3")[
#voiceover("Ist die Funktion f stetig bei x gleich null?")
]

]#questionDef(
questionText: "Ist die Funktion $f(x) = |x|$ stetig bei $x = 0$?",
answerOptions: ("Ja, $f(x)$ ist stetig bei $x = 0$.", "Nein, $f(x)$ ist nicht stetig bei $x = 0$."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)