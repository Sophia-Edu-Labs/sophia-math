#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Konvergenz von Zahlenfolgen 📈]
#v(40pt)
#only("1-")[- Zahlenfolge nähert sich einem Wert, wenn $n$ gegen $∞$ geht]
#only("2-")[- Beispiel: $a_n = 1/n$ konvergiert gegen 0]
#only("1")[
#voiceover("Eine Zahlenfolge konvergiert, wenn sie sich einem bestimmten Wert nähert, wenn n gegen unendlich geht.")
]
#only("2")[
#voiceover("Zum Beispiel, die Zahlenfolge a_n gleich 1 durch n konvergiert gegen 0, wenn n gegen unendlich geht.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Bestimmte Divergenz 📉]
#v(40pt)
#only("1-")[- Zahlenfolge geht gegen $∞$ oder $-∞$, wenn $n$ gegen $∞$ geht]
#only("2-")[- Beispiel: $a_n = n$ divergiert bestimmt gegen $∞$]
#only("1")[
#voiceover("Andererseits divergiert eine Zahlenfolge bestimmt, wenn sie gegen unendlich oder minus unendlich geht, wenn n gegen unendlich geht.")
]
#only("2")[
#voiceover("Zum Beispiel, die Zahlenfolge a_n gleich n divergiert bestimmt gegen unendlich, wenn n gegen unendlich geht.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Konvergenzkriterien ✅]
#v(40pt)
#only("1-")[- Verschiedene Kriterien zur Bestimmung der Konvergenz]
#only("2-")[- Epsilon-Kriterium oft verwendet]
#only("3-")[- Beispiel: $a_n = 1/n$ erfüllt Epsilon-Kriterium für $ε = 0.01$]
#only("1")[
#voiceover("Es gibt verschiedene Kriterien, um die Konvergenz einer Zahlenfolge zu bestimmen.")
]
#only("2")[
#voiceover("Ein häufig verwendetes Kriterium ist das Epsilon-Kriterium.")
]
#only("3")[
#voiceover("Zum Beispiel, die Zahlenfolge a_n gleich 1 durch n erfüllt das Epsilon-Kriterium für Epsilon gleich 0.01.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung 🎯]
#v(40pt)
#only("1-")[- Konvergenz: Zahlenfolge nähert sich bestimmtem Wert]
#only("2-")[- Bestimmte Divergenz: Zahlenfolge geht gegen $∞$ oder $-∞$]
#only("3-")[- Konvergenzkriterien zur Bestimmung der Konvergenz]
#only("1")[
#voiceover("Zusammenfassend, eine Zahlenfolge konvergiert, wenn sie sich einem bestimmten Wert nähert, wenn n gegen unendlich geht.")
]
#only("2")[
#voiceover("Sie divergiert bestimmt, wenn sie gegen unendlich oder minus unendlich geht.")
]
#only("3")[
#voiceover("Und es gibt verschiedene Konvergenzkriterien, wie das Epsilon-Kriterium, um die Konvergenz einer Zahlenfolge zu bestimmen.")
]
]