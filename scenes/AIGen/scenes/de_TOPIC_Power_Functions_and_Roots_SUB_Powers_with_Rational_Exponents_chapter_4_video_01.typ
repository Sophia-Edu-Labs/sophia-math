#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Rationale Exponenten mit negativen Basen]
#v(40pt)
#only("1-")[- Erinnern: $a^(m/n) = root(n, a^m)$]
#only("1")[
#voiceover("Erinnern wir uns daran, dass ein rationaler Exponent in der Form m durch n dem n-ten Wurzel von a hoch m entspricht.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Gerader Nenner]
#v(40pt)
#only("1-")[- Betrachte: $(-8)^(1/2)$]
#v(20pt)
#only("2-")[$ (-8)^(1/2) = root(2, (-8)^1) = root(2, -8)$]
#v(20pt)
#only("3-")[$ root(2, -8) = sqrt(-8) = 2i sqrt(2)$]
#only("1")[
#voiceover("Betrachten wir nun eine negative Basis, die mit einem rationalen Exponenten mit geradem Nenner potenziert wird, wie zum Beispiel minus 8 hoch ein Halb.")
]
#only("2")[
#voiceover("Dies entspricht dem Quadratwurzel von minus 8, da der Nenner 2 und der Zähler 1 ist.")
]
#only("3")[
#voiceover("Die Quadratwurzel von minus 8 ist eine komplexe Zahl, genauer gesagt 2i mal die Quadratwurzel von 2, wobei i die imaginäre Einheit ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Ungerader Nenner]
#v(40pt)
#only("1-")[- Betrachte: $(-8)^(1/3)$]
#v(20pt)
#only("2-")[$ (-8)^(1/3) = root(3, (-8)^1) = root(3, -8)$]
#v(20pt)
#only("3-")[$ root(3, -8) = -2$]
#only("1")[
#voiceover("Im Gegensatz dazu, wenn der Nenner ungerade ist, wie bei minus 8 hoch ein Drittel...")
]
#only("2")[
#voiceover("...entspricht dies dem Kubikwurzel von minus 8.")
]
#only("3")[
#voiceover("Die Kubikwurzel von minus 8 ist eine reelle Zahl, genauer gesagt minus 2.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Rationale Exponenten mit negativen Basen 📉]
#v(20pt)
#only("2-")[- Gerader Nenner ➡ Komplexes Ergebnis 🌀]
#v(20pt)
#only("3-")[- Ungerader Nenner ➡ Reelles Ergebnis 📏]
#only("1")[
#voiceover("Zusammenfassend, wenn man mit rationalen Exponenten mit negativen Basen arbeitet...")
]
#only("2")[
#voiceover("...wenn der Nenner des Exponenten gerade ist, kann das Ergebnis eine komplexe Zahl sein.")
]
#only("3")[
#voiceover("Wenn der Nenner jedoch ungerade ist, wird das Ergebnis immer eine reelle Zahl sein.")
]
]