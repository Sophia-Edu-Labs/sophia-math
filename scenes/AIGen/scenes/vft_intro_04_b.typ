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
#text(weight: "bold")[Star Wars oder Harry Potter?]
]
#v(40pt)
#only("2")[
#align(center)[
#table(
fill: (col, row) => if false {blue } else { white },
columns: (auto, auto, auto, auto),
inset: 10pt,
align: horizon,
[], [*Star Wars ↑*], [*Star Wars ↓*], [],
[*Potter ↑*],
[$ ? $],
[$ ? $],
[$ ? $],
[*Potter ↓*],
[$ ? $],
[$ ? $],
[$ ? $],
[],
[$ ? $],
[$ ? $],
[$ 100 $]
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
[], [*Star Wars ↑*], [*Star Wars ↓*], [],
[*Potter ↑*],
[$ ? $],
[$ ? $],
[$ ? $],
[*Potter ↓*],
[$ ? $],
[$ ? $],
[$ ? $],
[],
[$ 35 $],
[$ ?  $],
[$ 100 $]
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
[], [*Star Wars ↑*], [*Star Wars ↓*], [],
[*Potter ↑*],
[$ ? $],
[$ ? $],
[$ 85 $],
[*Potter ↓*],
[$ ? $],
[$ ? $],
[$ ? $],
[],
[$ 35 $],
[$ ?  $],
[$ 100 $]
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
[], [*Star Wars ↑*], [*Star Wars ↓*], [],
[*Potter ↑*],
[$ 25 $],
[$ ? $],
[$ 85 $],
[*Potter ↓*],
[$ ? $],
[$ ? $],
[$ ? $],
[],
[$ 35 $],
[$ ?  $],
[$ 100 $]
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
[], [*Star Wars ↑*], [*Star Wars ↓*], [],
[*Potter ↑*],
[$ 25 $],
[$ ? $],
[$ 85 $],
[*Potter ↓*],
[$ ? $],
[$ ? $],
[$ ? $],
[],
[$ 35 $],
[$ ?  $],
[$ 100 $]
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
[], [*Star Wars ↑*], [*Star Wars ↓*], [],
[*Potter ↑*],
[$ 25 $],
[$ 60 $],
[$ 85 $],
[*Potter ↓*],
[$ ? $],
[$ ? $],
[$ ? $],
[],
[$ 35 $],
[$ ?  $],
[$ 100 $]
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
[], [*Star Wars ↑*], [*Star Wars ↓*], [],
[*Potter ↑*],
[$ 25 $],
[$ 60 $],
[$ 85 $],
[*Potter ↓*],
[$ ? $],
[$ ? $],
[$ ? $],
[],
[$ 35 $],
[$ ?  $],
[$ 100 $]
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
[], [*Star Wars ↑*], [*Star Wars ↓*], [],
[*Potter ↑*],
[$ 25 $],
[$ 60 $],
[$ 85 $],
[*Potter ↓*],
[$ 10 $],
[$ ? $],
[$ ? $],
[],
[$ 35 $],
[$ ?  $],
[$ 100 $]
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
[], [*Star Wars ↑*], [*Star Wars ↓*], [],
[*Potter ↑*],
[$ 25 $],
[$ 60 $],
[$ 85 $],
[*Potter ↓*],
[$ 10 $],
[$ ? $],
[$ ? $],
[],
[$ 35 $],
[$ ?  $],
[$ 100 $]
)
]]
#only("11")[
#align(center)[
#table(
fill: (col, row) => if (row==2 and col==2) {blue } else { white },
columns: (auto, auto, auto, auto),
inset: 10pt,
align: horizon,
[], [*Star Wars ↑*], [*Star Wars ↓*], [],
[*Potter ↑*],
[$ 25 $],
[$ 60 $],
[$ 85 $],
[*Potter ↓*],
[$ 10 $],
[$ 5 $],
[$ ? $],
[],
[$ 35 $],
[$ ?  $],
[$ 100 $]
)
]]
#only("12")[
#align(center)[
#table(
fill: (col, row) => if ((row==2 and col==3) or (row==3 and col==2)) {blue } else { white },
columns: (auto, auto, auto, auto),
inset: 10pt,
align: horizon,
[], [*Star Wars ↑*], [*Star Wars ↓*], [],
[*Potter ↑*],
[$ 25 $],
[$ 60 $],
[$ 85 $],
[*Potter ↓*],
[$ 10 $],
[$ 5 $],
[$ 15 $],
[],
[$ 35 $],
[$ 65  $],
[$ 100 $]
)
]]

