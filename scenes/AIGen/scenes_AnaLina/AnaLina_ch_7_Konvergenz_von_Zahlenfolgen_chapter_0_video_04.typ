#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Zahlenfolgen 📜]
#v(40pt)

#only("1-")[- Geordnete Liste von Zahlen]
#v(20pt)
#only("2-")[- Bestimmt durch eine Regel]
#v(20pt)
#only("3-")[- Beispiel: $a_n = 2n+1$]

#only("1")[
#voiceover("Eine Zahlenfolge ist eine geordnete Liste von Zahlen.")
]
#only("2")[
#voiceover("Die Zahlen in der Folge werden durch eine bestimmte Regel festgelegt.")
]
#only("3")[
#voiceover("Zum Beispiel, die Zahlenfolge a sub n gleich 2n plus 1 ist eine Zahlenfolge, bei der jede Zahl durch die Formel 2n plus 1 bestimmt wird.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Konvergenz 🎯]
#v(40pt)

#only("1-")[- Annäherung an einen bestimmten Wert]
#v(20pt)
#only("2-")[- Beispiel: $a_n = 1/n$]

#only("1")[
#voiceover("Eine Zahlenfolge konvergiert, wenn sie sich einem bestimmten Wert annähert, wenn n gegen unendlich geht.")
]
#only("2")[
#voiceover("Zum Beispiel, die Zahlenfolge a sub n gleich 1 durch n konvergiert gegen 0, wenn n immer größer wird.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Bestimmte Divergenz 📈📉]
#v(40pt)

#only("1-")[- Gegen unendlich oder minus unendlich]
#v(20pt)
#only("2-")[- Beispiel: $a_n = n$]

#only("1")[
#voiceover("Eine Zahlenfolge divergiert bestimmt, wenn sie gegen unendlich oder minus unendlich geht, wenn n gegen unendlich geht.")
]
#only("2")[
#voiceover("Zum Beispiel, die Zahlenfolge a sub n gleich n divergiert bestimmt gegen unendlich, wenn n immer größer wird.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung 🎬]
#v(40pt)

#only("1-")[- Zahlenfolgen sind geordnete Listen von Zahlen, die durch eine Regel bestimmt werden.]
#v(20pt)
#only("2-")[- Konvergenz bedeutet Annäherung an einen bestimmten Wert.]
#v(20pt)
#only("3-")[- Bestimmte Divergenz bedeutet gegen unendlich oder minus unendlich gehen.]

#only("1")[
#voiceover("Zusammenfassend sind Zahlenfolgen geordnete Listen von Zahlen, die durch eine bestimmte Regel festgelegt werden.")
]
#only("2")[
#voiceover("Konvergenz einer Zahlenfolge bedeutet, dass sie sich einem bestimmten Wert annähert, wenn n gegen unendlich geht.")
]
#only("3")[
#voiceover("Bestimmte Divergenz einer Zahlenfolge bedeutet, dass sie gegen unendlich oder minus unendlich geht, wenn n gegen unendlich geht.")
]
]