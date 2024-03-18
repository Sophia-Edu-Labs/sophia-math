#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#set text(lang: "de")
#slide()[
#text(size: 30pt, weight: "bold")[Stochastische Unabhängigkeit]
#v(40pt)
#only("-1")[- A: Ein gezogenes Blatt ist ein Herz]#only("2-3")[#text(fill:green)[- A: Ein gezogenes Blatt ist ein Herz]]
#only("-1")[- B: Das gezogene Blatt ist ein Bube]#only("2-3")[#text(fill:green)[- B: Das gezogene Blatt ist ein Bube]]
#v(20pt)
#only("-2")[- A: Ein gezogenes Blatt ist ein Kreuz]#only("4-")[#text(fill:red)[- A: Ein gezogenes Blatt ist ein Kreuz]]
#only("-2")[- B: Das gezogene Blatt ist schwarz]#only("4-")[#text(fill:red)[- B: Das gezogene Blatt ist schwarz]]
#v(20pt)
#only("-4")[- A: Ein gezogenes Blatt ist ein Ass]#only("5-")[#text(fill:red)[- A: Ein gezogenes Blatt ist ein Ass]]
#only("-4")[- B: Das gezogene Blatt ist ein König]#only("5-")[#text(fill:red)[- B: Das gezogene Blatt ist ein König]]
#only("1")[
#voiceover("Das ist leider falsch. Betrachten wir die drei Kartenspiel-Beispiele nacheinander und überlegen, welches Ereignispaar am ehesten stochastisch unabhängig ist.")
]
#only("2-3")[
#voiceover("Beginnen wir mit A - ein gezogenes Blatt ist ein Herz, und B - das gezogene Blatt ist ein Bube. Die Wahrscheinlichkeit, einen Buben zu ziehen, ist für jede Farbe gleich, nämlich 4 von 52 oder etwa 7,7%. Ob das Blatt ein Herz ist oder nicht, beeinflusst diese Wahrscheinlichkeit nicht. Diese Ereignisse sind also unabhängig.")
]
#only("4")[
#voiceover("Anders sieht es beim zweiten Paar aus: A - ein gezogenes Blatt ist ein Kreuz, und B - das gezogene Blatt ist schwarz. Kreuzkarten sind immer schwarz. Wenn wir also wissen, dass das Blatt ein Kreuz ist, ist die Wahrscheinlichkeit, dass es schwarz ist, 100%. Diese Ereignisse sind definitiv abhängig.")
]
#only("5")[
#voiceover("Auch beim letzten Paar liegt eine Abhängigkeit vor: A - ein gezogenes Blatt ist ein Ass, und B - das gezogene Blatt ist ein König. Ein Blatt kann nicht gleichzeitig ein Ass und ein König sein. Wenn wir wissen, dass es ein Ass ist, ist die Wahrscheinlichkeit, dass es ein König ist, 0%. Auch diese Ereignisse sind also abhängig.")
]
#only("6")[
#voiceover("Zusammenfassend können wir sagen: Nur das erste Paar, 'Ein gezogenes Blatt ist ein Herz' und 'Das gezogene Blatt ist ein Bube', erfüllt die Kriterien für stochastische Unabhängigkeit. Die Farbe des Blattes beeinflusst nicht die Wahrscheinlichkeit, einen Buben zu ziehen, und umgekehrt.")
]
]