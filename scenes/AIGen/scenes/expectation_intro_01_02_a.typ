#import "../sophiatheme.typ": *

//apply theme (and default setup) ⚀⚁⚂⚃⚄⚅
#show: sophia-theme

#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Zaubertasse]

#v(40pt)

#only("1-")[
- 1, 2, 3, 4 oder 5 €
- gleiche Wahrscheinlichkeiten]

#only("1")[
#voiceover("Super, das ist richtig. Lösen wir das ganze nochmal zusammen. Zunächst fassen wir die gegebenen Informationen zusammen: Die Zaubertasse lässt bei jeder Nutzung entweder 1, 2, 3, 4 oder 5 Eurostücke erscheinen, und zwar mit gleichen Wahrscheinlichkeiten für jede Menge.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 1: Zufallsvariable]

#v(40pt)

#only("1-")[Sei $X$ die Zufallsvariable für die Anzahl der Eurostücke.]

#v(20pt)

#only("2-")[#text(weight: "bold")[Wahrscheinlichkeitsverteilung:]
#v(20pt)
$P(X=1) = 0.2$

$P(X=2) = 0.2$  

$P(X=3) = 0.2$

$P(X=4) = 0.2$

$P(X=5) = 0.2$]

#only("1")[
#voiceover("Im ersten Schritt definieren wir die Zufallsvariable X, die die Anzahl der Eurostücke beschreibt.")
]

#only("2")[
#voiceover("X kann die Werte 1, 2, 3, 4 und 5 annehmen, entsprechend den möglichen Mengen an Eurostücken. Da laut Aufgabenstellung alle Ergebnisse gleich wahrscheinlich sind, ist die Wahrscheinlichkeit für jeden Wert von X gleich 0.2, also ein Fünftel.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 2: Erwartungswert]

#v(40pt)

#only("1-")[#text(weight: "bold")[Definition:]

$ E(X) = sum_(i=1)^n x_i dot p_i $
]

#v(20pt)

#only("2-")[#text(weight: "bold")[Einsetzen ergibt:]

$E(X) = 1 dot 0.2 + 2 dot 0.2 + 3 dot 0.2 + 4 dot 0.2 + 5 dot 0.2$]

#only("3-")[$= 0.2 + 0.4 + 0.6 + 0.8 + 1$]

#only("4-")[$= 3$]

#only("1")[
#voiceover("Im zweiten Schritt berechnen wir den Erwartungswert nach der Definition als Summe der Produkte der möglichen Werte mit ihren Wahrscheinlichkeiten.")
]

#only("2")[
#voiceover("Einsetzen der Werte und Wahrscheinlichkeiten ergibt: 1 mal 0,2 plus 2 mal 0,2 plus 3 mal 0,2 plus 4 mal 0,2 plus 5 mal 0,2")  
]

#only("3")[
#voiceover("Das ist gleich 0,2 plus 0.4 plus 0.6 plus 0.8 plus 1, was insgesamt 3 ergibt. Also beträgt der Erwartungswert 3 Euro.")
]
]