#only("13")[
#align(center)[
#table(
fill: (col, row) => if (row==2 and col==1) {green } else { white },
columns: (auto, auto, auto, auto),
inset: 10pt,
align: horizon,
[], [*Star Wars ↑*], [*Star Wars ↓*], [],
[*Potter ↑*],
[$ 25 $],
[$ 60 $],
[$ 85 $],
[*Potter ↓*],
[$ 10 $],
[$ 5 $],
[$ 15 $],
[],
[$ 35 $],
[$ 65  $],
[$ 100 $]
)
]]


#v(40pt)
#only("1")[
#voiceover("Das ist leider falsch. Sehen wir uns gemeinsam die Vierfeldertafel an.")
]
#only("2")[
#voiceover("Wir haben ja insgesamt einundert Schüler, also können wir in die untere Rechte Ecke eine einundert schreiben. ")
]
#only("3")[
#voiceover("Außerdem wissen wir, dass 35 Schüler Star Wars und Harry Potter mögen. Also schreiben wir in die Star Wars Spalte an unterster Stelle eine 35.")
]
#only("4")[
#voiceover("Und wir wissen, dass 85 Schüler Harry Potter mögen. Also schreiben wir in die Harry Potter Zeile ganz rechts eine 85.")
]
#only("5")[
#voiceover("Schließlich ist noch gegeben, dass 25 Schüler sowohl Star Wars, als auch Harry Potter mögen. Also schreiben wir in die obere linke Ecke eine 25. So, die übrigen Felder müssen wir uns nun erschließen.")
]
#only("6")[
#voiceover("Fangen wir an mit den PErsonen die Harry Potter mögen, aber kein Star wars. Wir wissen ja, dass insgesamt 85 Personen Harry Potter mögen. Und von diesen 85 Mögen 25 auch Star wars. Dann")
]
#only("7")[
#voiceover("Mögen 60 Personen nur Harry Potter., und nicht Star wars Das heißt, wir schreiben in das obere rechte Feld eine 60.")
]
#only("8")[
#voiceover("Als nächstes überlegen wir uns, wie viele Star wars Mögen, Harry Potter aber nicht mögen. Da insgesamt 35 Personen Star wars mögen, und von diesen 25 auch Harry Potter mögen, ")
]
#only("9")[
#voiceover("bleiben 10 Personen übrig, die nur Star wars mögen. Also schreiben wir in das untere linke Feld eine 10.")
]
#only("10")[
#voiceover("Schließlich bleibt nur noch das untere rechte Feld zu lösen. Das geht ganz einfach: Insgesamt gibt es hundert Schüler, und wir haben 60 plus 25 + 10 schon auf die anderen Felder verteilt. Also bleiben nur noch 100 minus 95, also")
]
#only("11")[
#voiceover("5 Schülerinnen für das letzte Feld. ... Wir können zum Abschluss noch die Reihen und Spalten aufsummieren, um")
]
#only("12")[
#voiceover("die letzen beiden Felder einzutragen. Und somit sind wir fertig mit der Vierfeldertafel. Wir können außerdem ablesen, wie viele nur Star wars mögen, und nicht Harry Potter:")
]
#only("13")[
#voiceover("Das sind 10 Personen, wie wir der unteren linken Zelle entnehmen können. Also ist die richtige Antwort: 10!")
]
]