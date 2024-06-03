#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Auftrieb eines Eisbergs 🧊]
#v(40pt)
#only("1-")[Großartig! 🎉 Das ist die richtige Antwort.]
#v(20pt)
#only("2-")[Lass uns sehen, wie wir das Schritt für Schritt berechnen können.]
#only("1")[
#voiceover("Großartig! Das ist die richtige Antwort.")
]
#only("2")[
#voiceover("Lass uns sehen, wie wir Schritt für Schritt den Prozentsatz eines Eisbergs berechnen können, der unter Wasser ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Gegebene Informationen]
#v(40pt)
#only("1-")[- Dichte von Eis: $rho_("ice") = 920 "kg"/m^3$]
#v(20pt)
#only("2-")[- Dichte von Wasser: $rho_("water") = 1000 "kg"/m^3$]
#only("1")[
#voiceover("Wir wissen, dass die Dichte von Eis 920 Kilogramm pro Kubikmeter beträgt,")
]
#only("2")[
#voiceover("und die Dichte von Wasser beträgt 1000 Kilogramm pro Kubikmeter.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 1: Archimedes' Prinzip]
#v(40pt)
#only("1-")[- Die Auftriebskraft entspricht dem Gewicht der verdrängten Flüssigkeit.]
#v(20pt)
#only("2-")[$ F_("buoyant") = rho_("water") V_("displaced") g $]
#only("1")[
#voiceover("Nach dem Prinzip von Archimedes entspricht die Auftriebskraft, die auf ein Objekt wirkt, dem Gewicht der vom Objekt verdrängten Flüssigkeit.")
]
#only("2")[
#voiceover("Mathematisch kann dies ausgedrückt werden als: Die Auftriebskraft entspricht der Dichte des Wassers mal dem Volumen des verdrängten Wassers mal der Beschleunigung aufgrund der Schwerkraft.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 2: Gleichgewicht]
#v(40pt)
#only("1-")[- Damit der Eisberg schwimmt, muss die Auftriebskraft seinem Gewicht entsprechen.]
#v(20pt)
#only("2-")[$ rho_("water") V_("displaced") g = rho_("ice") V_("iceberg") g $]
#only("1")[
#voiceover("Damit der Eisberg im Gleichgewicht schwimmt, muss die Auftriebskraft dem Gewicht des Eisbergs entsprechen.")
]
#only("2")[
#voiceover("Das bedeutet, dass die Dichte des Wassers mal das Volumen des verdrängten Wassers mal g gleich der Dichte des Eises mal dem Volumen des Eisbergs mal g sein muss.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 3: Vereinfachen]
#v(40pt)
#only("1-")[- Teile beide Seiten durch $g$:]
#v(20pt)
#only("2-")[$ rho_("water") V_("displaced") = rho_("ice") V_("iceberg") $]
#only("1")[
#voiceover("Wir können beide Seiten der Gleichung durch g teilen, um sie zu vereinfachen.")
]
#only("2")[
#voiceover("Dies lässt uns mit der Dichte des Wassers mal dem verdrängten Volumen gleich der Dichte des Eises mal dem Volumen des Eisbergs.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 4: Unterwasseranteil]
#v(40pt)
#only("1-")[- Teile beide Seiten durch $rho_("water") V_("iceberg")$:]
#v(20pt)
#only("2-")[$ V_("displaced")/V_("iceberg") = rho_("ice")/rho_("water") $]
#only("1")[
#voiceover("Jetzt teilen wir beide Seiten durch die Dichte des Wassers mal das Volumen des Eisbergs.")
]
#only("2")[
#voiceover("Dies ergibt das Verhältnis des verdrängten Volumens zum Gesamtvolumen des Eisbergs, das dem Verhältnis der Dichte von Eis zur Dichte von Wasser entspricht.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 5: Prozentsatz]
#v(40pt)
#only("1-")[- Um den Prozentsatz zu erhalten, multipliziere mit 100:]
#v(20pt)
#only("2-")[$ (rho_("ice")/rho_("water")) dot 100 = (920/1000) dot 100 = 92% $]
#only("1")[
#voiceover("Um diesen Bruch in einen Prozentsatz umzuwandeln, multiplizieren wir mit 100.")
]
#only("2")[
#voiceover("Wenn wir die Werte für die Dichten von Eis und Wasser einsetzen, erhalten wir, dass 920 geteilt durch 1000, mal 100, gleich 92 Prozent ist.")
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

# Set up the figure
fig, ax = plt.subplots(figsize=(6, 6))

# Draw the water
water = plt.Rectangle((0, 0), 10, 4, color='skyblue')
ax.add_patch(water)

# Draw the iceberg
iceberg_underwater = plt.Rectangle((4, 0), 2, 3.68, color='white')
iceberg_above = plt.Rectangle((4, 3.68), 2, 0.32, color='aliceblue')
ax.add_patch(iceberg_underwater)
ax.add_patch(iceberg_above)

# Add labels
ax.text(5, 2, '92%', ha='center', va='center', fontsize=20)
ax.text(5, 3.84, '8%', ha='center', va='center', fontsize=12)

# Set the limits and remove the ticks
ax.set_xlim(0, 10)
ax.set_ylim(0, 5)
ax.set_xticks([])
ax.set_yticks([])

# Add a title
ax.set_title('Iceberg Buoyancy', fontsize=20)

plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Hier ist eine Visualisierung eines Eisbergs, der im Wasser schwimmt. Wie wir berechnet haben, sind 92% des Volumens des Eisbergs unter Wasser, während nur 8% über der Oberfläche sichtbar sind.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Fazit]
#v(40pt)
#only("1-")[- 92% des Volumens eines Eisbergs sind unter Wasser. 🌊]
#v(20pt)
#only("2-")[- Dies liegt am Verhältnis der Dichten von Eis und Wasser. ⚖️]
#only("1")[
#voiceover("Zusammenfassend haben wir herausgefunden, dass 92 Prozent des Volumens eines Eisbergs unter Wasser sind.")
]
#only("2")[
#voiceover("Dies ist eine direkte Folge des Verhältnisses der Dichten von Eis und Wasser, wie es durch das Prinzip des Auftriebs von Archimedes erklärt wird.")
]
]