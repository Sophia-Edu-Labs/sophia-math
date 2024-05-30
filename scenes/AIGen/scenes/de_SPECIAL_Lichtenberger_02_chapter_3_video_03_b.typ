#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Ballonstart 🎈]
#v(40pt)
#only("1-")[Leider ist das nicht korrekt. Lass uns gemeinsam die Lösung Schritt für Schritt durchgehen.]
#only("1")[
#voiceover("Leider ist das nicht korrekt. Lass uns gemeinsam die Lösung Schritt für Schritt durchgehen.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Gegebene Informationen]
#v(40pt)
#only("1-")[
- Der Ballon hebt ab, wenn die Auftriebskraft = Gewicht ist
- Volumen der Gondel und Passagiere ignorieren
- Uster liegt auf 464 m über dem Meeresspiegel
]
#only("1")[
#voiceover("Es ist gegeben, dass der Ballon abhebt, wenn die Auftriebskraft dem Gewicht des Ballons entspricht. Wir können das Volumen der Gondel und der Passagiere ignorieren. Außerdem liegt Uster auf 464 Metern über dem Meeresspiegel.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 1: Auftriebsgleichung]
#v(40pt)
#only("1-")[
$"Auftriebskraft" = ("Dichte der Luft" - "Dichte des erhitzten Gases") dot "Volumen des Ballons" dot g$
]
#only("2-")[
$F_B = (rho_("Luft") - rho_("erhitztes Gas")) dot V dot g$
]
#only("1")[
#voiceover("Der erste Schritt ist, die Gleichung für die Auftriebskraft aufzuschreiben. Sie ist gleich der Dichte der Luft minus der Dichte des erhitzten Gases im Ballon, multipliziert mit dem Volumen des Ballons und der Erdbeschleunigung.")
]
#only("2")[
#voiceover("Wir können dies mathematisch als F_B gleich rho_Luft minus rho_erhitztes Gas, multipliziert mit V und g ausdrücken.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 2: Kräfte gleichsetzen ⚖]
#v(40pt)
#only("1-")[
$"Auftriebskraft" = "Gewicht des Ballons"$
]
#only("2-")[
$(rho_("Luft") - rho_("erhitztes Gas")) dot V dot g = m_("Ballon") dot g$
]
#only("1")[
#voiceover("Der nächste Schritt ist, die Auftriebskraft dem Gewicht des Ballons gleichzusetzen.")
]
#only("2")[
#voiceover("Also haben wir rho_Luft minus rho_erhitztes Gas, multipliziert mit V und g, gleich m_Ballon multipliziert mit g.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 3: Volumen lösen]
#v(40pt)
#only("1-")[
$V = (m_("Ballon") dot g)/((rho_("Luft") - rho_("erhitztes Gas")) dot g)$
]
#only("2-")[
$V = m_("Ballon")/(rho_("Luft") - rho_("erhitztes Gas"))$
]
#only("1")[
#voiceover("Jetzt können wir das Volumen V lösen. Wir teilen beide Seiten durch rho_Luft minus rho_erhitztes Gas, multipliziert mit g.")
]
#only("2")[
#voiceover("Die g's kürzen sich heraus, und wir haben V gleich m_Ballon geteilt durch rho_Luft minus rho_erhitztes Gas.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 4: Dichten berechnen 🌡]
#v(40pt)
#only("1-")[
- $rho_("Luft") = 1.225 "kg/m"^3$ auf Meereshöhe
- Uster liegt auf 464 m, daher $rho_("Luft") = 1.17 "kg/m"^3$
- $rho_("erhitztes Gas") = 0.09 "kg/m"^3$
]
#only("1")[
#voiceover("Der letzte Schritt ist, die Dichten zu berechnen und die Werte einzusetzen. Die Dichte der Luft beträgt 1,225 Kilogramm pro Kubikmeter auf Meereshöhe. Da Uster jedoch auf 464 Metern liegt, müssen wir diesen Wert anpassen. In dieser Höhe beträgt die Luftdichte etwa 1,17 Kilogramm pro Kubikmeter. Die Dichte des erhitzten Gases im Ballon beträgt 0,09 Kilogramm pro Kubikmeter.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 5: Werte einsetzen 🔢]
#v(40pt)
#only("1-")[
$V = m_("Ballon")/(1.17 - 0.09) = m_("Ballon")/1.08$
]
#only("2-")[
Wenn $m_("Ballon") = 1175 "kg"$, dann:
]
#only("3-")[
$V = 1175/1.08 = 1088 "m"^3$
]
#only("1")[
#voiceover("Wir setzen diese Werte in unsere Gleichung ein. V ist gleich m_Ballon geteilt durch 1,17 minus 0,09, was sich zu m_Ballon geteilt durch 1,08 vereinfacht.")
]
#only("2")[
#voiceover("Wenn die Masse des Ballons 1175 Kilogramm beträgt, dann...")
]
#only("3")[
#voiceover("V ist gleich 1175 geteilt durch 1,08, was uns 1088 Kubikmeter ergibt. Dies ist das minimale Volumen, das der Ballon in Uster benötigt, um abzuheben.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[
- Auftriebskraft dem Gewicht des Ballons gleichsetzen
- Volumen lösen
- Dichten basierend auf der Höhe berechnen
- Werte einsetzen, um das minimale Volumen zu erhalten
]
#only("1")[
#voiceover("Zusammenfassend haben wir die Auftriebskraft dem Gewicht des Ballons gleichgesetzt, das Volumen gelöst, die Dichten basierend auf der Höhe berechnet und die Werte eingesetzt, um das minimale Volumen für den Abflug zu erhalten.")
]
]