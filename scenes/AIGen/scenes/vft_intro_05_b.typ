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
#text(weight: "bold")[Kaffee oder Tee?]
]
#v(40pt)
#only("2")[
#align(center)[
#table(
fill: (col, row) => if false {red } else { white },
columns: (auto, auto, auto, auto),
inset: 10pt,
align: horizon,
[], [Kaffee ↑], [Kaffee ↓], [],
[Tee ↑],
[$ ? $],
[$ ? $],
[$ ? $],
[Tee ↓],
[$ ? $],
[$ ? $],
[$ ? $],
[],
[$ ? $],
[$ ? $],
[$ 200 $]
)
]
]
#only("3")[
#align(center)[
#table(
fill: (col, row) => if (row==3 and col==1) {red } else { white },
columns: (auto, auto, auto, auto),
inset: 10pt,
align: horizon,
[], [Kaffee ↑], [Kaffee ↓], [],
[Tee ↑],
[$ ? $],
[$ ? $],
[$ ? $],
[Tee ↓],
[$ ? $],
[$ ? $],
[$ ? $],
[],
[$ 120 $],
[$ ?  $],
[$ 200 $]
)
]
]
#only("4")[
#align(center)[
#table(
fill: (col, row) => if (row==1 and col==3) {red } else { white },
columns: (auto, auto, auto, auto),
inset: 10pt,
align: horizon,
[], [Kaffee ↑], [Kaffee ↓], [],
[Tee ↑],

[$ ? $],
[$ ? $],
[$ 150 $],
[Tee ↓],
[$ ? $],
[$ ? $],
[$ ? $],
[],
[$ 120 $],
[$ ?  $],
[$ 200 $]
)
]
]
#only("5")[
#align(center)[
#table(
fill: (col, row) => if (row==1 and col==1) {red } else { white },
columns: (auto, auto, auto, auto),
inset: 10pt,
align: horizon,
[], [Kaffee ↑], [Kaffee ↓], [],
[Tee ↑],
[$ 90 $],
[$ ? $],
[$ 150 $],
[Tee ↓],

[$ ? $],
[$ ? $],
[$ ? $],
[],
[$ 120 $],
[$ ?  $],
[$ 200 $]
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
[], [Kaffee ↑], [Kaffee ↓], [],
[Tee ↑],
[$ 90 $],
[$ ? $],
[$ 150 $],
[Tee ↓],
[$ ? $],
[$ ? $],
[$ ? $],
[],
[$ 120 $],
[$ ?  $],
[$ 200 $]
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
[], [Kaffee ↑], [Kaffee ↓], [],
[Tee ↑],
[$ 90 $],
[$ 60 $],
[$ 150 $],

[Tee ↓],
[$ ? $],
[$ ? $],
[$ ? $],
[],
[$ 120 $],

[$ ?  $],
[$ 200 $]
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
[], [Kaffee ↑], [Kaffee ↓], [],
[Tee ↑],
[$ 90 $],
[$ 60 $],
[$ 150 $],
[Tee ↓],
[$ ? $],
[$ ? $],
[$ ? $],
[],
[$ 120 $],
[$ ?  $],
[$ 200 $]
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
[], [Kaffee ↑], [Kaffee ↓], [],
[Tee ↑],
[$ 90 $],
[$ 60 $],
[$ 150 $],
[Tee ↓],
[$ 30 $],
[$ ? $],
[$ ? $],
[],

[$ 120 $],
[$ ?  $],
[$ 200 $]
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
[], [Kaffee ↑], [Kaffee ↓], [],
[Tee ↑],
[$ 90 $],

[$ 60 $],
[$ 150 $],
[Tee ↓],
[$ 30 $],
[$ ? $],
[$ ? $],
[],
[$ 120 $],
[$ ?  $],
[$ 200 $]

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
[], [Kaffee ↑], [Kaffee ↓], [],
[Tee ↑],
[$ 90 $],
[$ 60 $],

