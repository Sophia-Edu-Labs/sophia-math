#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Druck in der Tiefe]
#v(40pt)
#only("1-")[- Der Druck hängt von der Tiefe, der Dichte und der Schwerkraft ab]
#v(20pt)
#only("2-")[- Gegeben: Tiefe $h = 1000 "m"$, Dichte des Meerwassers $rho = 1020 "kg/m"^3$, Schwerkraft $g = 9.81 "m/s"^2$]
#only("1")[
#voiceover("Leider ist das nicht korrekt. Lassen Sie uns trotzdem anschauen, wie wir den Druck in einer Tiefe von 1000 Metern im Meerwasser berechnen können. Der Druck hängt von der Tiefe, der Dichte der Flüssigkeit und der Beschleunigung durch die Schwerkraft ab.")
]
#only("2")[
#voiceover("Es ist gegeben, dass die Tiefe 1000 Meter beträgt, die Dichte des Meerwassers 1020 Kilogramm pro Kubikmeter und die Beschleunigung durch die Schwerkraft 9,81 Meter pro Sekunde zum Quadrat beträgt.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Druckformel]
#v(40pt)
#only("1-")[- $p = rho dot g dot h$]
#v(20pt)
#only("2-")[- $p$ = Druck, $rho$ = Dichte, $g$ = Schwerkraft, $h$ = Tiefe]
#only("1")[
#voiceover("Die Formel zur Berechnung des Drucks lautet p gleich rho mal g mal h, wobei p der Druck, rho die Dichte der Flüssigkeit, g die Beschleunigung durch die Schwerkraft und h die Tiefe ist.")
]
#only("2")[
#voiceover("Lass uns die gegebenen Werte in diese Formel einsetzen.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Berechnung]
#v(40pt)
#only("1-")[- $p = 1020 "kg/m"^3 dot 9.81 "m/s"^2 dot 1000 "m"$]
#v(20pt)
#only("2-")[- $p = 10006200 "kg/m/s"^2$]
#v(20pt)
#only("3-")[- $p = 10006200 "Pa"$ (da $1 "Pa" = 1 "kg/m/s"^2$)]
#only("1")[
#voiceover("Wenn wir die Werte einsetzen, erhalten wir p gleich 1020 Kilogramm pro Kubikmeter mal 9,81 Meter pro Sekunde zum Quadrat mal 1000 Meter.")
]
#only("2")[
#voiceover("Multiplizieren wir diese Zahlen, erhalten wir 10006200 Kilogramm pro Meter pro Sekunde zum Quadrat.")
]
#only("3")[
#voiceover("Diese Einheit, Kilogramm pro Meter pro Sekunde zum Quadrat, entspricht der Einheit für Druck, Pascal. Der Druck in einer Tiefe von 1000 Metern im Meerwasser beträgt also 10006200 Pascal.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Druck in 1000 m Tiefe im Meerwasser: 10006200 Pa 🌊]
#v(20pt)
#only("2-")[- Wichtige Formel: $p = rho dot g dot h$ 📏]
#v(20pt)
#only("3-")[- Einheiten merken: $"Pa" = "kg/m/s"^2$ 📐]
#only("1")[
#voiceover("Zusammenfassend beträgt der Druck in einer Tiefe von 1000 Metern im Meerwasser 10006200 Pascal.")
]
#only("2")[
#voiceover("Die wichtige Formel, die man sich merken sollte, lautet p gleich rho mal g mal h.")
]
#only("3")[
#voiceover("Und vergiss nicht, die Einheit für Druck, Pascal, entspricht Kilogramm pro Meter pro Sekunde zum Quadrat.")
]
]