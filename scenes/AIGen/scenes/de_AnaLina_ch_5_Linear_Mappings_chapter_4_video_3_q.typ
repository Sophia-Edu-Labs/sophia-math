#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Dimensionsformel]
#v(40pt)
#only("1-")[
- Für eine lineare Abbildung $T: V \\to W$
]
#v(20pt)
#only("2-")[
- $"dim"(V) = "dim"("ker"(T)) + "dim"("im"(T))$
]
#v(40pt)
#only("3-")[
Gegeben:
- $T: R^3 arrow R^2$
- $"dim"("ker"(T)) = 1$
]
#v(40pt)
#only("4-")[
Finde:
- $"dim"("im"(T)) = ?$
]

#only("1")[
#voiceover("Betrachten Sie die Dimensionsformel für eine lineare Abbildung T von V nach W.")
]
#only("2")[
#voiceover("Sie besagt, dass die Dimension von V gleich der Dimension des Kerns von T plus der Dimension des Bildes von T ist.")
]
#only("3")[
#voiceover("Schauen wir uns nun die gegebenen Informationen an. Wir haben eine lineare Abbildung T von R 3 nach R 2, und die Dimension des Kerns von T ist 1.")
]
#only("4")[
#voiceover("Ihre Aufgabe ist es, die Dimension des Bildes von T zu finden.")
]
]

#questionDef(
questionText: "Was ist $\dim(\mathrm{im}(T))$?",
answerOptions: ("1", "2", "3"),
correctAnswerIndex: 1,
)