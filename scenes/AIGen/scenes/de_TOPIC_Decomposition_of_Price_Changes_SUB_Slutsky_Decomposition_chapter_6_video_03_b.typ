#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Problem]
#v(40pt)
- Der Preis von Gut X sinkt von $\$10$ auf $\$8$
- Die insgesamt nachgefragte Menge steigt von $5$ auf $9$ Einheiten
- Der Substitutionseffekt erhöht die nachgefragte Menge auf $7$ Einheiten
#v(40pt)
#text(size: 30pt, weight: "bold")[Frage]
#v(40pt)
Was ist der Einkommenseffekt? 🤔
#only("1")[
#voiceover("Leider ist das nicht korrekt. Lass uns die Lösung Schritt für Schritt durchgehen.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 1: Erinnere dich an die Slutsky-Zerlegung]
#v(40pt)
$"Gesamteffekt" = "Substitutionseffekt" + "Einkommenseffekt"$
#v(40pt)
#text(size: 30pt, weight: "bold")[Gegeben]
#v(40pt)
- Gesamteffekt: $9 - 5 = 4$ Einheiten
- Substitutionseffekt: $7 - 5 = 2$ Einheiten
#only("1")[
#voiceover("Zuerst erinnern wir uns an die Slutsky-Zerlegung. Sie besagt, dass der Gesamteffekt gleich dem Substitutionseffekt plus dem Einkommenseffekt ist.")
]
#only("2")[
#voiceover("Es ist gegeben, dass der Gesamteffekt eine Zunahme von 5 auf 9 Einheiten ist, was 4 Einheiten entspricht. Und der Substitutionseffekt ist eine Zunahme von 5 auf 7 Einheiten, was 2 Einheiten entspricht.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 2: Einkommenseffekt berechnen]
#v(40pt)
$"Einkommenseffekt" = "Gesamteffekt" - "Substitutionseffekt"$
#v(20pt)
$"Einkommenseffekt" = 4 - 2 = 2$ Einheiten
#v(40pt)
#text(size: 30pt, weight: "bold")[Antwort]
#v(40pt)
Der Einkommenseffekt ist eine Zunahme von $2$ Einheiten. ✅
#only("1")[
#voiceover("Nun können wir den Einkommenseffekt berechnen. Er ist der Gesamteffekt minus dem Substitutionseffekt.")
]
#only("2")[
#voiceover("Setzen wir die Werte ein, erhalten wir: Der Einkommenseffekt ist gleich 4 minus 2, was 2 Einheiten entspricht.")
]
#only("3")[
#voiceover("Daher beträgt der Einkommenseffekt eine Zunahme von 2 Einheiten. Hervorragende Arbeit!")
]
]