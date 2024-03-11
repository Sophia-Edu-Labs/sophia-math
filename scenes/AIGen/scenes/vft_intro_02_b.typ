#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide(max-repetitions: 20)[
#text(size: 28pt, weight: "bold")[#align(center)[Vierfeldertafel]]
#v(40pt)
#only("1")[
#align(center)[
#table(
columns: (auto, auto, auto),
inset: 10pt,
align: horizon,
[], [*Kunst*], [*Musik*],

[*L*],
[$ 9 $],
[$ 3 $],
[*R*],
[$ 7 $],
[$ 6 $],
)
]
]
#only("2")[
#align(center)[

#table(
fill: (col, _) => if col==1 {red } else { white },
columns: (auto, auto, auto),
inset: 10pt,
align: horizon,
[], [*Kunst*], [*Musik*],
[*L*],

[$ 9 $],
[$ 3 $],
[*R*],
[$ 7 $],
[$ 6 $],
)
]
]
#only("3")[

#align(center)[
#table(
fill: (col, _) => if col==2 {red } else { white },

columns: (auto, auto, auto),
inset: 10pt,
align: horizon,

[], [*Kunst*], [*Musik*],
[*L*],
[$ 9 $],

[$ 3 $],
[*R*],

[$ 7 $],
[$ 6 $],
)
]

]
#v(40pt)
#only("2-")[- #text(weight:"bold")[Kunst:] 16 Schülerinnen]
#only("3-")[- #text(weight:"bold")[Musik:] 9 Schülerinnen]
#only("1")[
#voiceover("Das ist leider falsch. Lass uns die Lösung gemeinsam anschauen. Um die Anzahl der Schülerinnen zu ermitteln, die Kunst bevorzugen, ")
]
#only("2")[#voiceover("addieren wir die Werte in der linken Spalte. Das ergibt 9 + 7, also 16 Schülerinnen, die Kunst lieber mögen. Für die Anzahl der Schülerinnen, die Musik bevorzugen, ")
]
#only("3")[
#voiceover("addieren wir analog die Werte in der rechten Spalte. 3 + 6 ergibt 9 Schülerinnen, die Musik lieber mögen.")
]
]