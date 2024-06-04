#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Gegeben]
#v(40pt)
#only("1-")[- Höhe: $h = 30$ m]
#v(20pt)
#only("2-")[- Dichte des Wassers: $rho = 1000$ kg/m³]
#v(20pt)
#only("3-")[- Formel: $p = rho \cdot g \cdot h$]
#only("1")[
#voiceover("Großartig! Das ist die richtige Antwort. Lass uns sehen, wie wir das Schritt für Schritt lösen können. Es ist gegeben, dass die Höhe, auf die das Wasser gehoben werden muss, 30 Meter beträgt.")
]
#only("2")[
#voiceover("Wir wissen auch, dass die Dichte des Wassers 1000 Kilogramm pro Kubikmeter beträgt.")
]
#only("3")[
#voiceover("Und wir haben die Formel zur Berechnung des Drucks, die Dichte mal Erdbeschleunigung mal Höhe lautet.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 1]
#v(40pt)
#only("1-")[Identifiziere die Werte:]
#v(20pt)
#only("2-")[- $rho = 1000$ kg/m³]
#v(20pt)
#only("3-")[- $g = 9.81$ m/s²]
#v(20pt)
#only("4-")[- $h = 30$ m]
#only("1")[
#voiceover("Der erste Schritt besteht darin, die Werte zu identifizieren, die wir in die Formel einsetzen müssen.")
]
#only("2")[
#voiceover("Wir haben die Dichte, rho, die 1000 Kilogramm pro Kubikmeter beträgt.")
]
#only("3")[
#voiceover("Die Erdbeschleunigung, g, ist eine Konstante von 9,81 Metern pro Sekunde zum Quadrat.")
]
#only("4")[
#voiceover("Und die Höhe, h, ist mit 30 Metern gegeben.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 2]
#v(40pt)
#only("1-")[Setze die Werte in die Formel ein:]
#v(20pt)
#only("2-")[$p = rho \cdot g \cdot h$]
#v(20pt)
#only("3-")[$p = 1000 \cdot 9.81 \cdot 30$]
#only("1")[
#voiceover("Nun setzen wir diese Werte in die Formel ein.")
]
#only("2")[
#voiceover("Der Druck ist gleich Dichte mal Erdbeschleunigung mal Höhe.")
]
#only("3")[
#voiceover("Wenn wir die Werte einsetzen, erhalten wir: Druck ist gleich 1000 mal 9,81 mal 30.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 3]
#v(40pt)
#only("1-")[Berechne:]
#v(20pt)
#only("2-")[$p = 1000 \cdot 9.81 \cdot 30$]
#v(20pt)
#only("3-")[$p = 294300$ Pa]
#only("1")[
#voiceover("Der letzte Schritt besteht darin, das Ergebnis zu berechnen.")
]
#only("2")[
#voiceover("Wir multiplizieren 1000 mit 9,81 und mit 30.")
]
#only("3")[
#voiceover("Das ergibt 294.300 Pascal, was der erforderliche Pumpendruck ist, um das Wasser auf eine Höhe von 30 Metern zu heben.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Antwort]
#v(40pt)
#only("1-")[Der erforderliche Pumpendruck beträgt $294300$ Pa. 🎉]
#only("1")[
#voiceover("Daher lautet die Antwort 294.300 Pascal. Gut gemacht, dass Du dieses Problem gelöst hast!")
]
]