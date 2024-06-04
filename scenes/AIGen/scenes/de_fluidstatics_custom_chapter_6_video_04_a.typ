#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Großartige Arbeit! 🎉]
#v(40pt)
#text(size: 24pt)[Du hast die erforderliche Wasserflussrate zur Bewässerung des Feldes korrekt berechnet. Lass uns die Lösung Schritt für Schritt durchgehen.]
#only("1")[
#voiceover("Fantastische Arbeit! Du hast die erforderliche Wasserflussrate zur Bewässerung des 1 Hektar großen Feldes korrekt berechnet. Lass uns die Lösung Schritt für Schritt durchgehen, um dein Verständnis zu festigen.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Gegebene Informationen 📝]
#v(40pt)
#only("1-")[- Feldfläche: 1 Hektar (10.000 m²)]
#v(20pt)
#only("2-")[- Wasserbedarf: 5 mm pro Tag]
#only("1")[
#voiceover("Zuerst lass uns die gegebenen Informationen überprüfen. Wir haben ein Feld mit einer Fläche von 1 Hektar, was 10.000 Quadratmetern entspricht.")
]
#only("2")[
#voiceover("Das Feld benötigt 5 Millimeter Wasser pro Tag.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 1: Tägliches Wasservolumen berechnen 💧]
#v(40pt)
#only("1-")[Tägliches Wasservolumen = Feldfläche × Wasserbedarf]
#v(20pt)
#only("2-")[= 10.000 m² × 0,005 m]
#v(20pt)
#only("3-")[= 50 m³]
#only("1")[
#voiceover("Um das tägliche Wasservolumen zu berechnen, multiplizieren wir die Feldfläche mit dem Wasserbedarf.")
]
#only("2")[
#voiceover("Die Feldfläche beträgt 10.000 Quadratmeter und der Wasserbedarf beträgt 5 Millimeter, was 0,005 Metern entspricht.")
]
#only("3")[
#voiceover("Die Multiplikation dieser Werte ergibt ein tägliches Wasservolumen von 50 Kubikmetern.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 2: In Liter umrechnen 🔄]
#v(40pt)
#only("1-")[Tägliches Wasservolumen (in Litern) = 50 m³ × 1000 L/m³]
#v(20pt)
#only("2-")[= 50.000 L]
#only("1")[
#voiceover("Als nächstes wandeln wir das tägliche Wasservolumen von Kubikmetern in Liter um. Wir wissen, dass 1 Kubikmeter 1000 Litern entspricht.")
]
#only("2")[
#voiceover("Die Multiplikation von 50 Kubikmetern mit 1000 Litern pro Kubikmeter ergibt ein tägliches Wasservolumen von 50.000 Litern.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 3: Flussrate berechnen ⏰]
#v(40pt)
#only("1-")[Flussrate = Tägliches Wasservolumen ÷ Zeit]
#v(20pt)
#only("2-")[= 50.000 L ÷ (24 Stunden × 3600 Sekunden)]
#v(20pt)
#only("3-")[= 0,5787 L/s]
#only("1")[
#voiceover("Schließlich, um die Flussrate zu berechnen, teilen wir das tägliche Wasservolumen durch die Zeit in Sekunden.")
]
#only("2")[
#voiceover("Ein Tag hat 24 Stunden, und jede Stunde hat 3600 Sekunden. Also teilen wir 50.000 Liter durch das Produkt von 24 Stunden und 3600 Sekunden.")
]
#only("3")[
#voiceover("Dies ergibt eine Flussrate von ungefähr 0,5787 Litern pro Sekunde.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Fazit 🌟]
#v(40pt)
#only("1-")[Die erforderliche Wasserflussrate zur Bewässerung des 1 Hektar großen Feldes beträgt 0,5787 Liter pro Sekunde.]
#v(20pt)
#only("2-")[Du hast hervorragende Problemlösungsfähigkeiten und ein solides Verständnis für Einheitenumrechnungen und Flussratenberechnungen gezeigt. Mach weiter so! 👏]
#only("1")[
#voiceover("Abschließend beträgt die erforderliche Wasserflussrate zur Bewässerung des 1 Hektar großen Feldes, das 5 Millimeter Wasser pro Tag benötigt, ungefähr 0,5787 Liter pro Sekunde.")
]
#only("2")[
#voiceover("Du hast hervorragende Problemlösungsfähigkeiten und ein solides Verständnis für Einheitenumrechnungen und Flussratenberechnungen gezeigt. Mach weiter so und wende diese Fähigkeiten auch bei zukünftigen Problemen an!")
]
]