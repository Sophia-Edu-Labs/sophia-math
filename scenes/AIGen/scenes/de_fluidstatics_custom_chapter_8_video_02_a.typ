#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Druck am Wasserhahn 🚰]
#v(40pt)
#only("1-")[Berechne den Druck an einem Wasserhahn, der sich 50 m unterhalb eines Reservoirs befindet.]
#v(20pt)
#only("2-")[Verwende: $p = rho dot g dot h$]
#v(20pt)
#only("3-")[Gegeben: $rho_("wasser") = 1000$ kg/m³, $h = 50$ m]
#only("1")[
#voiceover("Großartige Arbeit! Das ist die richtige Antwort. Lass uns die Lösung Schritt für Schritt durchgehen.")
]
#only("2")[
#voiceover("Um den Druck zu berechnen, verwenden wir die Formel p gleich rho mal g mal h, wobei p der Druck ist, rho die Dichte der Flüssigkeit, g die Beschleunigung aufgrund der Schwerkraft und h der Höhenunterschied ist.")
]
#only("3")[
#voiceover("Es ist gegeben, dass die Dichte von Wasser 1000 Kilogramm pro Kubikmeter beträgt und der Höhenunterschied 50 Meter ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Lösung 🧮]
#v(40pt)
#only("1-")[Schritt 1: Bestimme die Werte]
#v(20pt)
#only("2-")[- $rho = 1000$ kg/m³]
#v(10pt)
#only("3-")[- $g = 9.81$ m/s²]
#v(10pt)
#only("4-")[- $h = 50$ m]
#only("1")[
#voiceover("Zuerst bestimmen wir die benötigten Werte.")
]
#only("2")[
#voiceover("Die Dichte von Wasser, rho, beträgt 1000 Kilogramm pro Kubikmeter.")
]
#only("3")[
#voiceover("Die Beschleunigung aufgrund der Schwerkraft, g, beträgt 9.81 Meter pro Sekunde zum Quadrat.")
]
#only("4")[
#voiceover("Und der Höhenunterschied, h, beträgt 50 Meter.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Lösung 🧮]
#v(40pt)
#only("1-")[Schritt 2: Setze die Werte in die Formel ein]
#v(20pt)
#only("2-")[$p = 1000$ kg/m³ $dot 9.81$ m/s² $dot 50$ m]
#v(20pt)
#only("3-")[$p = 490500$ kg/(m dot s²)]
#only("1")[
#voiceover("Als nächstes setzen wir diese Werte in die Formel ein.")
]
#only("2")[
#voiceover("p gleich 1000 Kilogramm pro Kubikmeter mal 9.81 Meter pro Sekunde zum Quadrat mal 50 Meter.")
]
#only("3")[
#voiceover("Das ergibt p gleich 490500 Kilogramm pro Meter Sekunde zum Quadrat.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Lösung 🧮]
#v(40pt)
#only("1-")[Schritt 3: Konvertiere die Einheiten]
#v(20pt)
#only("2-")[1 Pa = 1 kg/(m dot s²)]
#v(20pt)
#only("3-")[$p = 490500$ kg/(m dot s²) $= 490500$ Pa]
#only("1")[
#voiceover("Zum Schluss konvertieren wir die Einheiten.")
]
#only("2")[
#voiceover("Ein Pascal ist gleich ein Kilogramm pro Meter Sekunde zum Quadrat.")
]
#only("3")[
#voiceover("Also ist p gleich 490500 Kilogramm pro Meter Sekunde zum Quadrat gleich 490500 Pascal.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Antwort 🎉]
#v(40pt)
#only("1-")[$p = 490500$ Pa]
#v(20pt)
#only("2-")[Der Druck am Wasserhahn beträgt 490500 Pascal.]
#only("1")[
#voiceover("Daher beträgt der Druck am Wasserhahn 490500 Pascal.")
]
#only("2")[
#voiceover("Großartige Arbeit bei der Lösung dieses Problems! Du hast ein gutes Verständnis dafür gezeigt, wie man den Druck in einer Flüssigkeit in einer bestimmten Tiefe berechnet.")
]
]