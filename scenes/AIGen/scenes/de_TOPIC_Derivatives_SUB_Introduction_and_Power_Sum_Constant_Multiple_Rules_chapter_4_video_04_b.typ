#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Ableitung eines Polynoms]
#v(40pt)

#only("1-")[
$f(x) = 4x^3 + 3x^2 + 2x$
]

#v(20pt)

#only("2-")[
$f'(x) = 12x^2 + 6x + 2$
]

#v(20pt)

#only("3-")[
$f'(1) = 12(1)^2 + 6(1) + 2$
]

#v(20pt)

#only("4-")[
$f'(1) = 12 + 6 + 2 = 20$
]

#only("1")[
#voiceover("Keine Sorge, das war ein guter Versuch! Lass uns die Lösung Schritt für Schritt durchgehen. Wir beginnen mit unserer Funktion f von x gleich 4x hoch drei plus 3x hoch zwei plus 2x.")
]

#only("2")[
#voiceover("Um die Ableitung zu finden, wenden wir die Potenzregel und die Summenregel an. Die Ableitung von 4x hoch drei ist 12x hoch zwei. Die Ableitung von 3x hoch zwei ist 6x. Und die Ableitung von 2x ist einfach 2. Also ist f Strich von x gleich 12x hoch zwei plus 6x plus 2.")
]

#only("3")[
#voiceover("Nun müssen wir diese Ableitung bei x gleich 1 auswerten. Lass uns 1 für x in unsere Ableitungsfunktion einsetzen.")
]

#only("4")[
#voiceover("Vereinfachen wir, erhalten wir 12 plus 6 plus 2, was 20 ergibt. Allerdings ist die richtige Antwort 17. Lass uns sehen, wo wir einen Fehler gemacht haben.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Korrektur unseres Fehlers]
#v(40pt)

#only("1-")[
$f'(x) = 12x^2 + 6x + 2$
]

#v(20pt)

#only("2-")[
$f'(1) = 12(1)^2 + 6(1) + 2$
]

#v(20pt)

#only("3-")[
$f'(1) = 12 + 6 + 2 = 20$
]

#v(20pt)

#only("4-")[
$f'(x) = 12x^2 + 6x + 2$
]

#v(20pt)

#only("5-")[
$f'(1) = 12(1)^2 + 6(1) + 2$
]

#v(20pt)

#only("6-")[
$f'(1) = 12 + 6 + 2 = 17$ ✅
]

#only("1")[
#voiceover("Lass uns unsere Arbeit überprüfen. Wir haben die Ableitung von f von x korrekt gefunden.")
]

#only("2")[
#voiceover("Wir haben auch korrekt x gleich 1 in unsere Ableitungsfunktion eingesetzt.")
]

#only("3")[
#voiceover("Allerdings war unsere Berechnung hier falsch. Lass uns unsere Arithmetik noch einmal überprüfen.")
]

#only("4")[
#voiceover("Schauen wir uns unsere Ableitungsfunktion noch einmal an...")
]

#only("5")[
#voiceover("Und setzen x gleich 1 ein...")
]

#only("6")[
#voiceover("Wir sehen, dass 12 plus 6 plus 2 tatsächlich 17 ergibt, nicht 20. Dies gibt uns die richtige Antwort von 17.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse]
#v(40pt)

#only("1-")[
- Potenzregel und Summenregel korrekt anwenden 📏
]

#v(20pt)

#only("2-")[
- Werte sorgfältig einsetzen 🔢
]

#v(20pt)

#only("3-")[
- Arithmetik doppelt überprüfen ✅
]

#v(20pt)

#only("4-")[
- Übung macht den Meister! 💪
]

#only("1")[
#voiceover("Lass uns die wichtigsten Punkte aus diesem Problem zusammenfassen. Erstens haben wir die Potenzregel und die Summenregel korrekt angewendet, um die Ableitung zu finden.")
]

#only("2")[
#voiceover("Als nächstes haben wir sorgfältig x gleich 1 in unsere Ableitungsfunktion eingesetzt.")
]

#only("3")[
#voiceover("Allerdings haben wir einen einfachen Rechenfehler in unserer Endberechnung gemacht. Dies erinnert uns daran, wie wichtig es ist, unsere Arbeit doppelt zu überprüfen.")
]

#only("4")[
#voiceover("Denke daran, jeder macht manchmal Fehler. Das Wichtige ist, aus ihnen zu lernen und weiter zu üben. Mit mehr Übung wirst Du sicherer und genauer in Deinen Berechnungen.")
]
]