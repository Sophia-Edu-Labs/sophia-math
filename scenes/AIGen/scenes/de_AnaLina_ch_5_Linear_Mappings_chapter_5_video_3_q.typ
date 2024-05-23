#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Dimensionsformel Übung]
#v(40pt)
#only("1-")[Gegeben eine lineare Abbildung $T: R^4 -> R^3$ mit $"dim"("ker"(T)) = 2$.]
#v(20pt)
#only("2-")[Finde $"dim"("im"(T))$ und erkläre die Beziehung. 🤔]

#only("1")[
#voiceover("Betrachten Sie eine lineare Abbildung T von R 4 nach R 3, wobei die Dimension des Kerns von T 2 ist.")
]
#only("2")[
#voiceover("Ihre Aufgabe ist es, die Dimension des Bildes von T zu finden und die Beziehung zwischen den Dimensionen des Kerns, des Bildes und des Definitionsbereichs zu erklären.")
]
]#questionDef(
questionText: "Gegeben eine lineare Abbildung $T: \mathbb{R}^4 \\to \mathbb{R}^3$ mit $\dim(\ker(T)) = 2$, finde $\dim(\operatorname{im}(T))$ und erkläre die Beziehung.",
answerOptions: ("Die Dimension des Bildes ist 2. Die Beziehung ist, dass die Summe der Dimensionen des Kerns und des Bildes der Dimension des Definitionsbereichs entspricht, d.h. $\dim(\mathbb{R}^4) = \dim(\ker(T)) + \dim(\operatorname{im}(T))$.", "Die Antwort ist falsch."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)