#import "../sophiatheme.typ": *
// Apply theme (and default setup)
#show: sophia-theme
#show figure.caption: it => [
  #set text(size: 20pt)
  #it.body ]
#slide(max-repetitions: 20)[
#text(size: 28pt, weight: "bold")[#align(center)[Vierfeldertafel Beispiel]]
#v(40pt)
#only("1-")[
#text(weight: "bold")[Arbeitswegumfrage]
]
#v(40pt)
#only("2")[
#align(center)[
#table(
fill: (col, row) => if false {blue } else { white },
columns: (auto, auto, auto, auto),
inset: 10pt,
align: horizon,
[], [Auto ↑], [Auto ↓], [],
[ÖV ↑], [$ ? $], [$ ? $], [$ ? $],
[ÖV ↓], [$ ? $], [$ ? $], [$ ? $],
[], [$ ? $], [$ ? $], [$ 100 %$]
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
[], [Auto ↑], [Auto ↓], [],
[ÖV ↑], [$ ? $], [$ ? $], [$ ? $],
[ÖV ↓], [$ ? $], [$ ? $], [$ ? $],
[], [$ 60% $], [$ ? $], [$ 100% $]
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
[], [Auto ↑], [Auto ↓], [],
[ÖV ↑], [$ ? $], [$ ? $], [$ 75% $],
[ÖV ↓], [$ ? $], [$ ? $], [$ ? $],
[], [$ 60% $], [$ ? $], [$ 100% $]
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
[], [Auto ↑], [Auto ↓], [],
[ÖV ↑], [$ 50% $], [$ ? $], [$ 75% $],
[ÖV ↓], [$ ? $], [$ ? $], [$ ? $],
[], [$ 60% $], [$ ? $], [$ 100% $]
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
[], [Auto ↑], [Auto ↓], [],
[ÖV ↑], [$ 50% $], [$ ? $], [$ 75% $],
[ÖV ↓], [$ ? $], [$ ? $], [$ ? $],
[], [$ 60% $], [$ ? $], [$ 100% $]
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
[], [Auto ↑], [Auto ↓], [],
[ÖV ↑], [$ 50% $], [$ 25% $], [$ 75% $],
[ÖV ↓], [$ ? $], [$ ? $], [$ ? $],
[], [$ 60% $], [$ ? $], [$ 100% $]
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
[], [Auto ↑], [Auto ↓], [],
[ÖV ↑], [$ 50% $], [$ 25% $], [$ 75% $],
[ÖV ↓], [$ ? $], [$ ? $], [$ ? $],
[], [$ 60% $], [$ ? $], [$ 100% $]
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
[], [Auto ↑], [Auto ↓], [],
[ÖV ↑], [$ 50% $], [$ 25% $], [$ 75% $],
[ÖV ↓], [$ 10 $], [$ ? $], [$ ? $],
[], [$ 60% $], [$ ? $], [$ 100% $]
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
[], [Auto ↑], [Auto ↓], [],
[ÖV ↑], [$ 50% $], [$ 25% $], [$ 75% $],
[ÖV ↓], [$ 10 $], [$ ? $], [$ ? $],
[], [$ 60% $], [$ ? $], [$ 100% $]
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
[], [Auto ↑], [Auto ↓], [],
[ÖV ↑], [$ 50% $], [$ 25% $], [$ 75% $],
[ÖV ↓], [$ 10 $], [$ 15 $], [$ ? $%],
[], [$ 60% $], [$ 40& $], [$ 100% $]
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
[], [Auto ↑], [Auto ↓], [],
[ÖV ↑], [$ 50% $], [$ 25% $], [$ 75% $],
[ÖV ↓], [$ 10 $], [$ 15 $], [$ 25% $],
[], [$ 60% $], [$ 40 $], [$ 100% $]
)
]
]
#only("13")[
#align(center)[
#table(
fill: (col, row) => if (row==2 and col==2) {green } else { white },
columns: (auto, auto, auto, auto),
inset: 10pt,
align: horizon,
[], [Auto ↑], [Auto ↓], [],
[ÖV ↑], [$ 50% $], [$ 25% $], [$ 75% $],

[ÖV ↓], [$ 10 $], [$ 15 $], [$ 25% $],
[], [$ 60% $], [$ 40 $], [$ 100% $]
)
]
]
#v(40pt)
#only("1")[
#voiceover("Okay, lass uns die Vierfeldertafel Aufgabe zum Arbeitsweg der Mitarbeiter betrachten.")
]
#only("2")[
#voiceover("Wir beginnen mit einer leeren Vierfeldertafel und tragen unten rechts 100% ein, da das die Gesamtheit aller Mitarbeiter repräsentiert.")
]

#only("3")[
#voiceover("Wir haben ja drei Datenpunkte gegeben: 60% der Mitarbeiter fahren gerne mit dem Auto zur Arbeit. Das notieren wir in der unteren Zeile der Auto-Spalte.")
]
#only("4")[
#voiceover("75% nutzen gerne öffentliche Verkehrsmittel. Das tragen wir in der rechten Spalte der ÖV-Zeile ein.")
]
#only("5")[
#voiceover("und 50% nutzen sowohl Auto als auch öffentliche Verkehrsmittel. Diese Zahl kommt in die obere linke Ecke. So, nun müssen wir die restlichen Werte selbst ermitteln. Beginnen wir mit")
]
#only("6")[
#voiceover("der Zahl der Mitarbeiter, die öffentliche Verkehrsmittel, aber nicht das Auto nutzen: Insgesamt nutzen 75% ÖV, davon 50% auch das Auto, also ...")
]
#only("7")[
#voiceover("... bleiben 25% die nur ÖV nutzen. Dieser Wert kommt in die obere rechte Zelle.")
]
#only("8")[

#voiceover("Als nächstes die Mitarbeiter, die das Auto, aber nicht öffentliche Verkehrsmittel nutzen: 60% fahren insgesamt mit dem Auto, 50% davon nutzen auch ÖV, somit ...")
]
#only("9")[
#voiceover("... fahren 10% ausschließlich mit dem Auto. Diesen Wert tragen wir unten links ein.")
]
#only("10")[
#voiceover("Zuletzt fehlt noch die untere rechte Zelle. Dafür summieren wir zunächst die Zeilen auf ...")
]
#only("11")[
#voiceover("... und erhalten 40% als Zeilensumme. Nun das letzte Feld: Von den 100% Mitarbeitern verteilen sich 85% auf die anderen Felder, es bleiben also ...")
]
#only("12")[
#voiceover("... 15% für das letzte Feld übrig. Zur Kontrolle können wir noch die Spaltensummen bilden und ...")
]
#only("13")[
#voiceover("... sehen, dass auch hier alles passt. Wir können jetzt direkt im unteren rechten Feld ablesen: 15% der Mitarbeiter nutzen weder Auto noch öffentliche Verkehrsmittel für ihren Arbeitsweg.")
]
]