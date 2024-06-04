#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Kräfte auf einen Damm 🌊]
#v(40pt)
#only("1-")[- Gegeben: 2 m breiter, 4 m hoher Dammabschnitt]
#only("2-")[- Oberkante 1 m unter der Wasseroberfläche]
#only("3-")[- Formel: $F = rho dot g dot h dot A$]
#only("1")[
#voiceover("Großartig! Das ist die richtige Antwort. Lass uns die Lösung Schritt für Schritt durchgehen. Wir haben einen Dammabschnitt, der 2 Meter breit und 4 Meter hoch ist.")
]
#only("2")[
#voiceover("Die Oberkante dieses Abschnitts befindet sich 1 Meter unter der Wasseroberfläche.")
]
#only("3")[
#voiceover("Um die Gesamtkraft auf diesen Abschnitt zu berechnen, verwenden wir die Formel F gleich rho mal g mal h mal A, wobei rho die Dichte des Wassers, g die Erdbeschleunigung, h die durchschnittliche Tiefe und A die Fläche des Abschnitts ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 1: Durchschnittliche Tiefe berechnen 📏]
#v(40pt)
#only("1-")[- Tiefe oben: 1 m, Tiefe unten: 5 m]
#only("2-")[- $h = (h_1 + h_2) / 2$]
#only("3-")[- $h = (1 + 5) / 2 = 3$ m]
#only("1")[
#voiceover("Zuerst berechnen wir die durchschnittliche Tiefe. Die Tiefe an der Oberkante beträgt 1 Meter, und an der Unterkante sind es 5 Meter (1 Meter plus die Höhe des Abschnitts).")
]
#only("2")[
#voiceover("Um die durchschnittliche Tiefe zu finden, verwenden wir die Formel h gleich h1 plus h2, alles geteilt durch 2, wobei h1 die Tiefe an der Oberkante und h2 die Tiefe an der Unterkante ist.")
]
#only("3")[
#voiceover("Wenn wir die Werte einsetzen, erhalten wir h gleich 1 plus 5, geteilt durch 2, was 3 Meter ergibt.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 2: Fläche berechnen 🟥]
#v(40pt)
#only("1-")[- Breite: 2 m, Höhe: 4 m]
#only("2-")[- $A = w dot h$]
#only("3-")[- $A = 2 dot 4 = 8$ m²]
#only("1")[
#voiceover("Als nächstes berechnen wir die Fläche des Abschnitts. Wir wissen, dass die Breite 2 Meter und die Höhe 4 Meter beträgt.")
]
#only("2")[
#voiceover("Die Fläche eines Rechtecks wird durch die Formel A gleich w mal h berechnet, wobei w die Breite und h die Höhe ist.")
]
#only("3")[
#voiceover("Also, die Fläche A ist gleich 2 mal 4, was 8 Quadratmeter ergibt.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 3: In die Formel einsetzen 🧮]
#v(40pt)
#only("1-")[- $rho = 1000$ kg/m³, $g = 9.81$ m/s², $h = 3$ m, $A = 8$ m²]
#only("2-")[- $F = rho dot g dot h dot A$]
#only("3-")[- $F = 1000 dot 9.81 dot 3 dot 8 = 235440$ N]
#only("1")[
#voiceover("Nun setzen wir alles in die Formel ein. Die Dichte des Wassers, rho, beträgt 1000 Kilogramm pro Kubikmeter. Die Erdbeschleunigung, g, beträgt 9,81 Meter pro Quadratsekunde. Wir haben die durchschnittliche Tiefe, h, zu 3 Metern berechnet, und die Fläche, A, beträgt 8 Quadratmeter.")
]
#only("2")[
#voiceover("Wenn wir diese Werte in die Formel F gleich rho mal g mal h mal A einsetzen...")
]
#only("3")[
#voiceover("Erhalten wir F gleich 1000 mal 9,81 mal 3 mal 8, was 235.440 Newton ergibt. Dies ist die Gesamtkraft auf den gegebenen Abschnitt des Damms.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung 📊]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt
import numpy as np

dam_width = 2
dam_height = 4
water_height = 5

fig, ax = plt.subplots()

dam = plt.Rectangle((0, 0), dam_width, dam_height, linewidth=1, edgecolor='r', facecolor='none')
water = plt.Rectangle((0, 0), dam_width, water_height, linewidth=1, edgecolor='b', facecolor='b', alpha=0.5)

ax.add_patch(dam)
ax.add_patch(water)

ax.set_aspect('equal')
ax.set_xlim(-1, 3)
ax.set_ylim(0, 6)

ax.text(1, 2, 'Dam Section', ha='center', va='center', color='r')
ax.text(1, 4.5, 'Water', ha='center', va='center', color='w')

plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Hier ist eine Visualisierung des Problems. Die rote Umrandung stellt den Dammabschnitt dar, und der blaue Bereich repräsentiert das Wasser, das dagegen drückt.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Fazit 🎉]
#v(40pt)
#only("1-")[- Gesamtkraft auf den Dammabschnitt: 235.440 N]
#only("2-")[- Wichtige Schritte: Durchschnittliche Tiefe finden, Fläche berechnen, Formel anwenden]
#only("3-")[- Gut gemacht! 👏]
#only("1")[
#voiceover("Zusammenfassend beträgt die Gesamtkraft auf den gegebenen 2 Meter breiten, 4 Meter hohen Abschnitt des Damms, dessen Oberkante 1 Meter unter der Wasseroberfläche liegt, 235.440 Newton.")
]
#only("2")[
#voiceover("Die wichtigsten Schritte waren das Finden der durchschnittlichen Tiefe, das Berechnen der Fläche des Abschnitts und dann die Anwendung der Formel F gleich rho mal g mal h mal A.")
]
#only("3")[
#voiceover("Gut gemacht bei der Lösung dieses Problems! Mach weiter so!")
]
]