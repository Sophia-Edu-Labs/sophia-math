#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Ausgezeichnete Arbeit! Du hast die richtige Antwort. Lass uns die Lösung Schritt für Schritt durchgehen, um zu verstehen, wie wir $27/4$ in eine Dezimalzahl umwandeln.")
]

#text(size: 30pt, weight: "bold")[Brüche in Dezimalzahlen umwandeln]

#v(40pt)

#only("2-")[#text()[$27/4$]]
#only("2")[
#voiceover("Wir beginnen mit dem Bruch siebenundzwanzig durch vier.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Ansatz: Mit $25/25$ multiplizieren]
#v(40pt)
#only("1-")[- Zähler und Nenner mit 25 multiplizieren ✖️]
#v(20pt)
#only("2-")[- Dadurch wird der Nenner 100 💯]
#only("1")[
#voiceover("Unser Ansatz ist es, sowohl den Zähler als auch den Nenner mit 25 zu multiplizieren.")
]
#only("2")[
#voiceover("Das ist ein cleverer Trick, weil der Nenner dadurch 100 wird, was leicht in eine Dezimalzahl umgewandelt werden kann.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritt 1: Multiplikation]
#v(40pt)
#only("1-")[$(27/4) * (25/25) = (27*25)/(4*25)$]
#v(20pt)
#only("2-")[$= 675/100$]
#only("1")[
#voiceover("Lass uns siebenundzwanzig durch vier mit fünfundzwanzig durch fünfundzwanzig multiplizieren. Das ändert den Wert des Bruchs nicht, weil wir mit 1 multiplizieren.")
]
#only("2")[
#voiceover("Wenn wir multiplizieren, erhalten wir sechshundertfünfundsiebzig durch hundert.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritt 2: In Dezimalzahl umwandeln]
#v(40pt)
#only("1-")[- $675/100 = 6.75$]
#v(20pt)
#only("2-")[- Dezimalpunkt um 2 Stellen nach links verschieben ⬅️]
#only("1")[
#voiceover("Jetzt haben wir sechshundertfünfundsiebzig durch hundert. Um dies in eine Dezimalzahl umzuwandeln, verschieben wir einfach den Dezimalpunkt in 675 um zwei Stellen nach links.")
]
#only("2")[
#voiceover("Das ergibt sechs Komma fünfundsiebzig.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Endgültige Antwort]
#v(40pt)
#only("1-")[#text(size: 24pt)[27/4 als Dezimalzahl ist 6.75]]
#v(40pt)
#only("2-")[💡 Denke daran: $675/100 = 6.75$]
#only("1")[
#voiceover("Also, unsere endgültige Antwort ist, dass siebenundzwanzig durch vier als Dezimalzahl sechs Komma fünfundsiebzig ist.")
]
#only("2")[
#voiceover("Denke daran, wenn wir einen Bruch durch hundert haben, können wir ihn leicht in eine Dezimalzahl umwandeln, indem wir den Dezimalpunkt um zwei Stellen nach links verschieben.")
]
]