#import "../sophiatheme.typ": *

//apply theme (and default setup)
#show: sophia-theme

#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[

#text(size: 30pt, weight: "bold")[Erwartungswert] 
#v(40pt)

#only("2-")[- Betrachte einer Zufallsgröße]
#only("2-")[- Erwartungswert beschreibt den Durchschnittswert]

#only("1")[
#voiceover("Was ist der Erwartungswert einer Zufallsvariablen?")  
]
#only("2")[
#voiceover("Angenommen, ich habe eine Zufallsvariablen, deren Wert für mich wichtig ist. Zum Beispiel wenn ich eine Münze werfe und bei Kopf 2 Euro gewinne und bei Zahl 0 Euro. Und dann interessiert mich: Wie viel werde ich gewinnen?")  
]
#only("3")[
#voiceover("Und dann kommt eben der Erwartungswert ins Spiel. Der sagt mir quasi: Wie viel Gewinn soll ich erwarten? Und das erhält man, indem man die möglichen Gewinne mit ihren Wahrscheinlichkeiten gewichtet und aufaddiert. Also mal etwas formaler:")  
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Definition]

#v(40pt) 

#only("1-")[
- diskrete Zufallsvariable $X$
]
#only("2-")[
- mögliche Werten $x_1, x_2, ..., x_n$
]
#only("3-")[
- Wahrscheinlichkeiten: $p_i$
#v(20pt)
]
#only("4-")[
#text(weight: "bold")[Erwartungswert] $E(X)$:

$E(X)$

$=x_1 dot p_1 + x_2 dot p_2 + ... + x_n dot p_n$

$=sum_(i=1)^n x_i dot p_i $
]
#only("1")[
#voiceover("Betrachten wir eine diskrete Zufalsvariable X")]
#only("2")[
#voiceover("mit den möglichen Werten X eins, X 2, und so weiter bis X n. Also zum Beispiel ein Würfel mit den möglichen Werten 1 bis 6.")]
#only("3")[
#voiceover("Die Wahrscheinlichkeiten für die möglichen Werte sind p_1, p_2, und so weiter bis p_n. Bei dem Würfel wären p 1, p 2 und so weiter alle gleich ein sechstel.")
] 
#only("4")[
#voiceover("Dann ist der Erwartungswert definiert als die Summe der möglichen Werte mal ihrer Wahrscheinlichkeiten. Also zum Beispiel beim Würfel: 1 mal ein Sechstel plus 2 mal ein Sechstel und so weiter bis 6 mal ein Sechstel.")  
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Beispiel]

#v(20pt)

#only("1-")[Werfen einer fairen Münze mit Auszahlungen:
#v(10pt)
- Kopf: 2 Euro 
- Zahl: 0 Euro
]
#only("2-")[
#v(20pt)
#text(weight: "bold")[Erwartungswert:]
$ E(X) = 2 dot 0.5 + 0 dot 0.5 = 1 $
]

#only("1")[
#voiceover("Betrachten wir als Beispiel das Werfen einer fairen Münze. Bei Kopf erhält man 2 Euro, bei Zahl 0 Euro. Die Wahrscheinlichkeit für Kopf und Zahl ist jeweils 0.5.")  
]
#only("2")[
#voiceover("Der Erwartungswert berechnet sich dann als 2 mal 0.5 plus 0 mal 0.5, was 1 ergibt. Auf lange Sicht würde man also im Durchschnitt 1 Euro pro Münzwurf gewinnen.")  
]
]