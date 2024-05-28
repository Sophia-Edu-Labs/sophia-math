#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Gesamteffekt]
#v(40pt)
#only("1-")[- Substitutionseffekt: 5 → 7 Einheiten]
#v(20pt)
#only("2-")[- Einkommenseffekt: 7 → 9 Einheiten]
#v(20pt)
#only("3-")[- Gesamteffekt: ?]
#only("1")[
#voiceover("Großartig! Das ist die richtige Antwort. Lass uns Schritt für Schritt sehen, wie wir dazu kommen. Es wird angegeben, dass der Substitutionseffekt die nachgefragte Menge von 5 auf 7 Einheiten erhöht.")
]
#only("2")[  
#voiceover("Und der Einkommenseffekt erhöht sie weiter von 7 auf 9 Einheiten.")
]
#only("3")[
#voiceover("Nun suchen wir nach dem Gesamteffekt, der die gesamte Änderung der nachgefragten Menge aufgrund beider Effekte kombiniert darstellt.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt-für-Schritt-Lösung]
#v(40pt)
#only("1-")[1. Substitutionseffekt: $7 - 5 = 2$ Einheiten]
#v(20pt)
#only("2-")[2. Einkommenseffekt: $9 - 7 = 2$ Einheiten]
#v(20pt) 
#only("3-")[3. Gesamteffekt: Substitution + Einkommen]
#v(20pt)
#only("4-")[   $= 2 + 2 = 4$ Einheiten]
#v(20pt)
#only("5-")[Also, der Gesamteffekt ist eine Erhöhung um 4 Einheiten. 📈]
#only("1")[
#voiceover("Zuerst quantifizieren wir den Substitutionseffekt. Es ist die Änderung von 5 auf 7 Einheiten, was eine Erhöhung um 2 Einheiten bedeutet.")
]
#only("2")[
#voiceover("Ähnlich ist der Einkommenseffekt die Änderung von 7 auf 9 Einheiten, was ebenfalls eine Erhöhung um 2 Einheiten bedeutet.")  
]
#only("3")[
#voiceover("Nun ist der Gesamteffekt einfach die Summe aus Substitutionseffekt und Einkommenseffekt.")
]
#only("4")[
#voiceover("2 Einheiten aus dem Substitutionseffekt plus 2 Einheiten aus dem Einkommenseffekt ergeben insgesamt 4 Einheiten.")
]
#only("5")[
#voiceover("Daher ist der Gesamteffekt der Preisänderung eine Erhöhung der nachgefragten Menge um 4 Einheiten. Hervorragende Arbeit bei der Lösung dieses Problems!")
]
]