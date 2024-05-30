#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Auftrieb Rückblick 🌊]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create objects with different densities
styrofoam_density = 0.05
wood_density = 0.7
steel_density = 7.8

# Calculate buoyant forces (simplified)
styrofoam_force = 1 - styrofoam_density
wood_force = 1 - wood_density
steel_force = 1 - steel_density

# Plot the buoyant forces
objects = ['Styrofoam', 'Wood', 'Steel']
forces = [styrofoam_force, wood_force, steel_force]

plt.figure(figsize=(8, 6))
plt.bar(objects, forces)
plt.axhline(0, color='black', linewidth=0.5)
plt.ylabel('Buoyant Force (Simplified)')
plt.title('Buoyant Forces for Different Materials')
plt.grid(True, axis='y')

for i, v in enumerate(forces):
    plt.text(i, v + 0.01, f'{v:.2f}', ha='center')

plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Lass uns rekapitulieren, was wir über den Auftrieb gelernt haben. Die Auftriebskraft, die auf ein Objekt im Wasser wirkt, hängt von zwei Schlüsselfaktoren ab: der Dichte des Objekts und dem Volumen des verdrängten Wassers.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Die Rolle der Dichte 🧱]
#v(40pt)
#only("1-")[- Objekte mit geringerer Dichte erfahren größeren Auftrieb]
#v(20pt)
#only("2-")[- Beispiel: Styropor (geringe Dichte) vs. Stahl (hohe Dichte)]
#only("1")[
#voiceover("Objekte mit geringerer Dichte erfahren eine größere Auftriebskraft. Dies liegt daran, dass die Auftriebskraft dem Gewicht der vom Objekt verdrängten Flüssigkeit entspricht.")
]
#only("2")[
#voiceover("Zum Beispiel erfährt Styropor, das eine sehr geringe Dichte hat, einen viel größeren Auftrieb im Vergleich zu einem dichten Material wie Stahl, wenn es ins Wasser getaucht wird.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Volumen ist wichtig 📏]
#v(40pt)
#only("1-")[- Größere Objekte verdrängen mehr Wasser, was die Auftriebskraft erhöht]
#v(20pt)
#only("2-")[- Beispiel: Großer Styroporblock vs. kleiner Styroporblock]
#only("1")[
#voiceover("Das Volumen des Objekts spielt ebenfalls eine entscheidende Rolle. Größere Objekte verdrängen ein größeres Wasservolumen, was die auf sie wirkende Auftriebskraft erhöht.")
]
#only("2")[
#voiceover("Betrachte zwei Styroporblöcke, einen großen und einen kleinen. Der größere Block wird einen größeren Auftrieb erfahren, weil er mehr Wasser verdrängt, obwohl beide Blöcke die gleiche Dichte haben.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Alles zusammenfügen 🧩]
#v(40pt)
#only("1-")[- Auftriebskraft = Gewicht der verdrängten Flüssigkeit]
#v(20pt)
#only("2-")[- $F_"buoyant" = rho_"fluid" V_"displaced" g$]
#v(20pt)
#only("3-")[- Wobei $rho_"fluid"$ die Dichte der Flüssigkeit ist, $V_"displaced"$ das verdrängte Volumen und $g$ die Erdbeschleunigung ist]
#only("1")[
#voiceover("Zusammengefasst ist die Auftriebskraft gleich dem Gewicht der vom Objekt verdrängten Flüssigkeit.")
]
#only("2")[
#voiceover("Mathematisch kann dies ausgedrückt werden als F Auftrieb gleich rho Flüssigkeit mal V verdrängt mal g,")
]
#only("3")[
#voiceover("wobei rho Flüssigkeit die Dichte der Flüssigkeit ist, V verdrängt das Volumen der vom Objekt verdrängten Flüssigkeit und g die Erdbeschleunigung ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse 🔑]
#v(40pt)
#only("1-")[- Objekte mit geringerer Dichte erfahren größeren Auftrieb 🎈]
#v(20pt)
#only("2-")[- Größere Objekte verdrängen mehr Flüssigkeit, was die Auftriebskraft erhöht 🌊]
#v(20pt)
#only("3-")[- Die Auftriebskraft hängt sowohl von der Dichte als auch vom verdrängten Volumen ab 🧮]
#only("1")[
#voiceover("Die wichtigsten Erkenntnisse aus diesem Rückblick sind:")
]
#only("1")[
#voiceover("Erstens, Objekte mit geringerer Dichte erfahren eine größere Auftriebskraft.")
]
#only("2")[
#voiceover("Zweitens, größere Objekte verdrängen mehr Flüssigkeit, was die auf sie wirkende Auftriebskraft erhöht.")
]
#only("3")[
#voiceover("Und schließlich hängt die Auftriebskraft sowohl von der Dichte des Objekts als auch vom Volumen der verdrängten Flüssigkeit ab.")
]
]