[$ 150 $],
[Tee ↓],
[$ 30 $],
[$ 20 $],
[$ ? $],
[],
[$ 120 $],
[$ ?  $],
[$ 200 $]
)
]
]
#only("12")[
#align(center)[
#table(
fill: (col, row) => if ((row==2 and col==3) or (row==3 and col==2)) {blue } else { white },
columns: (auto, auto, auto, auto),
inset: 10pt,
align: horizon,
[], [Kaffee ↑], [Kaffee ↓], [],
[Tee ↑],
[$ 90 $],
[$ 60 $],
[$ 150 $],
[Tee ↓],
[$ 30 $],
[$ 20 $],
[$ 50 $],
[],
[$ 120 $],
[$ 80  $],
[$ 200 $]
)
]

]
#only("13")[

#align(center)[
#table(
fill: (col, row) => if (row==2 and col==1) {green } else { white },
columns: (auto, auto, auto, auto),
inset: 10pt,
align: horizon,
[], [Kaffee ↑], [Kaffee ↓], [],
[Tee ↑],
[$ 90 $],
[$ 60 $],
[$ 150 $],
[Tee ↓],
[$ 30 $],
[$ 20 $],
[$ 50 $],
[],
[$ 120 $],
[$ 80  $],
[$ 200 $]
)
]
]
#v(40pt)
#only("1")[
#voiceover("Das stimmt so nicht, schade. Betrachten wir die Vierfeldertafel.")
]
#only("2")[
#voiceover("Da wir eine Gesamtzahl von zweihundert Personen haben, können wir diese Zahl in die untere rechte Ecke eintragen.")
]
#only("3")[
#voiceover("Wir wissen auch, dass hundertzwanzig Personen Kaffee mögen. Diese Zahl schreiben wir also in die untere Zeile der Kaffee-Spalte.")
]
#only("4")[
#voiceover("Und es ist bekannt, dass hundertfünfzig Personen Tee bevorzugen. Das tragen wir in die rechte Spalte der Tee-Zeile ein.")
]
#only("5")[
#voiceover("Zuletzt haben wir die Information, dass neunzig Personen sowohl Kaffee als auch Tee genießen. Diese Zahl kommt in die obere linke Ecke. Jetzt müssen wir die restlichen Felder herleiten.")
]
#only("6")[
#voiceover("Beginnen wir mit den Personen, die Tee, aber keinen Kaffee mögen. Insgesamt mögen hundertfünfzig Personen Tee, und von diesen genießen neunzig auch Kaffee. Folglich ...")
]
#only("7")[
#voiceover("... mögen sechzig Personen nur Tee und keinen Kaffee. Diese Zahl tragen wir im oberen rechten Feld ein.")
]
#only("8")[
#voiceover("Als nächstes überlegen wir, wie viele Personen Kaffee, aber keinen Tee mögen. Hundertzwanzig Personen mögen insgesamt Kaffee, und neunzig davon genießen auch Tee, also ...")
]
#only("9")[
#voiceover("... bleiben dreißig Personen übrig, die ausschließlich Kaffee mögen. Diese Zahl kommt ins untere linke Feld.")

]
#only("10")[
#voiceover("Schließlich müssen wir noch das untere rechte Feld bestimmen. Das ist ganz einfach: Von den zweihundert Personen haben wir schon hundertsechzig auf die anderen Felder verteilt. Es bleiben also noch zweihundert minus hundertsechzig, das sind ...")
]
#only("11")[
#voiceover("... zwanzig Personen für das letzte Feld. Als Kontrolle können wir noch die Zeilen und Spalten aufsummieren, um ...")
]
#only("12")[
#voiceover("... die letzten beiden Felder auszufüllen. Damit ist die Vierfeldertafel vollständig. Wir können jetzt ablesen, wie viele Personen nur Kaffee und keinen Tee mögen:")
]
#only("13")[
#voiceover("Das sind dreißig Personen, wie wir dem unteren linken Feld entnehmen können. Die gesuchte Antwort lautet also: 30!")

]
]