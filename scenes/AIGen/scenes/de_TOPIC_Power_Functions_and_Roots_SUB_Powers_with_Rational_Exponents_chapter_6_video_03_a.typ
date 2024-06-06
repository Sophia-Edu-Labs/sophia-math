#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Rationale Exponenten]
// Der Titel "Rationale Exponenten" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[Übung: Vereinfache $((27^(1/3))^2)^3$]
// Die Übung wird ab Folie 1 angezeigt
#only("1")[
#voiceover("Großartig! Das ist die richtige Antwort. Lass uns die Lösung Schritt für Schritt durchgehen.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 1]
#v(40pt)
#only("1-")[Vereinfache zuerst den inneren Exponenten: $27^(1/3)$]
// Der erste Schritt wird ab Folie 1 angezeigt
#v(20pt)
#only("2-")[$27^(1/3) = 3$]
// Die Vereinfachung wird ab Folie 2 angezeigt
#only("1")[
#voiceover("Zuerst vereinfachen wir den innersten Exponenten. 27 hoch 1/3 ist die dritte Wurzel von 27, was 3 ergibt.")
]
#only("2")[
#voiceover("Wir können den Ausdruck also als 3 zum Quadrat, alles hoch 3, umschreiben.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 2]
#v(40pt)
#only("1-")[Vereinfache den mittleren Exponenten: $(3^2)^3$]
// Der zweite Schritt wird ab Folie 1 angezeigt
#v(20pt)
#only("2-")[$3^2 = 9$]
// Die Vereinfachung wird ab Folie 2 angezeigt
#only("1")[
#voiceover("Als nächstes vereinfachen wir den mittleren Exponenten. 3 zum Quadrat ergibt 9.")
]
#only("2")[
#voiceover("Nun wird der Ausdruck zu 9 hoch 3.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 3]
#v(40pt)
#only("1-")[Vereinfache den äußeren Exponenten: $9^3$]
#v(20pt)
#only("2-")[$9^3 = 729$]
#only("1")[
#voiceover("Schließlich vereinfachen wir den äußeren Exponenten. 9 hoch 3 ergibt 729.")
]
#only("2")[
#voiceover("Daher ist der vereinfachte Ausdruck 729.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[
- $((27^(1/3))^2)^3$
- = $((3)^2)^3$
- = $(9)^3$
- = $729$ 🎉
]
// Die Zusammenfassung wird ab Folie 1 angezeigt
#only("1")[
#voiceover("Zusammenfassend haben wir den Ausdruck ((27 hoch 1/3) zum Quadrat) hoch 3 vereinfacht, indem wir vom innersten Exponenten nach außen gearbeitet haben. 27 hoch 1/3 ergibt 3, dann ergibt 3 zum Quadrat 9, und schließlich ergibt 9 hoch 3 729.")
]
]