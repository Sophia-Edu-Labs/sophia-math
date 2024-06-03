#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Hydraulikheber-Problem 🦾]
#v(40pt)
#only("-1")[
- Ein Hydraulikheber hebt einen 6000 kg schweren Schiffsmotor um 2,0 m an
- Pumpkolbenfläche: 5,0 cm², Presskolbenfläche: 400 cm²
- Hubweg der Pumpe: 50 cm
]
#v(20pt)
#only("2-")[
#text(size: 25pt, weight: "bold")[Wie oft muss der Pumpkolben abgesenkt werden?]
]
#only("1")[
#voiceover("Großartig! Du hast richtig erkannt, dass der Pumpkolben 320 Mal abgesenkt werden muss. Lass uns die Lösung Schritt für Schritt durchgehen.")
]
#only("2")[
#voiceover("Um herauszufinden, wie oft der Pumpkolben abgesenkt werden muss, müssen wir die Beziehung zwischen Pump- und Presskolben sowie die Hubhöhe und den Hubweg berücksichtigen.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 1: Die Beziehung verstehen 🤝]
#v(40pt)
#only("1-")[
- Das vom Pumpkolben verdrängte Flüssigkeitsvolumen entspricht dem vom Presskolben verdrängten Volumen
]
#v(20pt)
#only("2-")[
$ A_("pump") ⋅ s_("pump") = A_("press") ⋅ s_("press") $
]
#only("1")[
#voiceover("Zuerst wollen wir die Beziehung zwischen dem Pump- und dem Presskolben verstehen. Das vom Pumpkolben verdrängte Flüssigkeitsvolumen entspricht dem vom Presskolben verdrängten Volumen.")
]
#only("2")[
#voiceover("Mathematisch ausgedrückt bedeutet dies, dass die Fläche des Pumpkolbens multipliziert mit seinem Hubweg gleich der Fläche des Presskolbens multipliziert mit dessen Verdrängung ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 2: Die Gleichung umstellen 🔄]
#v(40pt)
#only("1-")[
$ s_("press") = (A_("pump")/A_("press")) ⋅ s_("pump") $
]
#v(20pt)
#only("2-")[
- Die gesamte Verdrängung des Presskolbens entspricht der Hubhöhe (2,0 m)
]
#only("1")[
#voiceover("Als nächstes stellen wir die Gleichung um, um die Verdrängung des Presskolbens zu berechnen. Wir erhalten, dass die Verdrängung des Presskolbens dem Verhältnis der Pumpfläche zur Pressfläche multipliziert mit dem Hubweg der Pumpe entspricht.")
]
#only("2")[
#voiceover("Denke daran, dass die gesamte Verdrängung des Presskolbens der Hubhöhe entspricht, die in diesem Problem 2,0 Meter beträgt.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 3: Die Anzahl der Hübe berechnen 🧮]
#v(40pt)
#only("1-")[
$ n = ("Hubhöhe")/s_("press") $
]
#v(20pt)
#only("2-")[
$ n = ("Hubhöhe")/(A_("pump")/A_("press")) ⋅ s_("pump") $
]
#v(20pt)
#only("3-")[
$ n = (A_("press")/A_("pump")) ⋅ ("Hubhöhe"/"Hubweg") $
]
#v(20pt)
#only("4-")[
$ n = (400 "cm"^2/5 "cm"^2) ⋅ (2.0 "m"/0.5 "m") = 320 $
]
#only("1")[
#voiceover("Um die Anzahl der benötigten Hübe zu berechnen, teilen wir die gesamte Hubhöhe durch die Verdrängung pro Hub des Presskolbens.")
]
#only("2")[
#voiceover("Wenn wir den Ausdruck für die Verdrängung des Presskolbens einsetzen, erhalten wir, dass die Anzahl der Hübe gleich der Hubhöhe geteilt durch das Verhältnis der Pumpfläche zur Pressfläche multipliziert mit dem Hubweg der Pumpe ist.")
]
#only("3")[
#voiceover("Dies kann umgestellt werden auf das Verhältnis der Pressfläche zur Pumpfläche multipliziert mit dem Verhältnis der Hubhöhe zum Hubweg.")
]
#only("4")[
#voiceover("Setzen wir die Werte ein, erhalten wir 400 Quadratzentimeter geteilt durch 5 Quadratzentimeter multipliziert mit 2,0 Meter geteilt durch 0,5 Meter, was 320 Hüben entspricht.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Fazit 🎉]
#v(40pt)
- Der Pumpkolben muss 320 Mal abgesenkt werden, um den Motor um 2,0 m anzuheben
#v(20pt)
- Wichtige Konzepte:
  - Volumenkonstanz zwischen Pumpe und Presse
  - Verhältnis der Kolbenflächen und Verdrängungen
#only("1")[
#voiceover("Zusammenfassend muss der Pumpkolben 320 Mal abgesenkt werden, um den Schiffsmotor um 2,0 Meter anzuheben. Die wichtigsten Konzepte in diesem Problem waren die Volumenkonstanz zwischen Pump- und Presskolben sowie das Verhältnis ihrer Flächen und Verdrängungen.")
]
]