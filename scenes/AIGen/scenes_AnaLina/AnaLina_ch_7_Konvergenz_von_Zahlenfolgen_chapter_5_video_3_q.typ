#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Grenzwert]
#v(40pt)
#only("1-")[
- Betrachte die Zahlenfolge $a_n = (-1)^n$
]
#v(20pt)
#only("2-")[
- Beispielwerte:
  - $a_1 = (-1)^1 = -1$
  - $a_2 = (-1)^2 = 1$
  - $a_3 = (-1)^3 = -1$
  - $a_4 = (-1)^4 = 1$
  - ...
]
#v(20pt)
#only("3-")[
❓ Bestimmt diese Zahlenfolge einen Grenzwert?
]

#only("1")[
#voiceover("Betrachten wir die Zahlenfolge a_n gleich minus eins hoch n.")
]
#only("2")[
#voiceover("Einige Beispielwerte sind: a_1 gleich minus eins, a_2 gleich eins, a_3 gleich minus eins, a_4 gleich eins, und so weiter.")
]
#only("3")[
#voiceover("Die Frage ist nun: Bestimmt diese Zahlenfolge einen Grenzwert?")
]
]#questionDef(
questionText: "Bestimmt die Zahlenfolge $a_n = (-1)^n$ einen Grenzwert?",
answerOptions: ("Ja", "Nein"),
correctAnswerIndex: 1,
)