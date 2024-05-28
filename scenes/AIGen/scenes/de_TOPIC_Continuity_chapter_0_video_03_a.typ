#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Grenzwert von $f(x) = 2x + 3$ wenn $x$ gegen 1 geht]
#v(40pt)
#only("1-")[- Gegeben: $f(x) = 2x + 3$]
#v(20pt)
#only("2-")[- Wir wollen finden: $lim_(x -> 1) f(x)$]
#v(20pt)
#only("3-")[- Ansatz: Direkte Substitution 🔀]
#only("1")[
#voiceover("Gut, lass uns dieses Problem Schritt für Schritt angehen. Gegeben ist die Funktion f von x gleich 2x plus 3.")
]
#only("2")[
#voiceover("Unser Ziel ist es, den Grenzwert dieser Funktion zu finden, wenn x gegen 1 geht.")
]
#only("3")[
#voiceover("Dazu verwenden wir die Methode der direkten Substitution.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 1: Substituieren]
#v(40pt)
#only("1-")[- $lim_(x -> 1) f(x) = lim_(x -> 1) (2x + 3)$]
#v(20pt)
#only("2-")[- Substituiere $x = 1$:]
#v(20pt)
#only("3-")[- $= 2(1) + 3$]
#only("1")[
#voiceover("Zuerst schreiben wir den Grenzwertausdruck auf und ersetzen die Funktion f von x durch ihre Definition 2x plus 3.")
]
#only("2")[
#voiceover("Als nächstes setzen wir x direkt durch 1 in den Ausdruck ein.")
]
#only("3")[
#voiceover("Das ergibt 2 mal 1 plus 3.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 2: Vereinfachen]
#v(40pt)
#only("1-")[- $lim_(x -> 1) f(x) = 2(1) + 3$]
#v(20pt)
#only("2-")[- Vereinfache: $= 2 + 3$]
#v(20pt)
#only("3-")[- $= 5$ ✅]
#only("1")[
#voiceover("Nun haben wir den vereinfachten Ausdruck nach der Substitution: 2 mal 1 plus 3.")
]
#only("2")[
#voiceover("Lass uns das weiter vereinfachen. 2 mal 1 ist 2, plus 3 ist...")
]
#only("3")[
#voiceover("5! Daher ist der Grenzwert von f von x, wenn x gegen 1 geht, gleich 5. Gute Arbeit!")
]
]