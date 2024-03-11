#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide(max-repetitions: 20)[
#text(size: 28pt, weight: "bold")[#align(center)[Vierfeldertafel Beispiel]]
#v(40pt)
#only("1-")[
#text(weight: "bold")[Radfahren oder Wandern?]
]
#v(40pt)
#only("2")[
#align(center)[
#table(
fill: (col, row) => if false {blue } else { white },
columns: (auto, auto, auto, auto),
inset: 10pt,
align: horizon,
[], [Rad ↑], [Rad ↓], [],
[Wandern ↑],
[$ ? $],
[$ ? $],
[$ ? $],
[Wandern ↓],
[$ ? $],
[$ ? $],
[$ ? $],
[],
[$ ? $],
[$ ? $],
[$ 500 $]
)
]
]
#only("3")[
#align(center)[
#table(
fill: (col, row) => if (row==3 and col==1) {blue } else { white },
columns: (auto, auto, auto, auto),
inset: 10pt,
align: horizon,
[], [Rad ↑], [Rad ↓], [],
[Wandern ↑],
[$ ? $],
[$ ? $],
[$ ? $],
[Wandern ↓],
[$ ? $],
[$ ? $],
[$ ? $],
[],
[$ 300 $],
[$ ?  $],
[$ 500 $]
)
]
]
#only("4")[
#align(center)[
#table(
fill: (col, row) => if (row==1 and col==3) {blue } else { white },
columns: (auto, auto, auto, auto),
inset: 10pt,
align: horizon,
[], [Rad ↑], [Rad ↓], [],
[Wandern ↑],
[$ ? $],
[$ ? $],
[$ 400 $],
[Wandern ↓],
[$ ? $],
[$ ? $],
[$ ? $],
[],
[$ 300 $],
[$ ?  $],
[$ 500 $]
)
]
]
#only("5")[
#align(center)[
#table(
fill: (col, row) => if (row==1 and col==1) {blue } else { white },
columns: (auto, auto, auto, auto),
inset: 10pt,
align: horizon,
[], [Rad ↑], [Rad ↓], [],
[Wandern ↑],
[$ 200 $],
[$ ? $],
[$ 400 $],
[Wandern ↓],
[$ ? $],
[$ ? $],
[$ ? $],
[],
[$ 300 $],
[$ ?  $],
[$ 500 $]
)
]
]
#only("6")[
#align(center)[
#table(
fill: (col, row) => if (row==1 and col==2) {blue } else { white },
columns: (auto, auto, auto, auto),
inset: 10pt,
align: horizon,
[], [Rad ↑], [Rad ↓], [],
[Wandern ↑],
[$ 200 $],
[$ ? $],
[$ 400 $],
[Wandern ↓],
[$ ? $],
[$ ? $],
[$ ? $],
[],
[$ 300 $],
[$ ?  $],
[$ 500 $]
)
]
]
#only("7")[
#align(center)[
#table(
fill: (col, row) => if (row==1 and col==2) {blue } else { white },
columns: (auto, auto, auto, auto),
inset: 10pt,
align: horizon,
[], [Rad ↑], [Rad ↓], [],
[Wandern ↑],

[$ 200 $],
[$ 200 $],
[$ 400 $],
[Wandern ↓],
[$ ? $],
[$ ? $],
[$ ? $],
[],
[$ 300 $],
[$ ?  $],

[$ 500 $]
)
]
]
#only("8")[
#align(center)[
#table(
fill: (col, row) => if (row==2 and col==1) {blue } else { white },
columns: (auto, auto, auto, auto),
inset: 10pt,
align: horizon,
[], [Rad ↑], [Rad ↓], [],
[Wandern ↑],
[$ 200 $],
[$ 200 $],
[$ 400 $],
[Wandern ↓],

[$ ? $],
[$ ? $],
[$ ? $],
[],
[$ 300 $],
[$ ?  $],
[$ 500 $]
)
]
]
#only("9")[

#align(center)[
#table(
fill: (col, row) => if (row==2 and col==1) {blue } else { white },
columns: (auto, auto, auto, auto),
inset: 10pt,
align: horizon,
[], [Rad ↑], [Rad ↓], [],
[Wandern ↑],
[$ 200 $],
[$ 200 $],
[$ 400 $],
[Wandern ↓],
[$ 100 $],
[$ ? $],

[$ ? $],
[],
[$ 300 $],
[$ ?  $],
[$ 500 $]
)
]
]
#only("10")[
#align(center)[
#table(
fill: (col, row) => if (row==2 and col==2) {blue } else { white },
columns: (auto, auto, auto, auto),
inset: 10pt,
align: horizon,

[], [Rad ↑], [Rad ↓], [],
[Wandern ↑],
[$ 200 $],
[$ 200 $],
[$ 400 $],
[Wandern ↓],
[$ 100 $],
[$ ? $],
[$ ? $],
[],
[$ 300 $],
[$ ?  $],
[$ 500 $]

)
]
]
#only("11")[

