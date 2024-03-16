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
A: Kugel mit durch 3 teilbarer Zahl
B: Kugel mit durch 2 teilbarer Zahl
#v(20pt)
#only("2-")[Schritt 1: Bestimme $P(B)$]
#v(10pt)
#only("3-")[B = ${2,4,6,8,10}$]
#v(10pt)
#only("4-")[$P(B) = 5/10 = 1/2$]
#only("1")[
#voiceover("In Ordnung, Ereignis A ist, dass eine Kugel mit einer durch 3 teilbaren Zahl gezogen wird, und Ereignis B ist, dass eine Kugel mit einer durch 2 teilbaren Zahl gezogen wird.")
]
#only("2")[
#voiceover("Im ersten Schritt bestimmen wir die Wahrscheinlichkeit für Ereignis B.")
]
#only("3")[

#voiceover("B enthält die Kugeln mit den Zahlen 2, 4, 6, 8 und 10.")
]
#only("4")[
#voiceover("Da wir insgesamt 10 Kugeln haben, ist die Wahrscheinlichkeit für B gleich 5 durch 10, was ein halb ist.")

]
]
#slide()[
#only("1-")[Schritt 2: Bestimme $P(A sect B)$]
#v(10pt)
#only("2-")[$A sect B = {6}$]
#v(10pt)
#only("3-")[$P(A sect B) = 1/10$]
#v(20pt)
#only("4-")[Schritt 3: Berechne $P(A|B)$]
#v(10pt)
#only("5-")[$P(A|B) = P(A sect B) / P(B)$]
#only("6-")[$= (1/10) / (1/2) = 1/5 = 2/10$]
#only("1")[
#voiceover("Im zweiten Schritt bestimmen wir die Wahrscheinlichkeit für den Schnitt von A und B.")
]
#only("2")[

#voiceover("Die einzige Kugel, die sowohl eine durch 3 als auch eine durch 2 teilbare Zahl hat, ist die 6.")
]
#only("3")[
#voiceover("Die Wahrscheinlichkeit für den Schnitt ist also 1 durch 10.")

]
#only("4")[
#voiceover("Im letzten Schritt setzen wir die Werte in die Formel für die bedingte Wahrscheinlichkeit ein.")
]
#only("5")[

#voiceover("P von A gegeben B ist gleich P von A geschnitten B, also ein zehntel, geteilt durch P von B, also ein halb.")
]
#only("6")[
#voiceover("Ein zehntel geteilt durch ein halb ergibt ein fünftel, was gleich zwei zehntel ist. Das ist unsere gesuchte bedingte Wahrscheinlichkeit.")

]
]
#slide()[
#text(size: 30pt, weight: "bold")[Antwort]
#v(40pt)
#only("1-")[
$P(A|B) = 2/10 = 1/5$

]
#v(20pt)
#only("2-")[Die Wahrscheinlichkeit, eine Kugel mit durch 3 teilbarer Zahl zu ziehen, wenn wir wissen, dass die Zahl durch 2 teilbar ist, beträgt $2/10$ oder $1/5$.]
#only("1-2")[
#voiceover("Die Antwort ist also: Die Wahrscheinlichkeit, eine Kugel mit durch 3 teilbarer Zahl zu ziehen, gegeben, dass die Zahl durch 2 teilbar ist, beträgt zwei zehntel oder ein fünftel.")
]
]