#import "../sophiatheme.typ": *
//apply theme (and default setup) ⚀⚁⚂⚃⚄⚅
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
A: Zahl ist eine Primzahl

B: Zahl ist kleiner als 4
#v(20pt)
#only("2-")[Schritt 1: Bestimme $P(B)$]
#v(10pt)
#only("3-")[B = ${1,2,3}$]
#v(10pt)
#only("4-")[$P(B) = 3/6 = 1/2$]
#only("1")[
#voiceover("Super, das ist richtig. Ereignis A ist ja, dass die gewürfelte Zahl eine Primzahl ist, und Ereignis B ist, dass die Zahl kleiner als 4 ist.")
]
#only("2")[
#voiceover("Im ersten Schritt bestimmen wir die Wahrscheinlichkeit für Ereignis B.")
]
#only("3")[
#voiceover("B enthält die Augenzahlen 1, 2 und 3.")
]
#only("4")[
#voiceover("Da wir einen fairen Würfel haben, ist die Wahrscheinlichkeit für B gleich 3 durch 6, also ein halb.")
]
]
#slide()[
#only("1-")[Schritt 2: Bestimme $P(A sect B)$]
#v(10pt)
#only("2-")[$A sect B = {2,3}$]
#v(10pt)
#only("3-")[$P(A sect B) = 2/6 = 1/3$]
#v(20pt)
#only("4-")[Schritt 3: Berechne $P(A|B)$]
#v(10pt)
#only("5-")[$P(A|B) = P(A sect B) / P(B)$]#only("6-")[$=(1/3) / (1/2) = 2/3$]
#only("1")[
#voiceover("Im zweiten Schritt bestimmen wir die Wahrscheinlichkeit für den Schnitt von A und B.")
]
#only("2")[
#voiceover("Die Zahlen, die sowohl Primzahlen als auch kleiner als 4 sind, sind 2 und 3.")
]
#only("3")[
#voiceover("Die Wahrscheinlichkeit für den Schnitt ist also 2 durch 6, was ein drittel ist.")
]
#only("4")[
#voiceover("Im letzten Schritt setzen wir die Werte in die Formel für die bedingte Wahrscheinlichkeit ein.")
]
#only("5")[
#voiceover("P von A gegeben B ist gleich P von A geschnitten B, also ein drittel, geteilt durch P von B, also ein halb.")
]
#only("6")[
#voiceover("Ein drittel geteilt durch ein halb ergibt zwei drittel. Das ist unsere gesuchte bedingte Wahrscheinlichkeit.")
]
]