#align(center)[
#table(
fill: (col, row) => if (row==2 and col==2) {blue } else { white },

columns: (auto, auto, auto, auto),
inset: 10pt,
align: horizon,
[], [Rad ↑], [Rad ↓], [],
[Wandern ↑],
[$ 200 $],
[$ 200 $],
[$ 400 $],
[Wandern ↓],
[$ 100 $],

[$ ? $],
[$ ? $],
[],
[$ 300 $],
[$ 200 $],
[$ 500 $]

)
]
]
#only("12")[
#align(center)[
#table(
fill: (col, row) => if (row==2 and col==2) {blue } else { white },
columns: (auto, auto, auto, auto),
inset: 10pt,
align: horizon,
[], [Rad ↑], [Rad ↓], [],
[Wandern ↑],
[$ 200 $],
[$ 200 $],
[$ 400 $],
[Wandern ↓],
[$ 100 $],
[$ 0 $],
[$ ? $],
[],
[$ 300 $],
[$ 200 $],
[$ 500 $]
)
]
]
#only("13")[
#align(center)[
#table(

fill: (col, row) => if (row==2 and col==2) {blue } else { white },
columns: (auto, auto, auto, auto),
inset: 10pt,
align: horizon,

[], [Rad ↑], [Rad ↓], [],
[Wandern ↑],
[$ 200 $],
[$ 200 $],
[$ 400 $],
[Wandern ↓],
[$ 100 $],
[$ 0 $],
[$ 100 $],
[],
[$ 300 $],
[$ 200 $],
[$ 500 $]
)
]
]
#only("14")[

#align(center)[
#table(
fill: (col, row) => if (row==2 and col==2) {green } else { white },
columns: (auto, auto, auto, auto),
inset: 10pt,
align: horizon,
[], [Rad ↑], [Rad ↓], [],
[Wandern ↑],
[$ 200 $],
[$ 200 $],

[$ 400 $],
[Wandern ↓],
[$ 100 $],
[$ 0 $],
[$ 100 $],
[],
[$ 300 $],
[$ 200 $],
[$ 500 $]
)
]

]
#v(40pt)
#only("1")[
#voiceover("Das ist leider falsch... Betrachten wir die Vierfeldertafel ...")
]
#only("2")[
#voiceover("Da das Dorf fünfhundert Einwohner hat, tragen wir diese Zahl in die untere rechte Ecke ein.")
]
#only("3")[

#voiceover("Wir wissen auch, dass dreihundert Einwohner Radfahren mögen. Diese Zahl notieren wir in der unteren Zeile der Radfahren-Spalte.")
]
#only("4")[
#voiceover("Und es ist bekannt, dass vierhundert Einwohner Wandern genießen. Das schreiben wir in die rechte Spalte der Wandern-Zeile.")

]
#only("5")[
#voiceover("Zuletzt haben wir die Information, dass zweihundert Einwohner sowohl Radfahren als auch Wandern mögen. Diese Zahl kommt in die obere linke Ecke. Jetzt müssen wir die restlichen Felder herleiten.")
]
#only("6")[
#voiceover("Beginnen wir mit den Einwohnern, die Wandern, aber nicht Radfahren mögen. Insgesamt mögen vierhundert Einwohner Wandern, und von diesen mögen zweihundert auch Radfahren. Folglich ...")
]
#only("7")[

#voiceover("... mögen zweihundert Einwohner nur Wandern und nicht Radfahren. Diese Zahl tragen wir im oberen rechten Feld ein.")
]
#only("8")[
#voiceover("Als nächstes überlegen wir, wie viele Einwohner Radfahren, aber nicht Wandern mögen. Dreihundert Einwohner mögen insgesamt Radfahren, und zweihundert davon genießen auch Wandern, also ...")
]
#only("9")[
#voiceover("... bleiben einhundert Einwohner übrig, die ausschließlich Radfahren mögen. Diese Zahl kommt ins untere linke Feld.")
]
#only("10")[
#voiceover("Schließlich müssen wir noch das untere rechte Feld bestimmen. Dazu summieren wir zunächst die Zeilen auf, um ...")
]
#only("11")[
#voiceover("... zweihundert als Zeilensumme zu erhalten. Es bleibt also noch das letzte Feld zu berechnen, und das geht ganz einfach: Von den fünfhundert Einwohnern haben wir schon fünfhundert auf die anderen Felder verteilt. Es bleiben also ...")
]
#only("12")[
#voiceover("... null Einwohner für das letzte Feld. Als Kontrolle können wir noch die Spalten aufsummieren, um ...")
]
#only("13")[

#voiceover("... die letzten beiden Felder auszufüllen. Damit ist die Vierfeldertafel vollständig. Wir können jetzt ablesen, wie viele Einwohner weder Radfahren noch Wandern mögen:")
]
#only("14")[
#voiceover("Das sind null Einwohner, wie wir dem unteren rechten Feld entnehmen können. Die gesuchte Antwort lautet also: 0!")
]
]