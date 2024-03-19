#import "../sophiatheme.typ": *
//apply theme (and default setup) ①②③④⑤⑥⑦⑧⑨⑩
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#text(size: 30pt, weight: "bold")[Bedingte Wahrscheinlichkeit]
#v(40pt)
#only("1-")[Ereignisse:]
#v(10pt)
A: Kugel mit gerader Zahl

B: Kugel mit Zahl größer als 7
#v(20pt)
#only("2-")[Schritt 1: Bestimme $P(B)$]
#v(10pt)
#only("3-")[B = ${8,9,10}$]
#v(10pt)
#only("4-")[$P(B) = 3/10$]
#only("1")[
#voiceover("Das ist richtig, toll... Ereignis A ist, dass eine Kugel mit einer geraden Zahl gezogen wird, und Ereignis B ist, dass eine Kugel mit einer Zahl größer als 7 gezogen wird.")
]
#only("2")[
#voiceover("Im ersten Schritt bestimmen wir die Wahrscheinlichkeit für Ereignis B.")
]
#only("3")[

#voiceover("B enthält die Kugeln mit den Zahlen 8, 9 und 10.")
]
#only("4")[
#voiceover("Da wir insgesamt 10 Kugeln haben, ist die Wahrscheinlichkeit für B gleich 3 durch 10.")

]
]
#slide()[
#only("1-")[Schritt 2: Bestimme $P(A sect B)$]
#v(10pt)
#only("2-")[$A sect B = {8,10}$]
#v(10pt)
#only("3-")[$P(A sect B) = 2/10 = 1/5$]
#v(20pt)
#only("4-")[Schritt 3: Berechne $P(A|B)$]
#v(10pt)
#only("5-")[$P(A|B) = P(A sect B) / P(B)$]
#only("6-")[$= (1/5) / (3/10) = 2/3$]
#only("1")[
#voiceover("Im zweiten Schritt bestimmen wir die Wahrscheinlichkeit für den Schnitt von A und B.")
]
#only("2")[

#voiceover("Die Kugeln, die sowohl eine gerade Zahl als auch eine Zahl größer als 7 haben, sind die 8 und die 10.")
]
#only("3")[
#voiceover("Die Wahrscheinlichkeit für den Schnitt ist also 2 durch 10, was ein fünftel ist.")

]
#only("4")[
#voiceover("Im letzten Schritt setzen wir die Werte in die Formel für die bedingte Wahrscheinlichkeit ein.")
]
#only("5")[

#voiceover("P von A gegeben B ist gleich P von A geschnitten B, also ein fünftel, geteilt durch P von B, also drei zehntel.")
]
#only("6")[
#voiceover("Ein fünftel geteilt durch drei zehntel ergibt zwei drittel. Das ist unsere gesuchte bedingte Wahrscheinlichkeit.")

]
]
#slide()[
#text(size: 30pt, weight: "bold")[Antwort]
#v(40pt)
#only("1-")[
$P(A|B) = 2/3$

]
#v(20pt)
#only("2-")[Die Wahrscheinlichkeit, eine Kugel mit gerader Zahl zu ziehen, wenn wir wissen, dass die Zahl größer als 7 ist, beträgt $2/3$.]
#only("1-2")[
#voiceover("Die Antwort ist also: Die Wahrscheinlichkeit, eine Kugel mit gerader Zahl zu ziehen, gegeben, dass die Zahl größer als 7 ist, beträgt zwei drittel.")
]
]