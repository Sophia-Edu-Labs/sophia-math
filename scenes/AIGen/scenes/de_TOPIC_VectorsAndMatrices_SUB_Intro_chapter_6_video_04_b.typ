#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Matrixmultiplikation]
#v(40pt)

#only("1-")[
$A = mat(3, 0; 2, 1)$ und $B = mat(1, 2; 4, 3)$
]

#v(20pt)

#only("2-")[
$C = A dot B = mat(3, 0; 2, 1) dot mat(1, 2; 4, 3)$
]

#v(20pt)

#only("3-")[
$= mat((3 dot 1 + 0 dot 4), (3 dot 2 + 0 dot 3); (2 dot 1 + 1 dot 4), (2 dot 2 + 1 dot 3))$
]

#v(20pt)

#only("4-")[
$= mat(3, 6; 6, 7)$
]

#only("1")[
#voiceover("Keine Sorge, das war ein schwieriges Problem. Lass uns die Lösung Schritt für Schritt durchgehen. Wir beginnen mit zwei Matrizen, A und B.")
]

#only("2")[
#voiceover("Um diese Matrizen zu multiplizieren, verwenden wir die Standardmethode der Matrixmultiplikation. Wir multiplizieren jede Zeile der ersten Matrix mit jeder Spalte der zweiten Matrix.")
]

#only("3")[
#voiceover("Lass es uns aufschlüsseln. Für das Element oben links multiplizieren wir 3 mit 1 und 0 mit 4, dann addieren wir diese Ergebnisse. Für das Element oben rechts multiplizieren wir 3 mit 2 und 0 mit 3, dann addieren wir. Dasselbe machen wir für die untere Zeile.")
]

#only("4")[
#voiceover("Nach diesen Berechnungen erhalten wir unser Endergebnis: eine 2x2-Matrix mit den Elementen 3, 6, 6 und 7.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Detaillierte Berechnung]
#v(40pt)

#only("1-")[
Element oben links: $3 dot 1 + 0 dot 4 = 3 + 0 = 3$
]

#v(20pt)

#only("2-")[
Element oben rechts: $3 dot 2 + 0 dot 3 = 6 + 0 = 6$
]

#v(20pt)

#only("3-")[
Element unten links: $2 dot 1 + 1 dot 4 = 2 + 4 = 6$
]

#v(20pt)

#only("4-")[
Element unten rechts: $2 dot 2 + 1 dot 3 = 4 + 3 = 7$
]

#only("1")[
#voiceover("Schauen wir uns jedes Element der resultierenden Matrix im Detail an. Für das Element oben links multiplizieren wir 3 mit 1 und addieren es zu 0 mal 4. Das ergibt 3 plus 0, was gleich 3 ist.")
]

#only("2")[
#voiceover("Für das Element oben rechts multiplizieren wir 3 mit 2 und addieren es zu 0 mal 3. Das ergibt 6 plus 0, was gleich 6 ist.")
]

#only("3")[
#voiceover("Für das Element unten links multiplizieren wir 2 mit 1 und addieren es zu 1 mal 4. Das ergibt 2 plus 4, was gleich 6 ist.")
]

#only("4")[
#voiceover("Schließlich multiplizieren wir für das Element unten rechts 2 mit 2 und addieren es zu 1 mal 3. Das ergibt 4 plus 3, was gleich 7 ist.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Endergebnis]
#v(40pt)

#only("1-")[
$C = A dot B = mat(3, 6; 6, 7)$
]

#v(20pt)

#only("2-")[
✅ Korrekte Lösung!
]

#v(20pt)

#only("3-")[
💡 Denke daran: Bei der Matrixmultiplikation muss die Anzahl der Spalten der ersten Matrix gleich der Anzahl der Zeilen der zweiten Matrix sein.
]

#only("1")[
#voiceover("Also, unser Endergebnis für die Matrixmultiplikation von A und B ist diese 2x2-Matrix. Dies ist in der Tat die richtige Antwort!")
]

#only("2")[
#voiceover("Du hast hervorragende Arbeit bei der Lösung dieses Problems geleistet. Matrixmultiplikation kann knifflig sein, aber du hast es gut gemeistert.")
]

#only("3")[
#voiceover("Als kurze Erinnerung: Überprüfe immer, ob die Dimensionen deiner Matrizen eine Multiplikation zulassen. Die Anzahl der Spalten der ersten Matrix muss gleich der Anzahl der Zeilen der zweiten Matrix sein. Übe weiter, und du wirst noch besser in Matrixoperationen!")
]
]