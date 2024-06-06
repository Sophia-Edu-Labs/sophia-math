#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[n-te Wurzeln negativer Zahlen]
#v(40pt)
#only("1-")[- Hängt vom Wert von $n$ ab]
#v(20pt)
#only("2-")[- Wenn $n$ ungerade 🔁 ist, ist die Wurzel reell]
#v(20pt)
#only("3-")[- Wenn $n$ gerade ↔ ist, ist die Wurzel nicht reell]
#only("1")[
#voiceover("Die n-te Wurzel einer negativen Zahl kann reell oder nicht reell sein, abhängig vom Wert von n.")
]
#only("2")[
#voiceover("Wenn n eine ungerade Zahl ist, wie 1, 3, 5 und so weiter, dann ist die n-te Wurzel einer negativen Zahl reell.")
]
#only("3")[
#voiceover("Wenn n jedoch eine gerade Zahl ist, wie 2, 4, 6 und so weiter, dann ist die n-te Wurzel einer negativen Zahl nicht reell.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel: Ungerades n]
#v(40pt)
#only("1-")[Betrachte $root(3, -8)$]
#v(20pt)
#only("2-")[$ root(3, -8) = -2 $, weil $(-2)^3 = -8$]
#v(20pt)
#only("3-")[Also ist $root(3, -8)$ reell 📏]
#only("1")[
#voiceover("Schauen wir uns ein Beispiel an. Betrachte die Kubikwurzel von minus 8, die als $root(3, -8)$ geschrieben wird.")
]
#only("2")[
#voiceover("Die Kubikwurzel von minus 8 ist gleich minus 2, weil minus 2 hoch 3 gleich minus 8 ist.")
]
#only("3")[
#voiceover("Also ist die Kubikwurzel von minus 8, wobei der Index 3 ungerade ist, eine reelle Zahl.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel: Gerades n]
#v(40pt)
#only("1-")[Betrachte $root(2, -9)$]
#v(20pt)
#only("2-")[Keine reelle Zahl $x$ erfüllt $x^2 = -9$]
#v(20pt)
#only("3-")[Also ist $root(2, -9)$ nicht reell 🛇]
#only("1")[
#voiceover("Betrachten wir nun die Quadratwurzel von minus 9, geschrieben als $root(2, -9)$.")
]
#only("2")[
#voiceover("Es gibt keine reelle Zahl, die, wenn sie quadriert wird, gleich minus 9 ist.")
]
#only("3")[
#voiceover("Daher ist die Quadratwurzel von minus 9, wobei der Index 2 gerade ist, keine reelle Zahl.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- n-te Wurzel einer negativen Zahl:]
#v(20pt)
#only("2-")[  - Reell, wenn $n$ ungerade 🔁 ist]
#v(20pt)
#only("3-")[  - Nicht reell, wenn $n$ gerade ↔ ist]
#only("1")[
#voiceover("Zusammenfassend verhält sich die n-te Wurzel einer negativen Zahl unterschiedlich, je nachdem, ob n ungerade oder gerade ist.")
]
#only("2")[
#voiceover("Wenn n ungerade ist, ist die n-te Wurzel einer negativen Zahl reell.")
]
#only("3")[
#voiceover("Aber wenn n gerade ist, ist die n-te Wurzel einer negativen Zahl nicht reell.")
]
]