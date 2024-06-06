#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Rationale Exponenten]
#v(40pt)
#only("1-")[- Eine andere Möglichkeit, Wurzeln darzustellen 🌳]
#v(20pt)
#only("2-")[- Allgemeine Form: $a^(m/n) = root(n, a^m)$]
#only("1")[
#voiceover("Rationale Exponenten bieten eine weitere Möglichkeit, Wurzeln darzustellen.")
]
#only("2")[
#voiceover("Die allgemeine Form eines rationalen Exponenten ist a hoch m durch n, was gleich der n-ten Wurzel von a hoch m ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel 1]
#v(40pt)
#only("1-")[$ a^(1/2) = root(2, a) = sqrt(a) $]
#only("1")[
#voiceover("Zum Beispiel ist a hoch ein Halb gleich der Quadratwurzel von a.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel 2]
#v(40pt)
#only("1-")[$ 8^(1/3) = root(3, 8) = 2 $]
#only("1")[
#voiceover("Ähnlich ist 8 hoch ein Drittel gleich der Kubikwurzel von 8, was 2 ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel 3]
#v(40pt)
#only("1-")[$ 16^(3/4) = root(4, 16^3) = root(4, 4096) = 8 $]
#only("1")[
#voiceover("Ein komplexeres Beispiel: 16 hoch drei Viertel ist gleich der vierten Wurzel von 16 hoch drei, was der vierten Wurzel von 4096 entspricht, was 8 ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Rationale Exponenten: $a^(m/n) = root(n, a^m)$ 📝]
#v(20pt)
#only("2-")[- Nützlich zum Vereinfachen von Ausdrücken 🧮]
#v(20pt)
#only("3-")[- Merke dir die allgemeine Form! 🎯]
#only("1")[
#voiceover("Zusammenfassend bieten rationale Exponenten eine prägnante Möglichkeit, Wurzeln darzustellen.")
]
#only("2")[
#voiceover("Sie sind nützlich zum Vereinfachen von Ausdrücken, die sowohl Exponenten als auch Wurzeln enthalten.")
]
#only("3")[
#voiceover("Denke daran, a hoch m durch n ist gleich der n-ten Wurzel von a hoch m.")
]
]