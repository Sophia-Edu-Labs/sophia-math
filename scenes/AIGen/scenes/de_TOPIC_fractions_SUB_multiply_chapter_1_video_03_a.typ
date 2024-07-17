#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Brüche multiplizieren]
#v(40pt)
#only("1-")[- Aufgabe: Multipliziere $3/4$ mit $4/5$.]
#v(20pt)
#only("2-")[- Option a) $7/9$]
#v(20pt)
#only("3-")[- Option b) $10/12$]
#v(20pt)
#only("4-")[- Option c) $12/20$]
#v(20pt)
#only("5-")[- Option d) $12/15$]
#only("1")[#voiceover("Leider war das nicht ganz richtig. Lass uns die Lösung Schritt für Schritt durchgehen.")]
#only("2")[#voiceover("Option a) 7/9 ist falsch. Beim Multiplizieren von Brüchen multiplizieren wir die Zähler und die Nenner separat. Hier ergibt 3 mal 4 gleich 12 und 4 mal 5 gleich 20, also ist 7/9 nicht die richtige Antwort.")]
#only("3")[#voiceover("Option b) 10/12 ist ebenfalls falsch. Auch hier ergibt das Multiplizieren der Zähler und Nenner 12/20, nicht 10/12.")]
#only("4")[#voiceover("Option c) 12/20 ist korrekt. Das Multiplizieren der Zähler 3 mal 4 ergibt 12, und das Multiplizieren der Nenner 4 mal 5 ergibt 20. Also ergibt 3/4 mal 4/5 gleich 12/20.")]
#only("5")[#voiceover("Option d) 12/15 ist falsch. Wie besprochen, ergibt die korrekte Multiplikation 12/20.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Den Bruch vereinfachen]
#v(40pt)
#only("1-")[- $12/20$ kann vereinfacht werden.]
#v(20pt)
#only("2-")[- Finde den größten gemeinsamen Teiler (ggT) von $12$ und $20$.]
#v(20pt)
#only("3-")[- Der ggT von $12$ und $20$ ist $4$.]
#v(20pt)
#only("4-")[- Teile sowohl den Zähler als auch den Nenner durch $4$.]
#v(20pt)
#only("5-")[- $12/20$ vereinfacht sich zu $3/5$.]
#only("1")[#voiceover("Nun lass uns den Bruch 12/20 vereinfachen.")]
#only("2")[#voiceover("Um zu vereinfachen, müssen wir den größten gemeinsamen Teiler, oder ggT, von 12 und 20 finden.")]
#only("3")[#voiceover("Der ggT von 12 und 20 ist 4. Das bedeutet, dass 4 die größte Zahl ist, die sowohl 12 als auch 20 ohne Rest teilt.")]
#only("4")[#voiceover("Als nächstes teilen wir sowohl den Zähler als auch den Nenner durch 4.")]
#only("5")[#voiceover("Also vereinfacht sich 12/20 zu 3/5.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Endgültige Antwort]
#v(40pt)
#only("1-")[- Die vereinfachte Antwort ist $3/5$.]
#only("1")[#voiceover("Daher ist die endgültige vereinfachte Antwort 3/5. Gut gemacht!")]
]