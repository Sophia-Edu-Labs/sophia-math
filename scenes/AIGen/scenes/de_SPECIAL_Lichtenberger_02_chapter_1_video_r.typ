#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Wasserdruck in Gebäuden 🏠💧]

#v(40pt)

#only("1-")[- Variiert mit der Höhe aufgrund der Schwerkraft 🌍]
#only("1")[#voiceover("Der Wasserdruck in Gebäuden variiert mit der Höhe aufgrund der Gravitationskraft, die auf die Wassersäule wirkt.")]

#v(20pt)

#only("2-")[- Berechnet mit $P = P_("Erdgeschoss") + rho dot g dot h$]
#only("2")[#voiceover("Der Überdruck in einer bestimmten Höhe kann mit der Formel P gleich P Erdgeschoss plus rho mal g mal h berechnet werden, wobei rho die Dichte des Wassers, g die Erdbeschleunigung und h der Höhenunterschied ist.")]

#v(20pt)

#only("3-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Define building parameters
ground_floor_pressure = 4.0  # bar
water_density = 1000  # kg/m^3
g = 9.81  # m/s^2
height = np.linspace(0, 20, 100)  # m

# Calculate pressure at different heights
pressure = ground_floor_pressure + water_density * g * height / 100000  # Convert Pa to bar

# Create the plot
plt.figure(figsize=(6, 8))
plt.plot(pressure, height, linewidth=2, color='blue')
plt.xlabel('Pressure (bar)')
plt.ylabel('Height (m)')
plt.title('Water Pressure vs. Height in a Building')
plt.grid(True)
plt.xlim(3.5, 6.5)
plt.ylim(0, 20)

# Annotate ground floor pressure
plt.annotate(f'Ground Floor\n{ground_floor_pressure} bar', xy=(ground_floor_pressure, 0), 
             xytext=(ground_floor_pressure+0.1, 2), arrowprops=dict(facecolor='black', shrink=0.05))

# Annotate pressure at a specific height
specific_height = 14
specific_pressure = ground_floor_pressure + water_density * g * specific_height / 100000
plt.plot(specific_pressure, specific_height, 'ro')
plt.annotate(f'{specific_pressure:.1f} bar', xy=(specific_pressure, specific_height),
             xytext=(specific_pressure+0.1, specific_height-1), arrowprops=dict(facecolor='black', shrink=0.05))

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
]
#only("3")[#voiceover("Dieses Diagramm zeigt, wie sich der Wasserdruck mit der Höhe in einem Gebäude verändert. Der Druck im Erdgeschoss ist markiert, und Du kannst sehen, wie der Druck linear zunimmt, wenn wir das Gebäude hinaufsteigen, aufgrund des zunehmenden Gewichts der Wassersäule.")]

#v(20pt)

#only("4-")[- Der Druck sinkt um $rho dot g dot Delta h$, wenn der Wasserstand im Reservoir sinkt]
#only("4")[#voiceover("Wenn der Wasserstand im Reservoir um einen bestimmten Betrag sinkt, wird der Druck an jedem Wasserhahn im Gebäude um rho mal g mal die Änderung der Reservoirhöhe sinken. Dies liegt daran, dass die Höhe der Wassersäule über jedem Wasserhahn reduziert wird.")]

]

#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse 🔑]

#v(40pt)

#only("1-")[- Wasserdruck variiert mit der Höhe in Gebäuden 📏]
#only("1")[#voiceover("Zusammenfassend sind die wichtigsten Punkte: Der Wasserdruck variiert mit der Höhe in Gebäuden aufgrund der Schwerkraft, die auf die Wassersäule wirkt.")]

#v(20pt)

#only("2-")[- Berechenbar mit den Prinzipien der Fluidstatik 🧮]
#only("2")[#voiceover("Diese Druckvariation kann mit den Prinzipien der Fluidstatik berechnet werden, insbesondere mit der Formel, die Druck, Dichte, Schwerkraft und Höhe miteinander in Beziehung setzt.")]

#v(20pt)

#only("3-")[- Änderungen des Wasserstands im Reservoir beeinflussen den Druck im gesamten Gebäude 🆙🔽]
#only("3")[#voiceover("Und Änderungen des Wasserstands im Reservoir werden den Druck an allen Punkten im Wassersystem des Gebäudes um einen Betrag beeinflussen, der proportional zur Änderung der Reservoirhöhe ist.")]

#v(20pt)

#only("4-")[- Das Verständnis dieser Prinzipien ist entscheidend für die Gebäudegestaltung 🏗️]
#only("4")[#voiceover("Das Verständnis dieser Prinzipien ist entscheidend für die Gestaltung sicherer und funktionaler Wassersysteme in mehrstöckigen Gebäuden.")]
]