#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Balloon Physics 🎈]
#v(40pt)
#only("1-")[- Balloon inflated to 1550 m³ at start in Uster]
#v(20pt)
#only("2-")[- Volume remains constant while ascending]
#v(20pt)
#only("3-")[- How high can the balloon rise? 🌄]
#only("1")[
#voiceover("That's not quite right. Let's go through the correct solution step by step. We know that the balloon is inflated to a volume of 1550 cubic meters at the start in Uster.")
]
#only("2")[
#voiceover("This volume remains constant while the balloon is ascending.")
]
#only("3")[
#voiceover("So the question is, how high can this balloon rise?")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Approach 🧮]
#v(40pt)
#only("1-")[- Use the barometric formula: $p(h) = p_0 e^(-mgh/(RT))$]
#v(20pt)
#only("2-")[- Solve for height $h$]
#only("1")[
#voiceover("To solve this, we can use the barometric formula. This formula relates the pressure p at a height h to the pressure p naught at sea level.")
]
#only("2")[
#voiceover("We can rearrange this formula to solve for the height h.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Solution]
#v(40pt)
#only("1-")[- Buoyancy condition: $rho_("air") V = m_("balloon")$]
#v(20pt)
#only("2-")[- Substitute in barometric formula and solve for $h$:]
#v(10pt)
#only("2-")[
$ 
p_0 e^(-mgh/(RT)) = (m_("balloon"))/(V)
$
]
#v(10pt)
#only("3-")[
$
h = -(RT)/(mg) ln((m_("balloon"))/(p_0 V))
$
]
#v(20pt)
#only("4-")[- Plug in values: $h = 2000 "m"$]
#only("1")[
#voiceover("First, we use the buoyancy condition. This says that at equilibrium, the density of air times the volume of the balloon equals the mass of the balloon.")
]
#only("2")[
#voiceover("We can substitute this into the barometric formula and solve for h.")
]
#only("3")[
#voiceover("After some rearranging, we get this formula for the height h.")
]
#only("4")[
#voiceover("Now we just need to plug in the values. The gas constant R is about 8.31, the temperature T is about 288 Kelvin, the mass of air m is about 0.029 kg/mol, the acceleration due to gravity g is 9.81 m/s², the pressure at sea level p naught is about 101,325 Pa, and the volume V is 1550 m³. Plugging all of this in, we get a height of about 2000 meters!")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualization 📊]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Parameters
p0 = 101325 # Pressure at sea level (Pa)
R = 8.31 # Gas constant (J/(mol·K))
T = 288 # Temperature (K)
m = 0.029 # Mass of air (kg/mol)
g = 9.81 # Acceleration due to gravity (m/s²)
V = 1550 # Volume of balloon (m³)
M = 2000 # Mass of balloon (kg)

# Height function
def h(p):
    return -(R*T)/(m*g) * np.log(M/(p*V))

# Pressure range
p = np.linspace(50000, 101325, 100)

# Plot
plt.figure(figsize=(8, 6))
plt.plot(p, h(p), linewidth=2, color='blue')
plt.xlabel('Pressure (Pa)', fontsize=14)
plt.ylabel('Height (m)', fontsize=14)
plt.title('Balloon Height vs Pressure', fontsize=16)
plt.grid(True)
plt.show()
```,
width: 360pt),
caption: [],
)
]
]
#only("1")[
#voiceover("Here's a graph showing how the height of the balloon changes with pressure. As the pressure decreases, which happens as the balloon rises, the height increases.")
]
#v(20pt)
#only("2-")[At Uster's pressure (about 95,000 Pa), the balloon can rise to about 2000 m. 🎉]
#only("2")[
#voiceover("At the pressure in Uster, which is about 95,000 Pascals, we can see that the balloon can rise to a height of about 2000 meters. Well done!")
]
]