#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Vereinfachung von rationalen Exponenten]
#v(40pt)
#only("1-")[- $a^(m/n) = root(n, a^m)$]
#only("1")[#voiceover("Um Ausdrücke mit rationalen Exponenten zu vereinfachen, verwenden wir die Regel, dass a hoch m durch n gleich der n-te Wurzel aus a hoch m ist.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel 1]
#v(40pt)
#only("1-")[- Vereinfache $16^(1/4)$]
#v(20pt)
#only("2-")[$ 16^(1/4) = root(4, 16^1) $]
#v(20pt)
#only("3-")[$ root(4, 16) = 2 $]
#only("1")[#voiceover("Schauen wir uns ein Beispiel an. Wir wollen 16 hoch ein Viertel vereinfachen.")]
#only("2")[#voiceover("Wir können dies als die vierte Wurzel aus 16 hoch 1 umschreiben.")]
#only("3")[#voiceover("Die vierte Wurzel aus 16 ist gleich 2.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel 2]
#v(40pt)
#only("1-")[- Wandle $root(3, 8)$ in Exponentialform um]
#v(20pt)
#only("2-")[$ root(3, 8) = 8^(1/3) $]
#v(20pt)
#only("3-")[$ 8^(1/3) = 2 $]
#only("1")[#voiceover("Nun wollen wir die dritte Wurzel aus 8 in Exponentialform umwandeln.")]
#only("2")[#voiceover("Die dritte Wurzel aus 8 kann als 8 hoch ein Drittel geschrieben werden.")]
#only("3")[#voiceover("8 hoch ein Drittel ist gleich 2.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- $a^(m/n) = root(n, a^m)$ 🔄]
#v(20pt)
#only("2-")[- Vereinfache durch Umwandlung zwischen den Formen 🧮]
#only("1")[#voiceover("Zusammenfassend können wir Ausdrücke mit rationalen Exponenten vereinfachen, indem wir sie in radikale Form umwandeln, wobei a hoch m durch n gleich der n-te Wurzel aus a hoch m ist.")]
#only("2")[#voiceover("Wir können auch von der radikalen Form in die Exponentialform umwandeln. Durch das Umwandeln zwischen diesen Formen können wir Ausdrücke vereinfachen und Probleme mit rationalen Exponenten lösen.")]
]