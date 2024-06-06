#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Komplexe n-te Wurzeln]
#v(40pt)
#only("1-")[- $root(6, -64)$ = ?]
#only("2-")[- $root(6, -64) = root(6, -1 * 64)$]
#only("3-")[- $root(6, -64) = root(6, -1) * root(6, 64)$]
#only("4-")[- $root(6, -64) = -1^(1/6) * 2$]
#only("5-")[- $root(6, -64) = (cos(π/6) + i*sin(π/6)) * 2$]
#only("6-")[- $root(6, -64) = cos(π/6)*2 + i*sin(π/6)*2$]
#only("7-")[- $root(6, -64) = sqrt(3) + i$]
#only("1")[
#voiceover("Großartige Arbeit! Das ist die richtige Antwort. Schauen wir uns an, wie wir das Schritt für Schritt lösen können.")
]
#only("2")[
#voiceover("Zuerst können wir die negative 64 als -1 mal 64 umschreiben. Das liegt daran, dass die sechste Wurzel einer negativen Zahl eine komplexe Zahl ist.")
]
#only("3")[
#voiceover("Nun können wir die Eigenschaft der Wurzeln nutzen, die besagt, dass die Wurzel eines Produkts das Produkt der Wurzeln ist. Also ist die sechste Wurzel von -64 die sechste Wurzel von -1 mal die sechste Wurzel von 64.")
]
#only("4")[
#voiceover("Die sechste Wurzel von 64 ist einfach 2. Für die sechste Wurzel von -1 können wir die Eulersche Formel verwenden. Diese besagt, dass die n-te Wurzel von -1 gleich cos(π/n) plus i*sin(π/n) ist.")
]
#only("5")[
#voiceover("Wenden wir diese Formel an, erhalten wir cos(π/6) plus i*sin(π/6), alles multipliziert mit 2.")
]
#only("6")[
#voiceover("Verteilen wir die 2, erhalten wir 2 mal cos(π/6) plus 2 mal i*sin(π/6).")
]
#only("7")[
#voiceover("Schließlich können wir vereinfachen. Cos(π/6) ist gleich der Quadratwurzel von 3 durch 2, und sin(π/6) ist 1/2. Multiplizieren wir diese mit 2, erhalten wir die Quadratwurzel von 3 plus i.")
]
]