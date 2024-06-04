#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Hot Air Balloon Principle 🎈]
#v(40pt)
#only("1-")[- Balloon rises due to density difference]
#v(20pt)
#only("2-")[- Heated air inside balloon has lower density]
#v(20pt)
#only("3-")[- Cooler air outside has higher density]
#only("1")[
#voiceover("The principle behind a hot air balloon is that it rises due to the difference in density between the air inside and outside the balloon.")
]
#only("2")[
#voiceover("The air inside the balloon is heated, which causes it to expand and decrease in density.")
]
#only("3")[
#voiceover("The air outside the balloon is cooler and therefore has a higher density compared to the heated air inside.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Density and Buoyancy 🌡️]
#v(40pt)
#only("1-")[- Density: $ rho = m / V $]
#v(20pt)
#only("2-")[- Buoyant force: $ F_"B" = rho_"fluid" V_"displaced" g $]
#v(20pt)
#only("3-")[- Balloon rises when $ F_"B" > F_"gravity" $]
#only("1")[
#voiceover("Density, denoted by the Greek letter rho, is defined as mass per unit volume. It's calculated as mass divided by volume.")
]
#only("2")[
#voiceover("The buoyant force, F sub B, is the upward force exerted by a fluid on an object. It's equal to the density of the fluid times the volume of fluid displaced times the acceleration due to gravity.")
]
#only("3")[
#voiceover("The balloon rises when the buoyant force acting on it is greater than the force of gravity pulling it down.")
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

# Create the figure and axes
fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(10, 4))

# Plot the density difference
x = np.linspace(0, 1, 100)
y1 = 1.225 * np.ones_like(x)  # Density of cool air (kg/m^3)
y2 = 0.9 * np.ones_like(x)    # Density of heated air (kg/m^3)

ax1.plot(x, y1, 'b-', label='Cool Air')
ax1.plot(x, y2, 'r-', label='Heated Air')
ax1.set_xlabel('Position')
ax1.set_ylabel('Density (kg/m³)')
ax1.set_title('Density Difference')
ax1.legend()

# Plot the forces
labels = ['Buoyant Force', 'Gravity']
sizes = [60, 40]  # Adjust sizes to show buoyant force > gravity

ax2.pie(sizes, labels=labels, autopct='%1.1f%%', startangle=90)
ax2.axis('equal')
ax2.set_title('Forces Acting on Balloon')

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("This visualization illustrates the density difference and the forces acting on the hot air balloon.")
]
#only("2")[
#voiceover("The left plot shows the density of cool air outside the balloon in blue and the lower density of heated air inside the balloon in red.")
]
#only("3")[
#voiceover("The right plot demonstrates that the buoyant force acting upwards is greater than the force of gravity pulling the balloon down, allowing it to rise.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary 🎡]
#v(40pt)
#only("1-")[- Hot air balloon rises due to density difference 🎈]
#v(20pt)
#only("2-")[- Heated air inside has lower density than cooler air outside 🌡️]
#v(20pt)
#only("3-")[- Buoyant force exceeds gravity, causing balloon to ascend ⬆️]
#only("1")[
#voiceover("In summary, a hot air balloon rises because of the difference in density between the heated air inside the balloon and the cooler air outside.")
]
#only("2")[
#voiceover("Heating the air inside the balloon decreases its density compared to the surrounding air.")
]
#only("3")[
#voiceover("When the buoyant force acting on the balloon exceeds the force of gravity, the balloon begins to ascend.")
]
]