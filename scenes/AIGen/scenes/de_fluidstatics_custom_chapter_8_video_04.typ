#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Städtische Wasserversorgungssysteme]
#v(40pt)
#only("1-")[- Nutzen Schwerkraft und Druckunterschiede 🌍]
#v(20pt)
#only("2-")[- Verteilen Wasser von Reservoirs in verschiedene Teile der Stadt 🏙️]
#only("1")[
#voiceover("Städtische Wasserversorgungssysteme nutzen Schwerkraft und Druckunterschiede, um effektiv zu funktionieren.")
]
#only("2")[
#voiceover("Diese Systeme verteilen Wasser von Reservoirs in verschiedene Teile der Stadt.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Druckberechnung]
#v(40pt)
#only("1-")[- Druck an einem Wasserhahn $p = rho \cdot g \cdot h$]
#v(20pt)
#only("2-")[- $rho$ (Wasserdichte) = 1000 kg/m³]
#v(20pt)
#only("3-")[- Beispiel: Wasserhahn 50 m unterhalb des Reservoirs]
#v(20pt)
#only("4-")[$ p = 1000 \cdot 9.81 \cdot 50 = 490500 $ Pa]
#only("1")[
#voiceover("Der Druck an einem Wasserhahn kann mit der Formel p gleich rho mal g mal h berechnet werden, wobei rho die Dichte des Wassers, g die Erdbeschleunigung und h der Höhenunterschied ist.")
]
#only("2")[
#voiceover("Die Dichte des Wassers beträgt ungefähr 1000 Kilogramm pro Kubikmeter.")
]
#only("3")[
#voiceover("Zum Beispiel betrachten wir einen Wasserhahn, der 50 Meter unterhalb eines Reservoirs liegt.")
]
#only("4")[
#voiceover("Mit der Formel berechnen wir den Druck am Wasserhahn zu 490.500 Pascal.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Faktoren, die den Druck beeinflussen]
#v(40pt)
#only("1-")[- Höhenunterschied ist der bedeutendste Faktor 📏]
#v(20pt)
#only("2-")[- Änderungen des Reservoirstands beeinflussen die Druckverteilung 🌊]
#v(20pt)
#only("3-")[- Beispiel: Reservoirstand sinkt um 2 m]
#v(20pt)
#only("4-")[$ p = 1000 \cdot 9.81 \cdot 48 = 470880 $ Pa]
#only("1")[
#voiceover("Der Höhenunterschied zwischen dem Reservoir und dem Wasserhahn ist der bedeutendste Faktor, der den Druck in einem städtischen Wasserversorgungssystem beeinflusst.")
]
#only("2")[
#voiceover("Änderungen des Reservoirstands können die gesamte Druckverteilung beeinflussen.")
]
#only("3")[
#voiceover("Wenn der Reservoirstand beispielsweise um 2 Meter sinkt, ändert sich der Druck am Wasserhahn.")
]
#only("4")[
#voiceover("Mit dem aktualisierten Höhenunterschied von 48 Metern berechnen wir den neuen Druck am Wasserhahn zu 470.880 Pascal.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Städtische Wasserversorgungssysteme nutzen Höhenunterschiede zur Druckerzeugung 🏙️]
#v(20pt)
#only("2-")[- Druck ist entscheidend für eine effektive Wasserverteilung 💧]
#v(20pt)
#only("3-")[- Änderungen des Reservoirstands beeinflussen die Druckverteilung 🌊]
#only("1")[
#voiceover("Zusammenfassend nutzen städtische Wasserversorgungssysteme Höhenunterschiede zur Druckerzeugung.")
]
#only("2")[
#voiceover("Dieser Druck ist entscheidend für eine effektive Wasserverteilung in der ganzen Stadt.")
]
#only("3")[
#voiceover("Änderungen des Reservoirstands können die Druckverteilung im System erheblich beeinflussen.")
]
]