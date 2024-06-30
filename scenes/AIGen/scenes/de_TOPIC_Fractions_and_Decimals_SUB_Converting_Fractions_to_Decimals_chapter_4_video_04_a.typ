#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Ausgezeichnete Arbeit! Du hast die richtige Antwort. Lass uns die Lösung Schritt für Schritt durchgehen, um zu verstehen, wie wir sieben Achtel in eine Dezimalzahl umwandeln.")
]

#text(size: 30pt, weight: "bold")[Umwandlung von $7/8$ in eine Dezimalzahl]

#v(40pt)

#only("2-")[#text()[$7/8$]]
#only("2")[
#voiceover("Wir beginnen mit dem Bruch sieben Achtel.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Strategie: Multiplizieren mit $125/125$]
#v(40pt)
#only("1-")[- Zähler und Nenner mit 125 multiplizieren ✖️]
#v(20pt)
#only("2-")[- Dadurch wird der Nenner 1000 🎯]
#only("1")[
#voiceover("Unsere Strategie ist es, sowohl den Zähler als auch den Nenner mit 125 zu multiplizieren. Warum 125? Weil 125 mal 8 gleich 1000 ist, was uns einen Bruch über 1000 ergibt.")
]
#only("2")[
#voiceover("Das ist nützlich, weil ein Bruch über 1000 leicht in eine Dezimalzahl umgewandelt werden kann - wir müssen nur das Komma um drei Stellen nach links verschieben.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritt 1: Multiplizieren mit $125/125$]
#v(40pt)
#only("1-")[$7/8 = (7 dot 125)/(8 dot 125)$]
#v(20pt)
#only("2-")[$= 875/1000$]
#only("1")[
#voiceover("Lass uns unseren Bruch mit 125 über 125 multiplizieren. Das ändert den Wert des Bruchs nicht, weil wir mit 1 multiplizieren.")
]
#only("2")[
#voiceover("Sieben mal 125 ist 875, und 8 mal 125 ist 1000. Also ist unser neuer Bruch 875 über 1000.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritt 2: Umwandlung in eine Dezimalzahl]
#v(40pt)
#only("1-")[$875/1000 = 0.875$]
#v(20pt)
#only("2-")[Komma um 3 Stellen nach links verschieben ⬅️]
#only("1")[
#voiceover("Jetzt haben wir 875 über 1000. Um dies in eine Dezimalzahl umzuwandeln, verschieben wir einfach das Komma um drei Stellen nach links.")
]
#only("2")[
#voiceover("Das ergibt 0.875.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Wir haben mit $7/8$ begonnen 📜]
#v(20pt)
#only("2-")[- Wir haben mit $125/125$ multipliziert ✖️]
#v(20pt)
#only("3-")[- Wir haben $875/1000 = 0.875$ erhalten 🎉]
#only("1")[
#voiceover("Zusammenfassend haben wir mit dem Bruch sieben Achtel begonnen.")
]
#only("2")[
#voiceover("Wir haben sowohl den Zähler als auch den Nenner mit 125 multipliziert und 875 über 1000 erhalten.")
]
#only("3")[
#voiceover("Schließlich haben wir 875 über 1000 in die Dezimalzahl 0.875 umgewandelt. Und das ist unsere endgültige Antwort! Gut gemacht!")
]
]