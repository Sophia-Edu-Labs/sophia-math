#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Keine Sorge, das war eine knifflige Frage. Lass uns die Lösung Schritt für Schritt durchgehen und sehen, wie man sowohl den Zähler als auch den Nenner mit 25 multipliziert.")
]

#text(size: 30pt, weight: "bold")[Umwandlung von 17/4 in eine Dezimalzahl]

#v(40pt)

#only("2-")[#text()[$17/4$]]
#only("2")[
#voiceover("Wir beginnen mit dem Bruch siebzehn Viertel.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritt 1: Multipliziere mit 25/25]
#v(40pt)
#only("1-")[$ 17/4 = (17 × 25) / (4 × 25) $]
#v(20pt)
#only("2-")[$ = 425 / 100 $]
#only("1")[
#voiceover("Unser erster Schritt ist es, sowohl den Zähler als auch den Nenner mit 25 zu multiplizieren. Dies entspricht dem Multiplizieren mit 1, sodass sich der Wert des Bruchs nicht ändert. Wir tun dies, weil 25 mal 4 gleich 100 ist, was uns einen Nenner von 100 gibt.")
]
#only("2")[
#voiceover("Nach der Multiplikation erhalten wir 425 Hundertstel.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritt 2: Umwandlung in eine Dezimalzahl]
#v(40pt)
#only("1-")[$ 425 / 100 = 4.25 $]
#v(20pt)
#only("2-")[💡 Dezimalpunkt vor der zweitletzten Ziffer]
#only("1")[
#voiceover("Nun können wir dies leicht in eine Dezimalzahl umwandeln. 425 geteilt durch 100 ist 4,25.")
]
#only("2")[
#voiceover("Beachte, dass wir beim Teilen durch 100 den Dezimalpunkt einfach um zwei Stellen nach links verschieben. Dies platziert den Dezimalpunkt vor der zweitletzten Ziffer.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Endgültige Antwort]
#v(40pt)
#only("1-")[$ 17/4 = 4.25 $]
#v(20pt)
#only("2-")[✅ Äquivalente Dezimalzahl: 4,25]
#only("1")[
#voiceover("Daher lautet unsere endgültige Antwort, dass 17 Viertel als Dezimalzahl 4,25 ist.")
]
#only("2")[
#voiceover("Diese Methode, mit 25 über 25 zu multiplizieren, ist besonders nützlich, wenn man mit Brüchen zu tun hat, die 4 als Nenner haben, da sie schnell in einen äquivalenten Bruch über 100 umgewandelt werden, der leicht als Dezimalzahl geschrieben werden kann.")
]
]