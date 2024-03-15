#import "../sophiatheme.typ": *
//apply theme (and default setup) ⚀⚁⚂⚃⚄⚅
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#text(size: 30pt, weight: "bold")[Additionssatz]
#v(40pt)
#only("1-")[Würfel mit Augenzahlen ⚀ bis ⚅]
#v(20pt)
#only("2-")[#text(weight: "bold")[Definiere Ereignisse:]]
#v(10pt)
#only("3-")[
- A: Zahl gerade
]
#only("4-")[
- B: Zahl größer als 3
]
#v(20pt)
#only("5-")[Berechne $P(A union B)$ mit dem #text(weight: "bold")[Additionssatz der Wahrscheinlichkeit]]
#only("1")[
#voiceover("Betrachte einen fairen Würfel mit den Augenzahlen 1 bis 6.")
]
#only("2")[
#voiceover("Definiere nun die folgenden zwei  Ereignisse")
]
#only("3")[
#voiceover("Ereignis A ist, dass die gewürfelte Zahl gerade ist.")
]
#only("4")[
#voiceover("Und Ereignis B ist, dass die gewürfelte Zahl größer als 3 ist.")
]
#only("5")[
#voiceover("Berechne mit Hilfe des Additionssatzes der Wahrscheinlichkeit die Wahrscheinlichkeit für die Vereinigung von A und B, also die Wahrscheinlichkeit, dass entweder A oder B oder beide eintreten.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Vorgehen]
#v(40pt)
#only("1-")[- Bestimme die Wahrscheinlichkeiten für die Einzelereignisse A und B]
#v(20pt)
#only("2-")[- Überlege, welche Augenzahlen sowohl zu A als auch zu B gehören]
#v(20pt)
#only("3-")[- Setze in Additionssatz ein]
#only("3-")[
$ P(A union B) = P(A) + P(B) - P(A sect B) $
]
#only("1")[
#voiceover("Bestimme dafür zunächst die Wahrscheinlichkeiten für die Einzelereignisse A und B.")
]
#only("2")[
#voiceover("Überlege dann, welche Augenzahlen sowohl gerade als auch größer als 3 sind, um die Wahrscheinlichkeit für den Schnitt von A und B zu berechnen.")
]
#only("3")[
#voiceover("Setze schließlich alle Werte in die Formel für den Additionssatz ein und berechne so die gesuchte Wahrscheinlichkeit.")
]
]

#questionDef(
  questionText: "Was ist $P(A\cup B)$?",
  // use latex!
  answerOptions: ("$\\frac{2}{3}$", "$0$"),
  correctAnswerIndex: 0,
  freeTextDetail: (
    fallbackOptionIndex: 1,
    answerOptionsEquality: (
      a: (
        roundingDecimalPlaces: 2,
        tolerance: none
        )
      ),
      answerOptionMatcher:("$\\key{a}$")
  ),
)