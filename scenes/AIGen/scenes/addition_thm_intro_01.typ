#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#text(size: 30pt, weight: "bold")[Additionssatz]
#v(40pt)
#only("1-")[- #text(weight: "bold")[Gesucht:] $P(A union B)$]
#v(20pt)
#only("2-")[- #text(weight: "bold")[Formel:] $ P(A union B) = P(A) + P(B) - P(A sect B) $]
#v(20pt)
#only("3-")[- #text(weight: "bold")[Beispiel:] Würfelwurf ⚀⚁⚂⚃⚄⚅]
#only("1")[
#voiceover("Angenommen wir haben zwei verschiedene Ereignisse A und B gegeben. Der Additionssatz der Wahrscheinlichkeit ermöglicht es uns, die Wahrscheinlichkeit dafür zu berechnen, dass mindestens eines von zwei Ereignissen eintritt. Also die Wahrscheinlichkeit der Vereinigung von A und B.")
]
#only("2")[
#voiceover("Die Formel lautet: Die Wahrscheinlichkeit der Vereinigung von A und B ist gleich der Summe der Einzelwahrscheinlichkeiten von A und B, abzüglich der Wahrscheinlichkeit des Schnitts von A und B.")
]
#only("3")[
#voiceover("Betrachten wir als Beispiel wieder einen Würfelwurf. Wir wollen die Wahrscheinlichkeit berechnen, entweder eine gerade Zahl oder eine Zahl größer als 4 zu würfeln.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Additionssatz Beispiel]
#v(40pt)
#only("1-")[- #text(weight: "bold", size:23pt)[A:] Gerade Zahl$-> A={⚁, ⚃, ⚅}$]
#only("2-")[- $P(A) = 3/6 = 1/2$]
#v(20pt)
#only("3-")[- #text(weight: "bold")[B:] Zahl $> 4 -> B= {⚄, ⚅}$]
#only("4-")[- $P(B) = 2/6 = 1/3$]
#v(20pt)
#only("5-")[- $A sect B$: Gerade Zahl und > 4
- $A sect B =  {⚅}$]
#only("6-")[- $P(A sect B) = 1/6 $]

#v(20pt)
#only("7-")[#text(weight: "bold")[Formel:] 
$ P(A union B) = P(A) + P(B) - P(A sect B) $]
#only("8-")[
$ arrow.b $  
$ P(A union B) = 1/2 + 1/3 - 1/6 = 2/3 $]
#only("1")[
#voiceover("Ereignis A ist das Würfeln einer geraden Zahl. Die günstigen Ergebnisse dafür sind 2, 4 und 6.")
]
#only("2")[
#voiceover("Also beträgt die Wahrscheinlichkeit von A 3 sechstel oder ein halb.")
]
#only("3")[
#voiceover("Ereignis B ist das Würfeln einer Zahl größer als 4. Die günstigen Ergebnisse sind 5 und 6.")
]
#only("4")[
#voiceover("Also beträgt die Wahrscheinlichkeit von B 2 sechstel oder ein drittel.")
]
#only("5")[
#voiceover("Der Schnitt von A und B ist das Ereignis, dass die gewürfelte Zahl sowohl gerade als auch größer als 4 ist. Die einzige Zahl, die beide Kriterien erfüllt, ist die 6.")
]
#only("6")[
#voiceover("Die Wahrscheinlichkeit für den Schnitt beträgt also ein sechstel.")
]
#only("7")[
#voiceover("Erinnern wir uns jetzt an die Formel des Additionssatzes: Die Wahrscheinlichkeit der Vereinigung von A und B ist gleich der Summe der Einzelwahrscheinlichkeiten von A und B, abzüglich der Wahrscheinlichkeit des Schnitts von A und B.")
]
#only("8")[
#voiceover("Setzen wir dann die drei Werte in die Formel ein, so ergibt sich für die Wahrscheinlichkeit der Vereinigung von A und B: ein halb plus ein drittel minus 1 sechstel. Das sind 2 drittel oder umgerechnet etwa 67 Prozent.")
]
]