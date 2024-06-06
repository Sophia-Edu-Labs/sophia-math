#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Großartige Arbeit! 🎉]
#v(40pt)
#only("1-")[Das ist die richtige Antwort für $root(5, 32)$!]
#only("1")[
#voiceover("Großartige Arbeit! Das ist die richtige Antwort für die 5. Wurzel aus 32!")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt-für-Schritt-Lösung]
#v(40pt)
#only("1-")[- $root(5, 32) = ?$]
#v(20pt)
#only("2-")[- $32 = 2^5$]
#v(20pt)
#only("3-")[- $root(5, 2^5) = 2$]
#only("1")[
#voiceover("Lass uns das Schritt für Schritt lösen. Wir wollen die 5. Wurzel aus 32 finden.")
]
#only("2")[
#voiceover("Zuerst können wir 32 als 2 hoch 5 umschreiben.")
]
#only("3")[
#voiceover("Nun, die 5. Wurzel aus 2 hoch 5 ist einfach 2, weil 2 hoch 5 gleich 32 ergibt.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Überprüfung]
#v(40pt)
#only("1-")[- $2^5 = ?$]
#v(20pt)
#only("2-")[- $2^5 = 2 * 2 * 2 * 2 * 2$]
#v(20pt)
#only("3-")[- $2^5 = 32$]
#only("1")[
#voiceover("Lass uns das überprüfen. Wir müssen prüfen, ob 2 hoch 5 gleich 32 ist.")
]
#only("2")[
#voiceover("2 hoch 5 bedeutet, 2 fünfmal mit sich selbst zu multiplizieren.")
]
#only("3")[
#voiceover("Und tatsächlich, 2 mal 2 mal 2 mal 2 mal 2 ergibt 32.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Fazit]
#v(40pt)
#only("1-")[- $root(5, 32) = 2$ ✅]
#only("1")[
#voiceover("Daher können wir schließen, dass die 5. Wurzel aus 32 gleich 2 ist. Großartige Arbeit!")
]
]