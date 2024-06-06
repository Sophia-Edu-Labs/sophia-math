#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Reale Anwendungen 🌍]
#v(40pt)
#only("1-")[- Physik 🔭]
#v(20pt)
#only("2-")[- Ingenieurwesen 🏗️]
#v(20pt)
#only("3-")[- Wirtschaft 📈]
#v(20pt)
#only("4-")[- Biologie 🌿]

#only("1")[
#voiceover("Potenzfunktionen haben zahlreiche reale Anwendungen in verschiedenen Bereichen. In der Physik werden sie verwendet, um Beziehungen zwischen Größen wie Abstand, Zeit und Geschwindigkeit zu modellieren.")
]
#only("2")[
#voiceover("Im Ingenieurwesen werden Potenzfunktionen eingesetzt, um das Verhalten von Materialien unter Belastung oder die Effizienz von Maschinen zu beschreiben.")
]
#only("3")[
#voiceover("Ökonomen nutzen Potenzfunktionen, um Wirtschaftswachstum, Einkommensverteilung und Produktionsfunktionen zu analysieren.")
]
#only("4")[
#voiceover("In der Biologie werden Potenzfunktionen angewendet, um das Wachstum von Populationen, Stoffwechselraten und allometrische Skalierungsbeziehungen zu modellieren.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel: Gravitation 🪐]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt
import numpy as np

# Define the gravitational force function
def F(r, m1, m2, G):
    return G * m1 * m2 / r**2

# Set up the parameters
m1 = 6e24  # Mass of Earth (kg)
m2 = 7.34e22  # Mass of the Moon (kg)
G = 6.67e-11  # Gravitational constant (m^3 kg^-1 s^-2)
r = np.linspace(3.8e8, 4e8, 100)  # Range of distances (m)

# Calculate the gravitational force
F_gravity = F(r, m1, m2, G)

# Create the plot
plt.figure(figsize=(8, 6))
plt.plot(r, F_gravity, linewidth=2, color='blue')
plt.xlabel('Distance (m)')
plt.ylabel('Gravitational Force (N)')
plt.title('Gravitational Force between Earth and Moon')
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Newtons Gesetz der universellen Gravitation besagt, dass die Gravitationskraft zwischen zwei Objekten proportional zum Produkt ihrer Massen und umgekehrt proportional zum Quadrat des Abstands zwischen ihnen ist. Diese Beziehung wird durch die Potenzfunktion $F = G (m_1 m_2) / r^2$ beschrieben, wobei $F$ die Gravitationskraft, $G$ die Gravitationskonstante, $m_1$ und $m_2$ die Massen der Objekte und $r$ der Abstand zwischen ihnen ist.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel: Strömungsdynamik 💧]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt
import numpy as np

# Define the drag force function
def F_drag(rho, v, C_d, A):
    return 0.5 * rho * v**2 * C_d * A

# Set up the parameters
rho = 1.225  # Density of air (kg/m^3)
C_d = 0.5  # Drag coefficient (dimensionless)
A = 1  # Cross-sectional area (m^2)
v = np.linspace(0, 100, 100)  # Range of velocities (m/s)

# Calculate the drag force
F_drag_values = F_drag(rho, v, C_d, A)

# Create the plot
plt.figure(figsize=(8, 6))
plt.plot(v, F_drag_values, linewidth=2, color='red')
plt.xlabel('Velocity (m/s)')
plt.ylabel('Drag Force (N)')
plt.title('Drag Force vs. Velocity')
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("In der Strömungsdynamik ist die von einem Objekt erlebte Widerstandskraft proportional zum Quadrat seiner Geschwindigkeit. Diese Beziehung wird durch die Potenzfunktion $F_d = 0.5 rho v^2 C_d A$ beschrieben, wobei $F_d$ die Widerstandskraft, $rho$ die Dichte des Fluids, $v$ die Geschwindigkeit, $C_d$ der Widerstandsbeiwert und $A$ die Querschnittsfläche des Objekts ist.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung 📝]
#v(40pt)
#only("1-")[- Potenzfunktionen haben vielfältige Anwendungen 🌈]
#v(20pt)
#only("2-")[- Sie werden verwendet, um Beziehungen in verschiedenen Bereichen zu modellieren 🔬]
#v(20pt)
#only("3-")[- Beispiele: Gravitation, Strömungsdynamik 🌍💧]
#v(20pt)
#only("4-")[- Ein wesentliches Werkzeug zum Verständnis der Welt 🔧]

#only("1")[
#voiceover("Zusammenfassend haben Potenzfunktionen vielfältige Anwendungen in vielen Studienbereichen.")
]
#only("2")[
#voiceover("Sie werden verwendet, um Beziehungen zwischen Größen in der Physik, im Ingenieurwesen, in der Wirtschaft und in der Biologie, unter anderem, zu modellieren.")
]
#only("3")[
#voiceover("Wir haben Beispiele von Potenzfunktionen im Newtonschen Gesetz der universellen Gravitation und der Widerstandskraft gesehen, die Objekte beim Durchqueren von Fluiden erfahren.")
]
#only("4")[
#voiceover("Das Verständnis von Potenzfunktionen ist entscheidend, um die Welt um uns herum zu verstehen und reale Probleme zu lösen.")
]
]