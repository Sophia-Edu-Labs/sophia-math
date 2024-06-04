#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Problem]
#v(40pt)
#only("1-")[Berechne den Druckunterschied zwischen dem Erdgeschoss und dem vierten Stock (14 m höher), wenn der Druck im Erdgeschoss 4 bar beträgt. Verwende $ Delta p = rho dot g dot h $. (Antwort in bar)]
#only("1")[
#voiceover("Leider ist das nicht korrekt. Schauen wir uns an, wie wir das Schritt für Schritt richtig lösen können.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Gegeben]
#v(40pt)
#only("1-")[- Druck im Erdgeschoss: 4 bar]
#v(20pt)
#only("2-")[- Höhenunterschied: 14 m]
#v(20pt)
#only("3-")[- $ rho $ (Dichte von Wasser): 1000 kg/m³]
#v(20pt)
#only("4-")[- $ g $ (Erdbeschleunigung): 9.81 m/s²]
// Die gegebenen Informationen werden schrittweise über die Folien hinweg angezeigt
#only("1")[
#voiceover("Zuerst listen wir die gegebenen Informationen auf. Wir wissen, dass der Druck im Erdgeschoss 4 bar beträgt.")
]
#only("2")[
#voiceover("Der vierte Stock ist 14 Meter höher als das Erdgeschoss.")
]  
#only("3")[
#voiceover("Wir benötigen auch die Dichte von Wasser, die 1000 Kilogramm pro Kubikmeter beträgt.")
]
#only("4")[
#voiceover("Und die Erdbeschleunigung, die 9.81 Meter pro Quadratsekunde beträgt.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Formel]
#v(40pt)
#only("1-")[$ Delta p = rho dot g dot h $]
// Die Formel wird auf allen Folien angezeigt
#only("1")[
#voiceover("Die Formel, die wir zur Berechnung des Druckunterschieds verwenden, lautet Delta p gleich rho mal g mal h, wobei Delta p der Druckunterschied ist, rho die Dichte der Flüssigkeit, g die Erdbeschleunigung und h der Höhenunterschied.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Lösung]
#v(40pt)
#only("1-")[$ Delta p = 1000 dot 9.81 dot 14 $]
#v(20pt)
#only("2-")[$ Delta p = 137340 $ Pa]
#v(20pt)
#only("3-")[$ Delta p = 137340 / 100000 = 1.3734 $ bar]
// Die Lösung wird schrittweise über die Folien hinweg aufgebaut
#only("1")[
#voiceover("Setzen wir die Werte ein. Delta p ist gleich 1000 mal 9.81 mal 14.")
]
#only("2")[
#voiceover("Das ergibt 137.340 Pascal.")
]  
#only("3")[
#voiceover("Um Pascal in Bar umzurechnen, teilen wir durch 100.000. Das ergibt 1.3734 bar.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Endgültige Antwort]
#v(40pt)
#only("1-")[Druck im 4. Stock = Druck im Erdgeschoss - $ Delta p $]
#v(20pt)
#only("2-")[Druck im 4. Stock = 4 - 1.3734 = 2.6266 bar 🎉]
// Die endgültige Antwort wird über zwei Folien hinweg angezeigt
#only("1")[
#voiceover("Um den tatsächlichen Druck im vierten Stock zu finden, nehmen wir den Druck im Erdgeschoss und ziehen den berechneten Druckunterschied ab.")
]
#only("2")[
#voiceover("Der Druck im vierten Stock beträgt also 4 minus 1.3734, was 2.6266 bar ergibt. Gute Arbeit!")
]
]