#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Rationale Exponenten vereinfachen]
#v(40pt)
#only("1-")[- Vereinfache $8^(2/3) / 8^(1/3)$]
// Das Problem wird auf Folie 1 dargestellt und bleibt sichtbar
#only("1")[
#voiceover("Großartig! Das ist die richtige Antwort. Lass uns sehen, wie wir den Ausdruck 8 hoch 2/3 geteilt durch 8 hoch 1/3 vereinfachen können.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Erinnere dich an die Regel 📜]
#v(40pt)
#only("1-")[- $a^(m/n) / a^(p/q) = a^((m q-n p)/(n q))$]
// Die Regel zum Teilen von rationalen Exponenten wird gezeigt
#only("1")[
#voiceover("Um dies zu vereinfachen, können wir die Regel für das Teilen von Ausdrücken mit rationalen Exponenten verwenden. Die Regel besagt, dass a hoch m durch n geteilt durch a hoch p durch q gleich a hoch mq minus np durch nq ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Regel anwenden 🧮]
#v(40pt)
#only("1-")[- $8^(2/3) / 8^(1/3) = 8^((2*3-1*3)/(3*3))$]
#only("2-")[- $= 8^((6-3)/(9))$]
#only("3-")[- $= 8^(3/9)$]
// Die Regel wird Schritt für Schritt angewendet
#only("1")[
#voiceover("Lass uns diese Regel auf unser Problem anwenden. Wir haben 8 hoch 2/3 geteilt durch 8 hoch 1/3. Das entspricht 8 hoch 2 mal 3 minus 1 mal 3, alles durch 3 mal 3.")
]
#only("2")[
#voiceover("Wenn wir den Zähler vereinfachen, ist 2 mal 3 gleich 6 und 1 mal 3 gleich 3. Also haben wir 6 minus 3 im Zähler und 3 mal 3, was 9 ist, im Nenner.")
]
#only("3")[
#voiceover("6 minus 3 ist 3. Also ist unsere endgültige vereinfachte Form 8 hoch 3/9.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Weiter vereinfachen 🎨]
#v(40pt)
#only("1-")[- $8^(3/9) = (8^(1/3))^3$]
#only("2-")[- $= 2^3$]
#only("3-")[- $= 8$]
// Der Ausdruck wird weiter vereinfacht
#only("1")[
#voiceover("Wir können dies weiter vereinfachen, indem wir die Potenzregel für Exponenten verwenden. 8 hoch 3/9 kann als 8 hoch 1/3, alles hoch 3, geschrieben werden.")
]
#only("2")[
#voiceover("Nun, 8 hoch 1/3 ist gleich 2. Das liegt daran, dass 2 hoch 3 gleich 8 ist.")
]
#only("3")[
#voiceover("Also haben wir 2 hoch 3, was gleich 8 ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Fazit 🎉]
#v(40pt)
#only("1-")[- $8^(2/3) / 8^(1/3) = 8$]
// Die endgültige Antwort wird gezeigt
#only("1")[
#voiceover("Daher vereinfacht sich 8 hoch 2/3 geteilt durch 8 hoch 1/3 zu 8. Großartige Arbeit beim Lösen dieses Problems!")
]
]