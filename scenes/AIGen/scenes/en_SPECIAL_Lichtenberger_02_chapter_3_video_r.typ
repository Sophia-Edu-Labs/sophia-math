#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Balloon Physics 🎈]

#v(40pt)

#only("1-")[- Balloons rise due to buoyancy force]
#only("1")[#voiceover("Balloons rise due to the buoyant force. This force is created by the density difference between the balloon gas and the surrounding air.")]

#v(20pt)

#only("2-")[- Density difference: balloon gas vs. air]
#only("2")[#voiceover("The buoyant force depends on the density difference between the gas inside the balloon and the air outside. The lighter the gas compared to air, the greater the buoyant force.")]

#v(20pt)

#only("3-")[- Conditions for hovering at constant height]
#only("3")[#voiceover("For a balloon to hover at a constant height, specific conditions must be met. The buoyant force must be equal to the weight of the balloon. This balance keeps the balloon at a stable altitude.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Balloon Behavior 📈]

#v(40pt)

#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create data for the balloon's altitude over time
time = np.linspace(0, 10, 100)
altitude_rise = time**2 / 10
altitude_hover = np.full_like(time, 5)
altitude_fall = 5 - (time - 5)**2 / 10

# Plot the balloon's behavior
plt.figure(figsize=(8, 6))
plt.plot(time[:50], altitude_rise[:50], label='Rising')
plt.plot(time[50:], altitude_hover[50:], label='Hovering')
plt.plot(time[50:], altitude_fall[50:], label='Falling')

# Add labels and legend
plt.xlabel('Time')
plt.ylabel('Altitude')
plt.title("Balloon's Behavior")
plt.legend()
plt.grid(True)

plt.show()
```,
width: 360pt),
)
]
]
#only("1")[#voiceover("This graph shows the typical behavior of a balloon over time. Initially, the balloon rises due to the buoyant force. When the buoyant force equals the weight, the balloon hovers at a constant height. If the buoyant force decreases, for example, due to a leak, the balloon starts to fall.")]

#v(20pt)

#only("2-")[$ F_("buoyant") = F_("weight") $  ⇒  Hovering]
#only("2")[#voiceover("Remember, for hovering, the buoyant force must be equal to the weight force. This is the key condition for a balloon to maintain a stable altitude.")]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary 🎯]

#v(40pt)

#only("1-")[- Buoyancy force lifts balloons 🆙]
#only("1")[#voiceover("In summary, the buoyancy force, which arises from the density difference between the balloon gas and air, is what lifts balloons.")]

#v(20pt)

#only("2-")[- Density difference: key factor 🔑]
#only("2")[#voiceover("The density difference between the gas and air is the key factor determining the strength of the buoyant force.")]

#v(20pt)

#only("3-")[- Hovering: $F_("buoyant") = F_("weight")$ ⚖️]
#only("3")[#voiceover("For a balloon to hover at a constant height, the buoyant force must be equal to the weight of the balloon. This balance is essential for stable flight.")]
]