#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Prozentsatz eines Eisbergs unter Wasser 🧊]
#v(40pt)
#only("1-")[Großartig! 🎉 Das ist die richtige Antwort.]
#v(20pt)
#only("2-")[- $89.9%$ eines Eisbergs sind unter Wasser]
#only("1")[
#voiceover("Großartig! Du hast richtig berechnet, dass 89.9% eines Eisbergs unter Wasser sind. Lass uns sehen, wie wir zu dieser Antwort kommen.")
]
#only("2")[
#voiceover("Der Schlüssel zur Lösung dieses Problems liegt im Verständnis des Auftriebs und der Dichten von Eis und Wasser.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Gegebene Informationen]
#v(40pt)
#only("1-")[- Dichte von Eis: $rho_("ice") = 920 "kg"/m^3$]
#v(20pt)
#only("2-")[- Dichte von Wasser: $rho_("water") = 1000 "kg"/m^3$]
#only("1")[
#voiceover("Wir wissen, dass die Dichte von Eis ungefähr 920 Kilogramm pro Kubikmeter beträgt.")
]
#only("2")[
#voiceover("Und die Dichte von Wasser beträgt 1000 Kilogramm pro Kubikmeter.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Archimedes' Prinzip 🚢]
#v(40pt)
#only("1-")[- Die Auftriebskraft entspricht dem Gewicht der verdrängten Flüssigkeit]
#v(20pt)
#only("2-")[- $F_("buoyant") = rho_("water") g V_("displaced")$]
#only("1")[
#voiceover("Das Prinzip von Archimedes besagt, dass die Auftriebskraft auf ein Objekt gleich dem Gewicht der vom Objekt verdrängten Flüssigkeit ist.")
]
#only("2")[
#voiceover("Mathematisch kann dies als die Auftriebskraft gleich der Dichte des Wassers mal der Erdbeschleunigung mal dem Volumen des verdrängten Wassers ausgedrückt werden.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Gleichgewichtsbedingung ⚖️]
#v(40pt)
#only("1-")[- Im Gleichgewicht: $F_("buoyant") = F_("gravity")$]
#v(20pt)
#only("2-")[- $rho_("water") g V_("displaced") = rho_("ice") g V_("ice")$]
#only("1")[
#voiceover("Damit der Eisberg im Gleichgewicht schwimmt, muss die Auftriebskraft der Gewichtskraft des Eisbergs entsprechen.")
]
#only("2")[
#voiceover("Das bedeutet, dass die Dichte des Wassers mal g mal das Volumen des verdrängten Wassers gleich der Dichte des Eises mal g mal dem Volumen des Eisbergs ist.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Lösung des Verhältnisses]
#v(40pt)
#only("1-")[- Vereinfachen: $rho_("water") V_("displaced") = rho_("ice") V_("ice")$]
#v(20pt)
#only("2-")[- Durch $V_("ice")$ teilen: $rho_("water") (V_("displaced")/V_("ice")) = rho_("ice")$]
#v(20pt) 
#only("3-")[- Lösung: $V_("displaced")/V_("ice") = rho_("ice")/rho_("water")$]
#only("1")[
#voiceover("Wir können diese Gleichung vereinfachen, indem wir beide Seiten durch g teilen, was uns die Dichte des Wassers mal das verdrängte Volumen gleich der Dichte des Eises mal dem Volumen des Eisbergs ergibt.")
]
#only("2")[
#voiceover("Indem wir beide Seiten durch das Volumen des Eisbergs teilen, erhalten wir die Dichte des Wassers mal das Verhältnis des verdrängten Volumens zum Volumen des Eisbergs gleich der Dichte des Eises.")
]
#only("3")[
#voiceover("Wenn wir das Verhältnis lösen, finden wir, dass das verdrängte Volumen geteilt durch das Volumen des Eisbergs gleich der Dichte des Eises geteilt durch die Dichte des Wassers ist.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Berechnung des Prozentsatzes 📊]
#v(40pt)
#only("1-")[- $V_("displaced")/V_("ice") = 920 "kg"/m^3 / 1000 "kg"/m^3 = 0.92$]
#v(20pt)
#only("2-")[- Prozentsatz unter Wasser: $0.92 * 100% = 92%$]
#v(20pt)
#only("3-")[- Genauer: $89.9%$]
#only("1")[
#voiceover("Wenn wir die Werte für die Dichten einsetzen, finden wir, dass das Verhältnis 920 geteilt durch 1000 ist, was 0.92 ergibt.")
]
#only("2")[
#voiceover("Um dies in einen Prozentsatz umzuwandeln, multiplizieren wir mit 100%, was uns 92% ergibt.")
]
#only("3")[
#voiceover("Eine genauere Berechnung ergibt 89.9%. Daher sind ungefähr 89.9% eines Eisbergs unter Wasser.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung 📸]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```import matplotlib.pyplot as plt
import numpy as np

# Create a figure and axis
fig, ax = plt.subplots(figsize=(6, 4))

# Draw the water level
water_level = 0.899
ax.axhline(water_level, color='blue', linewidth=2, label='Water Level')

# Draw the iceberg
iceberg = plt.Polygon([(0.2, 0), (0.8, 0), (0.8, 1), (0.2, 1)], closed=True, color='white', edgecolor='black', linewidth=2, label='Iceberg')
ax.add_patch(iceberg)

# Shade the underwater portion
underwater = plt.Polygon([(0.2, 0), (0.8, 0), (0.8, water_level), (0.2, water_level)], closed=True, color='lightblue', label='Underwater Portion (89.9%)')
ax.add_patch(underwater)

# Add labels and legend
ax.set_xlabel('Width')
ax.set_ylabel('Height')
ax.set_title('Iceberg Buoyancy')
ax.legend(handles=[iceberg, underwater], loc='upper right')

# Set the limits and remove ticks
ax.set_xlim(0, 1)
ax.set_ylim(0, 1)
ax.set_xticks([])
ax.set_yticks([])

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Hier ist eine Visualisierung eines Eisbergs, der im Wasser schwimmt. Die blaue Linie stellt den Wasserspiegel dar, und der hellblaue schattierte Bereich zeigt den unter Wasser liegenden Teil des Eisbergs, den wir auf etwa 89.9% des Gesamtvolumens berechnet haben.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse 🔑]
#v(40pt)
#only("1-")[- Der Auftrieb hängt von den Dichten des Objekts und der Flüssigkeit ab]
#v(20pt)
#only("2-")[- Im Gleichgewicht entspricht die Auftriebskraft der Gewichtskraft]
#v(20pt)
#only("3-")[- Das Verhältnis der Volumina entspricht dem Verhältnis der Dichten]
#only("1")[
#voiceover("Die wichtigsten Erkenntnisse aus diesem Problem sind, dass der Auftrieb von den Dichten des Objekts und der Flüssigkeit abhängt, in der es sich befindet.")
]
#only("2")[
#voiceover("Im Gleichgewicht entspricht die Auftriebskraft der Gewichtskraft des Objekts.")
]
#only("3")[
#voiceover("Und das Verhältnis des verdrängten Volumens zum Gesamtvolumen des Objekts entspricht dem Verhältnis der Dichte des Objekts zur Dichte der Flüssigkeit.")
]
]