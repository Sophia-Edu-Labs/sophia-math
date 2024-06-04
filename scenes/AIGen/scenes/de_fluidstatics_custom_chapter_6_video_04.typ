#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Effiziente Bewässerungssysteme 🌾]
#v(40pt)
#only("1-")[- Erfordern präzise Berechnung von Pumpendruck und Durchflussraten]
#only("1")[
#voiceover("Effiziente Bewässerungssysteme erfordern präzise Berechnungen von Pumpendruck und Durchflussraten, um eine effektive Wasserverteilung zu gewährleisten.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Berechnung des Pumpendrucks 🚰]
#v(40pt)
#only("1-")[- Wasser auf eine Höhe von 30 m heben]
#v(20pt)
#only("2-")[- Formel: $p = rho dot g dot h$]
#v(20pt)
#only("3-")[- $rho$ für Wasser = 1000 kg/m³]
#v(20pt)
#only("4-")[- Ergebnis: $p = 1000 dot 9.81 dot 30 = 294300$ Pa]
#only("1")[
#voiceover("Um den erforderlichen Pumpendruck zu berechnen, um Wasser auf eine Höhe von 30 Metern zu heben, verwenden wir die Formel p gleich rho mal g mal h.")
]
#only("2")[
#voiceover("Hierbei steht p für den Druck, rho ist die Dichte des Wassers, g ist die Erdbeschleunigung und h ist die Höhe.")
]
#only("3")[
#voiceover("Die Dichte des Wassers, rho, beträgt 1000 Kilogramm pro Kubikmeter.")
]
#only("4")[
#voiceover("Wenn wir die Werte einsetzen, erhalten wir einen Druck von 294.300 Pascal.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Berechnung der Durchflussrate 💧]
#v(40pt)
#only("1-")[- Bewässerung eines 1 Hektar großen Feldes]
#v(20pt)
#only("2-")[- Benötigt 5 mm Wasser pro Tag]
#v(20pt)
#only("3-")[- Formel: Durchflussrate = (1 "Hektar" dot 5 "mm") / (24 "Stunden" dot 3600 "Sekunden")]
#v(20pt)
#only("4-")[- Ergebnis: Durchflussrate = 0.5787 Liter pro Sekunde]
#only("1")[
#voiceover("Um die erforderliche Durchflussrate zu berechnen, um ein 1 Hektar großes Feld zu bewässern, das 5 Millimeter Wasser pro Tag benötigt, verwenden wir eine einfache Formel.")
]
#only("2")[
#voiceover("Die Durchflussrate entspricht dem benötigten Wasservolumen, das 1 Hektar mal 5 Millimeter beträgt, geteilt durch die Zeit, die 24 Stunden mal 3600 Sekunden beträgt.")
]
#only("3")[
#voiceover("Diese Formel berücksichtigt die Fläche des Feldes, den Wasserbedarf und die Zeit, über die das Wasser geliefert werden muss.")
]
#only("4")[
#voiceover("Das Ergebnis ist eine Durchflussrate von ungefähr 0,5787 Litern pro Sekunde.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung 📝]
#v(40pt)
#only("1-")[- Effiziente Bewässerungssysteme erfordern präzise Berechnungen 🧮]
#v(20pt)
#only("2-")[- Pumpendruck hängt von der Wasserhubhöhe ab 🚰]
#v(20pt)
#only("3-")[- Durchflussrate hängt von der Feldgröße und dem Wasserbedarf ab 💧]
#v(20pt)
#only("4-")[- Präzise Berechnungen gewährleisten eine effektive Wasserverteilung 🌱]
#only("1")[
#voiceover("Zusammenfassend erfordern effiziente Bewässerungssysteme präzise Berechnungen.")
]
#only("2")[
#voiceover("Der Pumpendruck wird basierend auf der Höhe berechnet, auf die das Wasser gehoben werden muss.")
]
#only("3")[
#voiceover("Die Durchflussrate wird durch die Größe des Feldes und den täglichen Wasserbedarf bestimmt.")
]
#only("4")[
#voiceover("Präzise Berechnungen von Pumpendruck und Durchflussraten sind entscheidend, um eine effektive Wasserverteilung für optimales Pflanzenwachstum zu gewährleisten.")
]
]