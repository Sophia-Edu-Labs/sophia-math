#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Matrix-Multiplikation]
#v(40pt)

#only("1-")[
$A = mat(2, 0; 1, 3; 4, 5)$
#v(20pt)
$B = mat(3, 1; 2, 4)$
]

#only("2-")[
$C = A dot B = mat(?, ?; ?, ?; ?, ?)$
]

#only("3-")[
$C_(11) = 2 dot 3 + 0 dot 2 = 6$
]

#only("4-")[
$C_(12) = 2 dot 1 + 0 dot 4 = 2$
]

#only("5-")[
$C = mat(6, 2; ?, ?; ?, ?)$
]

#only("6-")[
$C_(21) = 1 dot 3 + 3 dot 2 = 9$
]

#only("1")[
#voiceover("Ausgezeichnet! Du hast die richtige Antwort. Lass uns die Lösung Schritt für Schritt durchgehen. Wir beginnen mit zwei Matrizen, A und B.")
]

#only("2")[
#voiceover("Um diese Matrizen zu multiplizieren, erstellen wir eine neue Matrix C mit der gleichen Anzahl von Zeilen wie A und der gleichen Anzahl von Spalten wie B.")
]

#only("3")[
#voiceover("Beginnen wir mit dem Element in der ersten Zeile und der ersten Spalte von C. Wir multiplizieren die erste Zeile von A mit der ersten Spalte von B.")
]

#only("4")[
#voiceover("Als nächstes berechnen wir das Element in der ersten Zeile und der zweiten Spalte von C.")
]

#only("5")[
#voiceover("Jetzt haben wir die erste Zeile unserer Ergebnis-Matrix C.")
]

#only("6")[
#voiceover("Gehen wir zur zweiten Zeile über und berechnen das Element in der zweiten Zeile und der ersten Spalte.")
]
]
```

### Slide 2
```typst

#slide()[
#text(size: 30pt, weight: "bold")[Matrix-Multiplikation (Fortsetzung)]
#v(40pt)

#only("1-")[
$C_(22) = 1 dot 1 + 3 dot 4 = 13$
]

#only("2-")[
$C = mat(6, 2; 9, 13; ?, ?)$
]

#only("3-")[
$C_(31) = 4 dot 3 + 5 dot 2 = 22$
]

#only("4-")[
$C_(32) = 4 dot 1 + 5 dot 4 = 24$
]

#only("5-")[
$C = mat(6, 2; 9, 13; 22, 24)$
]

#only("1")[
#voiceover("Und dann das Element in der zweiten Zeile und der zweiten Spalte.")
]

#only("2")[
#voiceover("Jetzt haben wir zwei Zeilen unserer Ergebnis-Matrix C.")
]

#only("3")[
#voiceover("Für die letzte Zeile berechnen wir das Element in der dritten Zeile und der ersten Spalte.")
]

#only("4")[
#voiceover("Schließlich berechnen wir das letzte Element in der dritten Zeile und der zweiten Spalte.")
]

#only("5")[
#voiceover("Und da haben wir es! Unsere endgültige Ergebnis-Matrix C. Dies zeigt, wie man nicht-quadratische Matrizen multipliziert, bei denen die Anzahl der Spalten in der ersten Matrix mit der Anzahl der Zeilen in der zweiten Matrix übereinstimmt.")
]
]