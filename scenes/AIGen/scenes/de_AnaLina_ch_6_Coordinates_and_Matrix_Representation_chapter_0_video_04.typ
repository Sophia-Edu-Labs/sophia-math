#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Koordinaten Rückblick 📍]
#v(40pt)
#only("1")[
#voiceover("Lassen Sie uns rekapitulieren, was wir über Koordinaten gelernt haben.")
]
#only("2-")[
- Koordinaten identifizieren eindeutig einen Punkt in einem Vektorraum 🎯
]
#only("2")[
#voiceover("Koordinaten sind eine Menge von Zahlen, die einen Punkt in einem Vektorraum eindeutig identifizieren.")
]
#only("3-")[
- Beispiel: $v = mat(3; 4)$ in $RR^2$ hat die Koordinaten $(3, 4)$ 📋
]
#only("3")[
#voiceover("Zum Beispiel hat der Vektor v gleich der Matrix 3; 4 in R 2 die Koordinaten 3, 4.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Basis und Koordinaten 🎛]
#v(40pt)
#only("1-")[
- Koordinaten werden relativ zu einer Basis ausgedrückt 📐
]
#only("1")[
#voiceover("Koordinaten werden relativ zu einer Basis ausgedrückt, die eine Menge von Vektoren ist, die den Vektorraum aufspannen.")
]
#only("2-")[
- Beispiel: $B = (mat(1; 0), mat(0; 1))$ in $RR^2$, $v = mat(2; 3)$ hat die Koordinaten $(2, 3)$ relativ zu $B$ 🧮
]
#only("2")[
#voiceover("Zum Beispiel, wenn B gleich der Matrix 1; 0, 0; 1 in R 2 ist, dann hat der Vektor v gleich 2; 3 die Koordinaten 2, 3 relativ zur Basis B.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Erkenntnisse 🎓]
#v(40pt)
#only("1-")[
- Koordinaten identifizieren eindeutig Punkte in Vektorräumen 🌌
]
#only("1")[
#voiceover("Die wichtigste Erkenntnis ist, dass Koordinaten Punkte in Vektorräumen eindeutig identifizieren.")
]
#only("2-")[
- Koordinaten werden relativ zu einer gewählten Basis ausgedrückt 🧭
]
#only("2")[
#voiceover("Und diese Koordinaten werden immer relativ zu einer gewählten Basis ausgedrückt.")
]
#only("3-")[
- Das Beherrschen von Koordinaten ist entscheidend für die lineare Algebra! 💪
]
#only("3")[
#voiceover("Das Beherrschen des Konzepts der Koordinaten ist entscheidend für Ihre Reise in der linearen Algebra!")
]
]