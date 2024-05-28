#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Rechtsseitiger Grenzwert]
// Der Titel "Rechtsseitiger Grenzwert" wird auf allen Folien angezeigt
#v(40pt)
#only("2-")[Betrachte die Funktion:]
// "Betrachte die Funktion:" wird ab Folie 2 angezeigt
#v(20pt)
#only("3-")[#text()[$ f(x) = 1/x $]]
// Die Funktion f(x) wird ab Folie 3 angezeigt
#v(40pt)
#only("4-")[Finde den rechtsseitigen Grenzwert, wenn $x$ gegen 0 geht 👉]
// Die Frage "Finde den rechtsseitigen Grenzwert, wenn x gegen 0 geht" wird ab Folie 4 angezeigt

#only("1")[
#voiceover("Lass uns üben, einen rechtsseitigen Grenzwert zu finden.")
]
#only("2")[
#voiceover("Betrachte die Funktion")
]
#only("3")[
#voiceover("f von x ist gleich eins durch x.")
]
#only("4")[
#voiceover("Finde den rechtsseitigen Grenzwert, wenn x gegen null geht.")
]
]#questionDef(
questionText: "Was ist der rechtsseitige Grenzwert von $f(x) = \frac{1}{x}$, wenn $x$ gegen $0$ geht?",
answerOptions: ("Der rechtsseitige Grenzwert von $f(x) = \frac{1}{x}$, wenn $x$ gegen $0$ geht, ist $\infty$, oder eine gleichwertige Aussage.", "Die Antwort ist falsch."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)