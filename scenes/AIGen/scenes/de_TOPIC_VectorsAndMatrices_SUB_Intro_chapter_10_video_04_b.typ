#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Matrix Addition]
#v(40pt)

#only("1-")[
$A = mat(2, 1; 0, -1; 3, 2)$
]

#v(20pt)

#only("2-")[
$B = mat(1, -1; 4, 0; -2, 5)$
]

#v(20pt)

#only("3-")[
$A + B = mat(3, 0; 4, -1; 1, 7)$
]

#only("1")[
#voiceover("Leider ist das nicht korrekt. Lass uns die Lösung Schritt für Schritt durchgehen. Zuerst schauen wir uns die Matrix A an.")
]

#only("2")[
#voiceover("Nun schauen wir uns die Matrix B an.")
]

#only("3")[
#voiceover("Um diese Matrizen zu addieren, addieren wir die entsprechenden Elemente. Lass uns dies Schritt für Schritt tun.")
]
]
```

### Slide 2
```typst

#slide()[
#text(size: 30pt, weight: "bold")[Matrix Addition (Fortsetzung)]
#v(40pt)

#only("1")[
#voiceover("Für das erste Element haben wir 2 plus 1, was 3 ergibt.")
]

#only("2")[
#voiceover("Für das zweite Element haben wir 1 plus minus 1, was 0 ergibt.")
]

#only("3")[
#voiceover("Für das dritte Element haben wir 0 plus 4, was 4 ergibt.")
]

#only("4")[
#voiceover("Für das vierte Element haben wir minus 1 plus 0, was minus 1 ergibt.")
]

#only("5")[
#voiceover("Für das fünfte Element haben wir 3 plus minus 2, was 1 ergibt.")
]

#only("6")[
#voiceover("Und für das letzte Element haben wir 2 plus 5, was 7 ergibt.")
]

#only("7")[
#voiceover("Somit erhalten wir die resultierende Matrix wie gezeigt. Dies ist tatsächlich die richtige Antwort!")
]
]