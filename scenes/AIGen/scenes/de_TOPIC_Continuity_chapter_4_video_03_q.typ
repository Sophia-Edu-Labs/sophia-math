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

#text(size: 30pt, weight: "bold")[Stetigkeit der Funktion]

#v(40pt)

#only("2-")[#text()[$ f(x) = 1/x $]]

#v(40pt)

#only("3-")[Ist $f(x)$ stetig bei $x = 1$? 🤔]

#only("2")[
#voiceover("f von x ist gleich eins durch x.")
]

#only("3")[
#voiceover("Ist die Funktion f stetig bei x gleich eins?")
]

]#questionDef(
  questionText: "Ist die Funktion $f(x) = \frac{1}{x}$ stetig bei $x = 1$?",
  answerOptions: ("Ja, $f(x)$ ist stetig bei $x = 1$, weil $\lim_{x \to 1} \frac{1}{x} = \frac{1}{1} = 1$ und $f(1) = 1$, oder eine gleichwertige Aussage.", "Nein, $f(x)$ ist nicht stetig bei $x = 1$, oder die Antwort ist falsch."),
  correctAnswerIndex: 0,
  llmCheckDetails: (
    fallbackOptionIndex: 1
  ),
)