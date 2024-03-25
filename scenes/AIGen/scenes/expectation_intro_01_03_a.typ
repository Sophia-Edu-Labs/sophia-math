#import "../sophiatheme.typ": *

//apply theme (and default setup) ⚀⚁⚂⚃⚄⚅
#show: sophia-theme

#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Würfelspiel]

#v(40pt)

#only("1-")[
- ⚀ oder ⚅: Hauptgewinn (60€)
- ⚁⚂⚃: Niete (0€)
- ⚄: Kleiner Gewinn (30€)]

#only("1")[
#voiceover("Super, das ist richtig. Lass uns diese Aufgabe Schritt für Schritt lösen. Zunächst fassen wir die Regeln des Würfelspiels zusammen: Bei einer 1 oder 6 erhält man den Hauptgewinn von 60 Euro, bei einer 2, 3 oder 4 geht man leer aus, und bei einer 5 bekommt man einen kleineren Gewinn von 30 Euro.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 1: Zufallsvariable]

#v(40pt)

#only("1-")[Sei $X$ die Zufallsvariable für den Gewinn in Euro.]

#v(20pt)

#only("2-")[#text(weight: "bold")[Wahrscheinlichkeitsverteilung:]
]
#only("3-")[
$P(X=0) = 1/2$
]
#only("4-")[
$P(X=30) = 1/6$  
]
#only("5-")[
$P(X=60) = 1/3$]

#only("1")[
#voiceover("Im ersten Schritt definieren wir die Zufallsvariable X, die den Gewinn in Euro beschreibt.")
]

#only("2")[
#voiceover("X kann die Werte 0, 30 und 60 annehmen, entsprechend den möglichen Gewinnen. Da wir einen fairen Würfel haben, ist jede Augenzahl gleich wahrscheinlich. Es gibt drei Möglichkeiten für eine Niete, also ist die Wahrscheinlichkeit dafür ein halb. Für den kleineren Gewinn gibt es nur eine Möglichkeit, also ist die Wahrscheinlichkeit ein sechstel. Und für den Hauptgewinn gibt es zwei Möglichkeiten, also ist die Wahrscheinlichkeit ein drittel.")
]
#only("3")[
#voiceover("Es gibt drei Möglichkeiten für eine Niete, also ist die Wahrscheinlichkeit dafür drei sechstel, also ein halb.")
]
#only("4")[
#voiceover("Für den kleineren Gewinn gibt es nur eine Möglichkeit, also ist die Wahrscheinlichkeit ein sechstel.")
]
#only("5")[
#voiceover("Und für den Hauptgewinn gibt es zwei Möglichkeiten, also ist die Wahrscheinlichkeit ein drittel.")
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

$E(X) = 0 dot 1/2 + 30 dot 1/6 + 60 dot 1/3$]

#only("3-")[$= 0 + 5 + 20$]

#only("4-")[$= 25$]

#only("1")[
#voiceover("Im zweiten Schritt berechnen wir den Erwartungswert nach der Definition als Summe der Produkte der möglichen Werte mit ihren Wahrscheinlichkeiten.")
]

#only("2")[
#voiceover("Einsetzen der Werte und Wahrscheinlichkeiten ergibt: 0 mal ein halb plus 30 mal ein sechstel plus 60 mal ein drittel")  
]

#only("3")[
#voiceover("Das ist gleich 0 plus 5 plus 20, was insgesamt 25 ergibt. Also beträgt der Erwartungswert des Gewinns 25 Euro.")
]
]
]
