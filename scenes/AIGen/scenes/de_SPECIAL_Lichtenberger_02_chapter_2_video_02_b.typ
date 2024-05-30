#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Großartige Arbeit! 🎉]
#v(40pt)
#align(center)[Das ist die richtige Antwort! Lass uns sehen, wie wir dorthin gekommen sind.]
#only("1")[
#voiceover("Leider ist das nicht korrekt. Lass uns gemeinsam die richtige Lösung anschauen.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Gegebene Informationen]
#v(40pt)
- FIFA-Fußball-Umfang: 68-70 cm
- FIFA-Fußball-Gewicht: 410-450 g
#v(20pt)
#text(size: 24pt)[📏 💧 Welche Kraft ist nötig, um den Ball unter Wasser zu halten?]
#only("1")[
#voiceover("Zuerst lass uns die gegebenen Informationen überprüfen. Wir wissen, dass ein offizieller FIFA-Fußball einen Umfang zwischen 68 und 70 Zentimetern hat und zwischen 410 und 450 Gramm wiegt. Wir möchten herausfinden, welche Kraft nötig ist, um einen solchen Ball unter Wasser zu halten.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 1: Volumen berechnen]
#v(40pt)
#only("1-")[- Angenommen, eine Kugel 🏀]
#v(20pt)
#only("2-")[- $r = "Umfang"/(2π) ≈ 10.8 "cm"$]
#v(20pt)
#only("3-")[- $V = (4/3)π dot r^3 ≈ 5281 "cm"^3$]
#only("1")[
#voiceover("Um die Kraft zu berechnen, müssen wir zuerst das Volumen des Balls finden. Nehmen wir an, der Ball ist eine perfekte Kugel.")
]
#only("2")[
#voiceover("Wir können den Radius mit dem Umfang berechnen. Der Radius entspricht dem Umfang geteilt durch 2 Pi, was ungefähr 10,8 Zentimeter ergibt.")
]
#only("3")[
#voiceover("Nun können wir das Volumen mit der Formel für das Volumen einer Kugel berechnen, die 4/3 mal Pi mal Radius hoch drei ist. Dies ergibt ein Volumen von ungefähr 5281 Kubikzentimetern.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 2: Auftriebskraft berechnen]
#v(40pt)
#only("1-")[- $F_b = ρ_w g V$]
#v(20pt)
#only("2-")[- $ρ_w ≈ 1 "g/cm"^3$, $g ≈ 9.81 "m/s"^2$]
#v(20pt)
#only("3-")[- $F_b ≈ 1 "g/cm"^3 dot 9.81 "m/s"^2 dot 5281 "cm"^3$]
#v(20pt)
#only("4-")[- $F_b ≈ 51.8 "N"$]
#only("1")[
#voiceover("Die gesuchte Kraft ist die Auftriebskraft. Sie wird durch die Dichte des Wassers mal die Erdbeschleunigung mal das Volumen des verdrängten Wassers, das dem Volumen des Balls entspricht, gegeben.")
]
#only("2")[
#voiceover("Die Dichte des Wassers beträgt ungefähr 1 Gramm pro Kubikzentimeter, und die Erdbeschleunigung beträgt etwa 9,81 Meter pro Sekunde zum Quadrat.")
]
#only("3")[
#voiceover("Wenn wir diese Werte einsetzen, erhalten wir die Auftriebskraft gleich 1 Gramm pro Kubikzentimeter mal 9,81 Meter pro Sekunde zum Quadrat mal 5281 Kubikzentimeter.")
]
#only("4")[
#voiceover("Diese Berechnung ergibt eine Auftriebskraft von ungefähr 51,8 Newton.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 3: Gewicht des Balls berücksichtigen]
#v(40pt)
#only("1-")[- $F = F_b - m_b g$]
#v(20pt)
#only("2-")[- $m_b ≈ 0.43 "kg"$]
#v(20pt)
#only("3-")[- $F ≈ 51.8 "N" - 0.43 "kg" dot 9.81 "m/s"^2$]
#v(20pt)
#only("4-")[- $F ≈ 47.6 "N"$ ✅]
#only("1")[
#voiceover("Schließlich müssen wir das Gewicht des Balls selbst berücksichtigen. Die benötigte Gesamtkraft ist die Auftriebskraft minus das Gewicht des Balls.")
]
#only("2")[
#voiceover("Die Masse des Balls beträgt ungefähr 0,43 Kilogramm, basierend auf dem angegebenen Gewichtsbereich.")
]
#only("3")[
#voiceover("Also beträgt die Kraft 51,8 Newton minus 0,43 Kilogramm mal 9,81 Meter pro Sekunde zum Quadrat.")
]
#only("4")[
#voiceover("Dies ergibt eine endgültige Antwort von ungefähr 47,6 Newton. Und das entspricht deiner Antwort - großartige Arbeit!")
]
]