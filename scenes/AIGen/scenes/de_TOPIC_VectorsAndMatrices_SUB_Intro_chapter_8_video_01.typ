#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Matrix-Multiplikation für nicht-quadratische Matrizen]
#v(40pt)

#only("1-")[🏭 Szenario eines Herstellungsunternehmens]
#v(20pt)
#only("2-")[📊 Produktionsdaten: 3 Produkte, 2 Fabriken]
#v(20pt)
#only("3-")[🧮 Gesamte Produktion berechnen]
#v(20pt)
#only("4-")[➡️ Nicht-quadratische Matrix-Multiplikation]

#only("1")[
#voiceover("Lass uns in die Matrix-Multiplikation für nicht-quadratische Matrizen eintauchen. Um zu verstehen, warum das wichtig ist, stell Dir vor, Du arbeitest für ein Herstellungsunternehmen.")
]

#only("2")[
#voiceover("Dieses Unternehmen produziert drei verschiedene Produkte in zwei Fabriken. Wir haben Produktionsdaten für jedes Produkt in jeder Fabrik, die wir als Matrix darstellen können.")
]

#only("3")[
#voiceover("Nun müssen wir die Gesamtproduktion für jedes Produkt über alle Fabriken berechnen. Hier kommt die nicht-quadratische Matrix-Multiplikation ins Spiel.")
]

#only("4")[
#voiceover("Wir werden die nicht-quadratische Matrix-Multiplikation verwenden, um dieses Problem effizient zu lösen. Lass uns im nächsten Slide sehen, wie das funktioniert.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Verstehen von nicht-quadratischen Matrizen]
#v(40pt)

#only("1-")[📏 Quadratische vs. nicht-quadratische Matrizen]
#v(20pt)
#only("2-")[🔢 Beispiel: Produktionsdaten-Matrix]
#v(20pt)
#only("3-")[$ A = mat(100, 150; 200, 250; 300, 350) $]
#v(20pt)
#only("4-")[3 Zeilen (Produkte) × 2 Spalten (Fabriken)]

#only("1")[
#voiceover("Bevor wir in die Multiplikation eintauchen, lass uns verstehen, was nicht-quadratische Matrizen sind. Im Gegensatz zu quadratischen Matrizen, die eine gleiche Anzahl von Zeilen und Spalten haben, haben nicht-quadratische Matrizen unterschiedliche Anzahlen von Zeilen und Spalten.")
]

#only("2")[
#voiceover("Schauen wir uns unsere Produktionsdaten-Matrix als Beispiel an.")
]

#only("3")[
#voiceover("Hier ist unsere Matrix A. Jede Zeile repräsentiert ein Produkt, und jede Spalte repräsentiert eine Fabrik. Die Zahlen zeigen die Produktionsmengen.")
]

#only("4")[
#voiceover("Diese Matrix hat 3 Zeilen für unsere drei Produkte und 2 Spalten für unsere zwei Fabriken, was sie zu einer nicht-quadratischen Matrix macht.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Multiplikation nicht-quadratischer Matrizen]
#v(40pt)

#only("1-")[🔢 Produktionsdaten: $ A = mat(100, 150; 200, 250; 300, 350) $]
#v(20pt)
#only("2-")[💰 Preisvektor: $ p = mat(10; 15; 20) $]
#v(20pt)
#only("3-")[💡 Ziel: Gesamtwert pro Fabrik]
#v(20pt)
#only("4-")[✖️ Ergebnis: $ p^T A = mat(10, 15, 20) mat(100, 150; 200, 250; 300, 350) $]

#only("1")[
#voiceover("Nun lass uns unsere nicht-quadratischen Matrizen multiplizieren. Wir verwenden unsere Produktionsdaten-Matrix A aus dem vorherigen Slide.")
]

#only("2")[
#voiceover("Wir haben auch einen Preisvektor p, wobei jedes Element den Preis eines Produkts darstellt. Das erste Produkt kostet 10 Dollar, das zweite 15 Dollar und das dritte 20 Dollar.")
]

#only("3")[
#voiceover("Unser Ziel ist es, den Gesamtwert der Produktion für jede Fabrik zu berechnen.")
]

#only("4")[
#voiceover("Um dies zu tun, multiplizieren wir die Transponierte unseres Preisvektors mit unserer Produktionsmatrix. Dies ist ein Beispiel für nicht-quadratische Matrix-Multiplikation, da wir eine 1-mal-3-Matrix mit einer 3-mal-2-Matrix multiplizieren.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung: Nicht-quadratische Matrix-Multiplikation]
#v(40pt)

#only("1-")[🔢 Dimensionen sind wichtig: (m × n) × (n × p) = (m × p)]
#v(20pt)
#only("2-")[💼 Anwendungen in der realen Welt]
#v(20pt)
#only("3-")[🧮 Effiziente Berechnungen mit großen Datensätzen]
#v(20pt)
#only("4-")[🔍 Nächstes: Detaillierter Multiplikationsprozess]

#only("1")[
#voiceover("Zusammenfassend lässt sich sagen, dass die nicht-quadratische Matrix-Multiplikation möglich ist, wenn die Anzahl der Spalten in der ersten Matrix der Anzahl der Zeilen in der zweiten Matrix entspricht. Die resultierende Matrix wird die Anzahl der Zeilen der ersten Matrix und die Anzahl der Spalten der zweiten Matrix haben.")
]

#only("2")[
#voiceover("Dieses Konzept hat viele Anwendungen in der realen Welt, wie unser Herstellungsbeispiel.")
]

#only("3")[
#voiceover("Es ermöglicht uns, effiziente Berechnungen mit großen Datensätzen durchzuführen, indem Informationen aus verschiedenen Quellen kombiniert werden.")
]

#only("4")[
#voiceover("In unserem nächsten Video werden wir tiefer in den Prozess der Multiplikation nicht-quadratischer Matrizen Schritt für Schritt eintauchen.")
]
]