#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Potenzregel für rationale Exponenten]
#v(40pt)
#only("1-")[$ (a^(m/n))^p = a^((m p)/n) $]
#only("1")[
#voiceover("Die Potenzregel für rationale Exponenten besagt, dass a hoch m durch n, hoch p, gleich a hoch mp durch n ist.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Beispiel]
#v(40pt)
#only("1-")[$ (2^(3/4))^2 = 2^((3 dot 2)/4) = 2^(6/4) = 2^(3/2) = 2 sqrt(2) $]
#only("1")[
#voiceover("Schauen wir uns ein Beispiel an. Betrachte 2 hoch 3/4, hoch 2. Gemäß der Potenzregel entspricht dies 2 hoch 3 mal 2, durch 4. Vereinfacht ergibt das 2 hoch 6/4, was 2 hoch 3/2 ist. Dies kann als 2 mal die Quadratwurzel von 2 geschrieben werden.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Erklärung]
#v(40pt)
#only("1-")[- Multiplikation von Exponenten: $(a^m)^n = a^(m n)$ 🧮]
#v(20pt)
#only("2-")[- Rationale Exponenten: $a^(m/n) = root(n, a^m)$ ⚖]
#only("1")[
#voiceover("Die Potenzregel für rationale Exponenten basiert auf zwei wichtigen Konzepten. Erstens, wenn man Exponenten mit derselben Basis multipliziert, addiert man die Exponenten. Zum Beispiel, a hoch m, hoch n, entspricht a hoch mn.")
]
#only("2")[
#voiceover("Zweitens stellt ein rationaler Exponent eine Wurzel dar. Genauer gesagt, a hoch m durch n entspricht der n-ten Wurzel von a hoch m.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Beweis]
#v(40pt)
#only("1-")[$ (a^(m/n))^p = (root(n, a^m))^p $]
#v(20pt)
#only("2-")[$ = root(n, a^m) dot root(n, a^m) dot ... dot root(n, a^m) $ #text(fill: gray)[(p mal)]]
#v(20pt)
#only("3-")[$ = root(n, a^(m p)) $]
#v(20pt)
#only("4-")[$ = a^((m p)/n) $]
#only("1")[
#voiceover("Lass uns diese Regel beweisen. Wir beginnen damit, a hoch m durch n, hoch p, unter Verwendung der Definition von rationalen Exponenten auszudrücken.")
]
#only("2")[
#voiceover("Dies entspricht der n-ten Wurzel von a hoch m, multipliziert mit sich selbst p mal.")
]
#only("3")[
#voiceover("Unter Verwendung der Eigenschaft von Wurzeln vereinfacht sich dies zur n-ten Wurzel von a hoch mp.")
]
#only("4")[
#voiceover("Schließlich können wir dies unter Verwendung der Definition von rationalen Exponenten umschreiben, was uns a hoch mp durch n gibt, was die Potenzregel für rationale Exponenten ist.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Potenzregel für rationale Exponenten: $(a^(m/n))^p = a^((m p)/n)$ 📏]
#v(20pt)
#only("2-")[- Basierend auf der Multiplikation von Exponenten und der Definition von rationalen Exponenten 🎓]
#only("1")[
#voiceover("Zusammenfassend besagt die Potenzregel für rationale Exponenten, dass a hoch m durch n, hoch p, gleich a hoch mp durch n ist.")
]
#only("2")[
#voiceover("Diese Regel basiert auf den Eigenschaften der Multiplikation von Exponenten und der Definition von rationalen Exponenten als Wurzeln.")
]
]