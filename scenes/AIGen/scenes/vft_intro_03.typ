#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide(max-repetitions: 20)[

#text(size: 28pt, weight: "bold")[#align(center)[Vierfeldertafel]]
#v(80pt)
#only("1-")[
#text(weight: "bold")[Kunst oder Musik]
]
#v(40pt)
#only("2")[
#align(center)[
#table(
  columns: (auto, auto, auto, auto),
  inset: 10pt,
  align: horizon,
  [], [*Kunst*], [*Musik*], [],
  [*L*],
  [$ 9 $],
  [$ 3 $],
  [$12$],
  [*R*],
  [$ 7 $],
  [$ 6 $],
  [$13$],
  [],
  [$16$],
  [$ 9 $],
  [$25$]
)
]
]
#only("3")[
#align(center)[
#table(
  fill: (col, row) => if (row==3 and (col==1 or col==2)) {red } else { white },
  columns: (auto, auto, auto, auto),
  inset: 10pt,
  align: horizon,
  [], [*Kunst*], [*Musik*], [],
  [*L*],
  [$ 9 $],
  [$ 3 $],
  [$12$],
  [*R*],
  [$ 7 $],
  [$ 6 $],
  [$13$],
  [],
  [$16$],
  [$ 9 $],
  [$25$]
)
]
]
#only("4")[
#align(center)[
#table(
  fill: (col, row) => if (col==3 and (row==1 or row==2)) {red } else { white },
  columns: (auto, auto, auto, auto),
  inset: 10pt,
  align: horizon,
  [], [*Kunst*], [*Musik*], [],
  [*L*],
  [$ 9 $],
  [$ 3 $],
  [$12$],
  [*R*],
  [$ 7 $],
  [$ 6 $],
  [$13$],
  [],
  [$16$],
  [$ 9 $],
  [$25$]
)
]
]
#only("5")[
#align(center)[
#table(
  fill: (col, row) => if (col==3 and row==3) {red } else { white },
  columns: (auto, auto, auto, auto),
  inset: 10pt,
  align: horizon,
  [], [*Kunst*], [*Musik*], [],
  [*L*],
  [$ 9 $],
  [$ 3 $],
  [$12$],
  [*R*],
  [$ 7 $],
  [$ 6 $],
  [$13$],
  [],
  [$16$],
  [$ 9 $],
  [$25$]
)
]
]

#only("1")[
#voiceover("Es ist tatsächlich recht üblich, an die Vierfeldertafel noch vier weitere Felder anzuhängen.")
]
#only("2")[
#voiceover("Wir ergänzen dann rechts die Summe der Zeilen, und unten die Summe der Spalten. Dann können wir direkt alle Werte ablesen. ")
]
#only("3")[
#voiceover("Also sehen wir unten, wie viele Kunst mögen und wie viele Musik.")
]
#only("4")[
#voiceover("Und auf der rechten Seite sehen wir, wie viele Links- und wie viele Rechtshänder wir haben. ..")
]
#only("5")[
#voiceover("Schließlich sehen wir ganz unten ganz rechts, wie viele Personen wir insgesamt befragt haben..")
]
]
