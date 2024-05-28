#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Beispiel: Preisrückgang]
#v(40pt)
#only("1-")[Betrachten wir einen Rückgang des Preises von Gut X 💸]
#v(20pt)
#only("2-")[Anfangspreis: $p_0$, Nachgefragte Menge: $x_0$]
#v(20pt)
#only("3-")[Neuer Preis: $p_1$, Nachgefragte Menge: $x_1$]
#only("1")[
#voiceover("Betrachten wir ein Beispiel, bei dem der Preis von Gut X sinkt.")
]
#only("2")[
#voiceover("Anfangs, bei einem Preis von p_0, beträgt die nachgefragte Menge x_0.")
]
#only("3")[
#voiceover("Nach dem Preisrückgang auf p_1 steigt die nachgefragte Menge auf x_1.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Gesamteffekt]
#v(40pt)
#only("1-")[Gesamteffekt: $x_1 - x_0$ 📈]
#v(20pt)
#only("2-")[Zerlegt in:]
#v(20pt)
#only("3-")[1. Substitutionseffekt 🔄]
#v(20pt)
#only("4-")[2. Einkommenseffekt 💰]
#only("1")[
#voiceover("Der Gesamteffekt der Preisänderung ist die Differenz zwischen der neuen nachgefragten Menge, x_1, und der anfänglichen nachgefragten Menge, x_0.")
]
#only("2")[
#voiceover("Dieser Gesamteffekt kann in zwei Teile zerlegt werden:")
]
#only("3")[
#voiceover("Erstens der Substitutionseffekt, der die Veränderung im Konsum aufgrund der Änderung der relativen Preise darstellt, wobei der Nutzen konstant gehalten wird.")
]
#only("4")[
#voiceover("Und zweitens der Einkommenseffekt, der die Veränderung im Konsum aufgrund der Änderung der Kaufkraft darstellt, da der Preisrückgang das reale Einkommen des Verbrauchers effektiv erhöht.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Substitutionseffekt]
#v(40pt)
#only("1-")[Substitutionseffekt: $x_s - x_0$ 🔄]
#v(20pt)
#only("2-")[Wobei $x_s$ die nachgefragte Menge bei $p_1$ ist, unter der Annahme konstanten Nutzens]
#v(20pt)
#only("3-")[Stellt die Veränderung im Konsum aufgrund der Änderung der relativen Preise dar 📉]
#only("1")[
#voiceover("Der Substitutionseffekt ist die Differenz zwischen x_s und x_0.")
]
#only("2")[
#voiceover("Hierbei ist x_s die Menge, die bei dem neuen Preis p_1 nachgefragt würde, wenn das Nutzenniveau des Verbrauchers auf dem anfänglichen Niveau gehalten würde.")
]
#only("3")[
#voiceover("Der Substitutionseffekt stellt die Veränderung im Konsum dar, die rein auf die Änderung des relativen Preises von Gut X zurückzuführen ist, da es im Vergleich zu anderen Gütern relativ günstiger wird.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Einkommenseffekt]
#v(40pt)
#only("1-")[Einkommenseffekt: $x_1 - x_s$ 💰]
#v(20pt)
#only("2-")[Stellt die Veränderung im Konsum aufgrund der Erhöhung der Kaufkraft dar 💪]
#v(20pt)
#only("3-")[Da der Preis sinkt, kann der Verbraucher mehr von allen Gütern kaufen 🛒]
#only("1")[
#voiceover("Der Einkommenseffekt ist die Differenz zwischen x_1 und x_s.")
]
#only("2")[
#voiceover("Er stellt die Veränderung im Konsum dar, die auf die Erhöhung der Kaufkraft des Verbrauchers zurückzuführen ist.")
]
#only("3")[
#voiceover("Da der Preis von Gut X sinkt, erhöht sich das reale Einkommen des Verbrauchers effektiv, wodurch er sich mehr von allen Gütern, einschließlich Gut X, leisten kann.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Slutsky-Gleichung]
#v(40pt)
#only("1-")[Slutsky-Gleichung: $x_1 - x_0 = (x_s - x_0) + (x_1 - x_s)$]
#v(20pt)
#only("2-")[Gesamteffekt = Substitutionseffekt + Einkommenseffekt]
#v(20pt)
#only("3-")[Zerlegt die gesamte Veränderung der nachgefragten Menge 📊]
#only("1")[
#voiceover("Die Slutsky-Gleichung besagt, dass der Gesamteffekt, x_1 minus x_0, gleich dem Substitutionseffekt, x_s minus x_0, plus dem Einkommenseffekt, x_1 minus x_s, ist.")
]
#only("2")[
#voiceover("Mit anderen Worten, der Gesamteffekt einer Preisänderung ist die Summe aus Substitutionseffekt und Einkommenseffekt.")
]
#only("3")[
#voiceover("Diese Gleichung zerlegt die gesamte Veränderung der nachgefragten Menge in den Teil, der auf die Änderung der relativen Preise zurückzuführen ist (Substitutionseffekt), und den Teil, der auf die Änderung der Kaufkraft zurückzuführen ist (Einkommenseffekt).")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Preisrückgang bei Gut X: $p_0 \rightarrow p_1$ 💸]
#v(20pt)
#only("2-")[- Gesamteffekt: $x_1 - x_0$ 📈]
#v(20pt)
#only("3-")[- Substitutionseffekt: $x_s - x_0$ 🔄]
#v(20pt)
#only("4-")[- Einkommenseffekt: $x_1 - x_s$ 💰]
#v(20pt)
#only("5-")[- Slutsky-Gleichung: Gesamteffekt = Substitutionseffekt + Einkommenseffekt 🧮]
#only("1")[
#voiceover("Zusammenfassend haben wir ein Beispiel betrachtet, bei dem der Preis von Gut X von p_0 auf p_1 sinkt.")
]
#only("2")[
#voiceover("Der Gesamteffekt dieser Preisänderung ist der Anstieg der nachgefragten Menge von x_0 auf x_1.")
]
#only("3")[
#voiceover("Dieser Gesamteffekt kann in den Substitutionseffekt zerlegt werden, der die Veränderung der nachgefragten Menge von x_0 auf x_s darstellt, wobei der Nutzen konstant gehalten wird,")
]
#only("4")[
#voiceover("und den Einkommenseffekt, der die Veränderung der nachgefragten Menge von x_s auf x_1 aufgrund der Erhöhung der Kaufkraft darstellt.")
]
#only("5")[
#voiceover("Die Slutsky-Gleichung besagt, dass der Gesamteffekt gleich der Summe aus Substitutionseffekt und Einkommenseffekt ist, was eine Möglichkeit bietet, die Auswirkungen von Preisänderungen auf das Verbraucherverhalten zu analysieren.")
]
]