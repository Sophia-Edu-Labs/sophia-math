#import "../sophiatheme.typ": *
//apply theme (and default setup) ⚀⚁⚂⚃⚄⚅
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
#only("2-")[A: Zahl gerade $-> {⚁, ⚃, ⚅}$]
#only("3-")[$P(A) = 3/6 = 1/2$]
#v(20pt)
#only("4-")[B: Zahl größer als 3 $-> {⚃, ⚄, ⚅}$]
#only("5-")[$P(B) = 3/6 = 1/2$]
#only("1")[
#voiceover("Das ist nicht ganz richtig. Schade. Im ersten Schritt bestimmen wir die Wahrscheinlichkeiten für die Einzelereignisse A und B.")
]
#only("2")[
#voiceover("Ereignis A ist, dass die Zahl gerade ist. Das trifft auf die Zahlen 2, 4 und 6 zu. Es gibt also 3 günstige von insgesamt 6 möglichen Ergebnissen.")
]
#only("3")[
#voiceover("Damit ist die Wahrscheinlichkeit für A gleich 3 sechstel oder ein halb.")
]
#only("4")[
#voiceover("Ereignis B ist, dass die Zahl größer als 3 ist. Das trifft auf die Zahlen 4, 5 und 6 zu. Auch hier gibt es 3 günstige von 6 möglichen Ergebnissen.")
]
#only("5")[
#voiceover("Damit ist auch die Wahrscheinlichkeit für B gleich ein halb.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[2. Schritt]
#v(40pt)
Bestimme $P(A sect B)$
#v(20pt)
#only("1-")[$A sect B$: Zahl gerade, $>3$]
#v(20pt)
#only("2-")[$P({⚃, ⚅})=$]#only("3-")[$P(A sect B) = 2/6 = 1/3$]
#only("1")[
#voiceover("Im zweiten Schritt bestimmen wir die Wahrscheinlichkeit für den Schnitt von A und B, also für das Ereignis, dass die Zahl sowohl gerade als auch größer als 3 ist.")
]
#only("2")[
#voiceover("Das trifft nur auf die Zahlen 4 und 6 zu. Es gibt also 2 günstige von 6 möglichen Ergebnissen,")
]
#only("3")[
#voiceover("womit die Wahrscheinlichkeit für den Schnitt ein drittel beträgt.")
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
$ P(A union B) = 1/2 + 1/2 - 1/3 $
]
#v(20pt)
#only("3-")[$ = 2/3 $]
#only("1")[
#voiceover("Im letzten Schritt setzen wir die berechneten Werte in die Formel des Additionssatzes ein.")
]
#only("2")[
#voiceover("Die Wahrscheinlichkeit der Vereinigung von A und B ist gleich der Summe der Wahrscheinlichkeiten von A und B, also jeweils ein halb, abzüglich der Wahrscheinlichkeit des Schnitts von A und B, welche ein drittel beträgt.")
]
#only("3")[
#voiceover("Das ergibt: ein halb plus ein halb minus ein drittel, was 6 sechstel minus 2 sechstel ergibt, also 4 sechstel oder gekürzt zwei drittel. Damit ist die Wahrscheinlichkeit für die Vereinigung von A und B auch in diesem Fall gleich zwei drittel.")
]
]