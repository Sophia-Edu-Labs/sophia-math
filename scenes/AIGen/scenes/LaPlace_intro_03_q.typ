#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#text(size: 24pt, weight: "bold")[#align(center)[⚅ Würfeln mit zwei Würfeln ⚅]]
#only("2")[
#voiceover("Stell dir vor, du würfelst zweimal mit einem fairen Würfel.")
]
#v(40pt)
#only("3-")[P(Produkt der Augenzahlen $> 12$)]
#v(40pt)
#only("4-")[- ⚀ $dot$ ⚃ = 4 < 12]
#only("5-")[- ⚄ $dot$ ⚅ = 30 > 12]
#v(40pt)
#only("6-")[
#text()[Laplace Formel:]
$ P(E) = ✔/📊 $
]
#only("3")[
#voiceover("Die Frage lautet nun: Wie groß ist die Wahrscheinlichkeit, dass das Produkt der Augenzahlen bei zweimaligem Würfeln größer als 12 ist?")
]
#only("4")[
#voiceover("Wenn wir zum Beispiel eine eins und eine vier würfeln, beträgt das Produkt 4, also weniger als 12.")
]
#only("5")[
#voiceover("Wenn wir jedoch eine fünf und eine sechs würfeln, beträgt das Produkt 30, also mehr als 12. Berechne nun die Wahrscheinlichkeit, dass das Produkt der Augenzahlen größer als 12 ist.")
]
#only("6")[
#voiceover("Wende dazu die Laplace-Formel an, die besagt, dass die Wahrscheinlichkeit eines Ereignisses gleich der Anzahl der günstigen Ergebnisse geteilt durch die Anzahl der möglichen Ergebnisse ist.")
]
]