#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Blutdruckumrechnung]
#v(40pt)
#only("1-")[120/80 mmHg in Pascal umrechnen 🩸]
#v(20pt)
#only("1")[
#voiceover("Großartig! Du hast den Blutdruckwert korrekt von Millimeter Quecksilbersäule in Pascal umgerechnet. Lass uns die Lösung Schritt für Schritt durchgehen.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Gegeben]
#v(40pt)
#only("1-")[- Blutdruck: 120/80 mmHg 📏]
#v(20pt)
#only("2-")[- Formel: $p = rho dot g dot h$ 📐]
#v(20pt)
#only("3-")[- Dichte von Quecksilber ($rho$): 13545.9 kg/m³ 🧪]
#only("1")[
#voiceover("Wir haben einen Blutdruckwert von 120 über 80 Millimeter Quecksilbersäule gegeben.")
]
#only("2")[
#voiceover("Um dies in Pascal umzurechnen, verwenden wir die Formel Druck gleich Dichte mal Erdbeschleunigung mal Höhe.")
]
#only("3")[
#voiceover("Die Dichte von Quecksilber beträgt 13545.9 Kilogramm pro Kubikmeter.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 1: Systolischer Druck]
#v(40pt)
#only("1-")[- Höhe ($h$) für systolischen Druck: 120 mm = 0.12 m 📏]
#v(20pt)
#only("2-")[- $p_"systolisch" = 13545.9 dot 9.81 dot 0.12$]
#v(20pt)
#only("3-")[- $p_"systolisch" = 15936.73 "Pa"$ 🎉]
#only("1")[
#voiceover("Für den systolischen Druck von 120 Millimeter Quecksilbersäule konvertieren wir zuerst die Höhe in Meter. 120 Millimeter entsprechen 0.12 Meter.")
]
#only("2")[
#voiceover("Dann setzen wir die Werte in die Formel ein: systolischer Druck gleich 13545.9 mal 9.81 mal 0.12.")
]
#only("3")[
#voiceover("Das ergibt einen systolischen Druck von 15936.73 Pascal.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 2: Diastolischer Druck]
#v(40pt)
#only("1-")[- Höhe ($h$) für diastolischen Druck: 80 mm = 0.08 m 📏]
#v(20pt)
#only("2-")[- $p_"diastolisch" = 13545.9 dot 9.81 dot 0.08$]
#v(20pt) 
#only("3-")[- $p_"diastolisch" = 10624.49 "Pa"$ 🎉]
#only("1")[
#voiceover("Ähnlich konvertieren wir für den diastolischen Druck von 80 Millimeter Quecksilbersäule die Höhe in 0.08 Meter.")
]
#only("2")[
#voiceover("Durch Einsetzen in die Formel erhalten wir: diastolischer Druck gleich 13545.9 mal 9.81 mal 0.08.")
]
#only("3")[
#voiceover("Das ergibt einen diastolischen Druck von 10624.49 Pascal.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Ergebnis]
#v(40pt)
#only("1-")[120/80 mmHg = 15936.73/10624.49 Pa 🩸➡📐]
#only("1")[
#voiceover("Daher entspricht ein Blutdruck von 120 über 80 Millimeter Quecksilbersäule 15936.73 über 10624.49 Pascal. Gute Arbeit bei der Lösung dieses Umrechnungsproblems!")
]
]