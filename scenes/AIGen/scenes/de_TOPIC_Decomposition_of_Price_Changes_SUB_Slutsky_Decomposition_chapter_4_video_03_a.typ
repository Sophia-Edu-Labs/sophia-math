#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[

#only("1")[
#voiceover("Großartige Arbeit! Das ist die korrekte Slutsky-Gleichung. Lass uns sie Schritt für Schritt durchgehen, um zu verstehen, was jeder Teil darstellt.")
]

#text(size: 30pt, weight: "bold")[Slutsky-Gleichung]

#v(40pt)

#only("2-")[$ x_1 - x_0 = (x_s - x_0) + (x_1 - x_s) $]
// Die Slutsky-Gleichung wird ab Folie 2 angezeigt

#only("2")[
#voiceover("Die Slutsky-Gleichung besagt, dass x Index 1 minus x Index 0 gleich der Menge x Index s minus x Index 0 plus der Menge x Index 1 minus x Index s ist.")
]

]

#slide()[

#text(size: 30pt, weight: "bold")[Komponenten]

#v(40pt)

#only("1-")[- $x_1$: neue nachgefragte Menge 📈]
// x_1 wird ab Folie 1 erklärt

#only("2-")[- $x_0$: anfängliche nachgefragte Menge 🎬]
// x_0 wird ab Folie 2 erklärt

#only("3-")[- $x_s$: nachgefragte Menge aufgrund des Substitutionseffekts 🔄]
// x_s wird ab Folie 3 erklärt

#only("1")[
#voiceover("In dieser Gleichung repräsentiert x Index 1 die neue nachgefragte Menge nach der Preisänderung.")
]

#only("2")[
#voiceover("x Index 0 repräsentiert die anfängliche nachgefragte Menge vor der Preisänderung.")
]

#only("3")[
#voiceover("Und x Index s repräsentiert die nachgefragte Menge aufgrund des Substitutionseffekts, wobei der Nutzen konstant gehalten wird.")
]

]

#slide()[

#text(size: 30pt, weight: "bold")[Interpretation]

#v(40pt)

#only("1-")[$ x_1 - x_0 $]
// Der Gesamteffekt wird ab Folie 1 hervorgehoben

#only("2-")[#align(center)[#text(fill:aqua)[⇓ Gesamteffekt]]]
// Der Gesamteffekt wird ab Folie 2 in Aqua beschriftet

#v(10pt)

#only("3-")[$ (x_s - x_0) $]
// Der Substitutionseffekt wird ab Folie 3 hervorgehoben

#only("4-")[#align(center)[#text(fill:aqua)[⇓ Substitutionseffekt]]]
// Der Substitutionseffekt wird ab Folie 4 in Aqua beschriftet

#v(10pt)

#only("5-")[$ (x_1 - x_s) $]
// Der Einkommenseffekt wird ab Folie 5 hervorgehoben

#only("6-")[#align(center)[#text(fill:aqua)[⇓ Einkommenseffekt]]]
// Der Einkommenseffekt wird ab Folie 6 in Aqua beschriftet

#only("1")[
#voiceover("Die linke Seite der Gleichung, x Index 1 minus x Index 0, repräsentiert den Gesamteffekt der Preisänderung auf die nachgefragte Menge.")
]

#only("3")[
#voiceover("Auf der rechten Seite repräsentiert der erste Term in Klammern, x Index s minus x Index 0, den Substitutionseffekt.")
]

#only("5")[
#voiceover("Der zweite Term in Klammern, x Index 1 minus x Index s, repräsentiert den Einkommenseffekt.")
]

]

#slide()[

#text(size: 30pt, weight: "bold")[Zusammenfassung]

#v(40pt)

#only("1-")[- Die Slutsky-Gleichung zerlegt den Preiseffekt 🔍]

#v(20pt)

#only("2-")[- Gesamteffekt = Substitutionseffekt + Einkommenseffekt ➗]

#v(20pt)

#only("3-")[- Nützlich zur Analyse des Konsumentenverhaltens 🧍‍♂️🛒]

#only("1")[
#voiceover("Zusammenfassend zerlegt die Slutsky-Gleichung den Effekt einer Preisänderung auf die nachgefragte Menge in zwei Teile.")
]

#only("2")[
#voiceover("Der Gesamteffekt ist gleich der Summe aus Substitutionseffekt und Einkommenseffekt.")
]

#only("3")[
#voiceover("Diese Zerlegung ist ein mächtiges Werkzeug, um zu analysieren, wie Konsumenten auf Preisänderungen reagieren, indem sowohl die Änderung der relativen Preise als auch die Änderung der Kaufkraft berücksichtigt werden.")
]

]