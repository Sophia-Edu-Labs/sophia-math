#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#set text(lang: "de")
#slide()[
#only("1-")[
#text(size: 26pt, weight: "bold")[⚅ Dreimaliger Würfelwurf ⚀]
#v(40pt)
]
#only("2-")[
- Wie lautet die Mächtigkeit des Ergebnisraums?
]
#only("3-")[
#text(size: 32pt, weight: "bold")[
$ |Omega|=? $
]
]
#only("1")[
#voiceover("Betrachten wir jetzt einen dreimaligen Würfelwurf.")
]
#only("2")[
#voiceover("Was ist für dieses Zufallsexperiment die Mächtigkeit des Ergebnisraums?")
]
#only("3")[
#voiceover("Diese können wir auch mit dem Omega umgeben von zwei senkrechten Strichen darstellen, das ist dann die Mengenschreibweise...")
]
]