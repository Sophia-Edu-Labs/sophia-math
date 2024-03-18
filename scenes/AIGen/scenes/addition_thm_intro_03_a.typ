#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#text(size: 30pt, weight: "bold")[1. Schritt]
#v(40pt)
#only("1-")[Bestimme $P(A)$ und $P(B)$]
#v(20pt)
#only("2-")[A: Zahl ist eine Primzahl

$-> A={2, 3, 5, 7}$]
#only("3-")[$P(A) = 4/10 = 2/5$]
#v(20pt)
#only("4-")[B: Zahl ist größer als 4 

$-> B={5, 6, 7, 8, 9, 10}$]
#only("5-")[$P(B) = 6/10 = 3/5$]
#only("1")[
#voiceover("Super, das ist richtig. Im ersten Schritt bestimmen wir die Wahrscheinlichkeiten für die Einzelereignisse A und B.")
]
#only("2")[
#voiceover("Ereignis A ist, dass die Zahl eine Primzahl ist. Das trifft auf die Zahlen 2, 3, 5 und 7 zu. Es gibt also 4 günstige von insgesamt 10 möglichen Ergebnissen.")
]
#only("3")[
#voiceover("Damit ist die Wahrscheinlichkeit für A gleich 4 zehntel oder zwei fünftel.")
]
#only("4")[
#voiceover("Ereignis B ist, dass die Zahl größer als 4 ist. Das trifft auf die Zahlen 5, 6, 7, 8, 9 und 10 zu. Hier gibt es 6 günstige von 10 möglichen Ergebnissen.")
]
#only("5")[
#voiceover("Damit ist die Wahrscheinlichkeit für B gleich 6 zehntel oder drei fünftel.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[2. Schritt]
#v(40pt)
Bestimme $P(A sect B)$
#v(20pt)
#only("1-")[$A sect B$: Primzahl und $>4$]
#v(20pt)
#only("2-")[$P({5, 7})=$]#only("3-")[$P(A sect B) = 2/10 = 1/5$]
#only("1")[
#voiceover("Im zweiten Schritt bestimmen wir die Wahrscheinlichkeit für den Schnitt von A und B, also für das Ereignis, dass die Zahl sowohl eine Primzahl als auch größer als 4 ist.")
]
#only("2")[
#voiceover("Das trifft nur auf die Zahlen 5 und 7 zu. Es gibt also 2 günstige von 10 möglichen Ergebnissen,")
]
#only("3")[
#voiceover("womit die Wahrscheinlichkeit für den Schnitt ein fünftel beträgt.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[3. Schritt]
#v(40pt)
#only("1-")[Setze in Additionssatz ein:]
#only("1-")[
$ P(A union B) = P(A) + P(B) - P(A sect B) $
]
#v(20pt)
#only("2-")[
$ P(A union B) = 2/5 + 3/5 - 1/5 $
]
#v(20pt)
#only("3-")[$ = 4/5 $]
#only("1")[
#voiceover("Im letzten Schritt setzen wir die berechneten Werte in die Formel des Additionssatzes ein.")
]
#only("2")[
#voiceover("Die Wahrscheinlichkeit der Vereinigung von A und B ist gleich der Summe der Wahrscheinlichkeiten von A und B, also zwei fünftel und drei fünftel, abzüglich der Wahrscheinlichkeit des Schnitts von A und B, welche ein fünftel beträgt.")
]
#only("3")[
#voiceover("Das ergibt zwei fünftel plus drei fünftel minus ein fünftel, was fünf fünftel minus ein fünftel ergibt, also vier fünftel. Damit ist die Wahrscheinlichkeit für die Vereinigung von A und B gleich vier fünftel.")
]
]

