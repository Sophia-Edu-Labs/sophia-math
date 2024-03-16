#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#set text(lang: "de")
#slide()[
#text(size: 30pt, weight: "bold")[Stochastische Unabhängigkeit]
#v(40pt)
#only("2-")[
- A: Ein gezogenes Blatt ist ein Herz
- B: Das gezogene Blatt ist ein Bube
]
#v(20pt)
#only("3-")[
- A: Ein gezogenes Blatt ist ein Kreuz
- B: Das gezogene Blatt ist schwarz
]
#v(20pt)
#only("4-")[
- A: Ein gezogenes Blatt ist ein Ass
- B: Das gezogene Blatt ist ein König
]
#v(40pt)
#only("4-")[Welches Paar ist am ehesten #text(weight: "bold")[unabhängig]?]
#only("1")[
#voiceover("Bleiben wir beim Thema Kartenspiel und betrachten drei Ereignispaare. Wieder sollen wir entscheiden, welches davon am ehesten stochastisch unabhängig ist.")
]
#only("2")[
#voiceover("Zuerst: A - ein gezogenes Blatt ist ein Herz, und B - das gezogene Blatt ist ein Bube. Beeinflusst die Tatsache, dass das Blatt aus der Farbe Herz ist, die Wahrscheinlichkeit dafür, einen Buben zu ziehen?")
]
#only("3")[
#voiceover("Nächstes Paar: A - ein gezogenes Blatt ist ein Kreuz, und B - das gezogene Blatt ist schwarz. Hängt die Wahrscheinlichkeit, ein schwarzes Blatt zu ziehen, davon ab, ob das Blatt aus der Farbe Kreuz ist?")
]
#only("4")[
#voiceover("Und zum Schluss: A - ein gezogenes Blatt ist ein Ass, und B - das gezogene Blatt ist ein König. Ändert sich die Wahrscheinlichkeit, einen König zu ziehen, wenn wir wissen, dass es sich um ein Ass handelt?")
]
#only("5")[
#voiceover("Überlege bei jedem Paar sorgfältig, ob das Eintreten des einen Ereignisses wirklich keinen Einfluss auf die Wahrscheinlichkeit des anderen hat. Welches Paar erfüllt diese Bedingung am ehesten?")
]
]
#questionDef(
questionText: "Welches Ereignispaar ist am ehesten stochastisch unabhängig?",
answerOptions: ("A: Herz gezogen, B: Bube gezogen", "A: Kreuz gezogen, B: Schwarze Karte gezogen", "A: Ass gezogen, B: König gezogen"),
correctAnswerIndex: 0,
)
