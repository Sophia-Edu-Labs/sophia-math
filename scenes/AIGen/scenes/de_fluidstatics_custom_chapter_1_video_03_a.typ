#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Änderung des Wasserdrucks]
#v(40pt)
#only("1-")[Wenn der Wasserspiegel im Reservoir um 2 m sinkt, wie ändert sich der Druck im vierten Stock?]
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-1")[a) Steigt um 0,2 bar]#only("2-")[#text(fill:red)[a) Steigt um 0,2 bar]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann grün, weil sie richtig ist.
#only("-2")[b) Sinkt um 0,2 bar]#only("3-")[#text(fill:green)[b) Sinkt um 0,2 bar]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-3")[c) Bleibt gleich]#only("4-")[#text(fill:red)[c) Bleibt gleich]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-4")[d) Steigt um 2 bar]#only("5-")[#text(fill:red)[d) Steigt um 2 bar]]
#only("1")[#voiceover("Leider ist das nicht korrekt.")]
#only("2")[#voiceover("Option a) ist falsch. Der Druck wird nicht steigen, wenn der Wasserspiegel sinkt.")]
#only("3")[#voiceover("Option b) ist richtig. Der Druck wird tatsächlich um 0,2 bar sinken. Lass uns im nächsten Slide sehen, warum.")]
#only("4")[#voiceover("Option c) ist falsch. Der Druck bleibt nicht gleich, wenn sich der Wasserspiegel ändert.")]
#only("5")[#voiceover("Und Option d) ist ebenfalls falsch. Die Druckänderung entspricht nicht der Änderung des Wasserspiegels.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Erklärung]
#v(40pt)
#only("1-")[Erinnere dich an die hydrostatische Druckformel: $p = rho g h$]
#v(20pt)
#only("2-")[- $rho$: Dichte des Wassers (1000 kg/m³)]
#only("3-")[- $g$: Erdbeschleunigung (9,81 m/s²)]
#only("4-")[- $h$: Höhe der Wassersäule]
#v(40pt)
#only("5-")[Wenn $h$ um 2 m sinkt, dann sinkt $p$ um:]
#v(20pt)
#only("6-")[$ Delta p = rho g Delta h$]
#only("7-")[$ = 1000 dot 9.81 dot 2$]
#only("8-")[$ = 19620 "Pa" = 0.1962 "bar" ca. 0.2 "bar"$]
#only("1")[#voiceover("Um zu verstehen, warum der Druck um 0,2 bar sinkt, erinnere dich an die hydrostatische Druckformel: p gleich rho g h.")]
#only("2")[#voiceover("Hier ist rho die Dichte des Wassers, die 1000 Kilogramm pro Kubikmeter beträgt.")]
#only("3")[#voiceover("g ist die Erdbeschleunigung, 9,81 Meter pro Sekunde zum Quadrat.")]
#only("4")[#voiceover("Und h ist die Höhe der Wassersäule.")]
#only("5")[#voiceover("Wenn h nun um 2 Meter sinkt, dann wird der Druck p um folgendes sinken:")]
#only("6")[#voiceover("Delta p gleich rho g Delta h.")]
#only("7")[#voiceover("Setzt man die Werte ein, erhält man 1000 mal 9,81 mal 2.")]
#only("8")[#voiceover("Das ergibt 19620 Pascal, was etwa 0,2 bar entspricht.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

h1 = 14  # Anfangshöhe
h2 = 12  # Höhe nach dem Absinken des Wasserspiegels

p1 = 1000 * 9.81 * h1  # Anfangsdruck
p2 = 1000 * 9.81 * h2  # Druck nach dem Absinken des Wasserspiegels

heights = [0, h2, h1]
pressures = [0, p2, p1]
labels = ['Boden', '4. Stock (Nachher)', '4. Stock (Vorher)']

plt.figure(figsize=(8, 6))
plt.plot(pressures, heights, marker='o', markersize=10, linewidth=2)
plt.yticks(heights, labels)
plt.xlabel('Druck (Pa)')
plt.ylabel('Höhe')
plt.title('Druck vs Höhe')
plt.grid(True)
plt.annotate(f'Druckabfall: {round((p1-p2)/1e5, 2)} bar', 
             xy=((p1+p2)/2, (h1+h2)/2),
             xytext=(p1*1.1, (h1+h2)/2),
             arrowprops=dict(facecolor='black', shrink=0.05))

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[#voiceover("Hier ist eine visuelle Darstellung der Situation. Die blaue Linie zeigt den Druck in verschiedenen Höhen. Die roten Punkte markieren den Druck im vierten Stock vor und nach dem Absinken des Wasserspiegels um 2 Meter. Der Pfeil zeigt den Druckabfall, der etwa 0,2 bar beträgt.")]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse]
#v(40pt)
#only("1-")[- Der hydrostatische Druck hängt von der Höhe der Wassersäule ab 📏]
#v(20pt)
#only("2-")[- Eine Abnahme des Wasserspiegels führt zu einer Abnahme des Drucks 🔽]
#v(20pt)
#only("3-")[- Die Druckänderung kann mit $Delta p = rho g Delta h$ berechnet werden 🧮]
#only("1")[#voiceover("Zusammenfassend hängt der hydrostatische Druck von der Höhe der Wassersäule ab.")]
#only("2")[#voiceover("Eine Abnahme des Wasserspiegels führt zu einer Abnahme des Drucks.")]
#only("3")[#voiceover("Und die Druckänderung kann mit der Formel Delta p gleich rho g Delta h berechnet werden.")]
]