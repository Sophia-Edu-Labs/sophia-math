#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Why do Balloons Rise? 🎈]
#v(40pt)
#only("1-")[- Balloons rise due to buoyancy force 🍃]
#v(20pt)
#only("2-")[- Buoyancy force depends on density difference 🪁]
#v(20pt)
#only("3-")[- Balloon gas has lower density than air 💨]
#only("1")[
#voiceover("Balloons rise into the sky due to a force called buoyancy. This is the same force that makes objects float in water.")
]
#only("2")[
#voiceover("The strength of the buoyancy force depends on the difference in density between the gas inside the balloon and the surrounding air.")
]
#only("3")[
#voiceover("The gas used in balloons, such as helium, has a much lower density compared to the air around it.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Buoyancy Force]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create a figure and axis
fig, ax = plt.subplots(figsize=(6, 6))

# Draw the balloon
balloon = plt.Circle((0.5, 0.7), 0.2, color='red', alpha=0.7)
ax.add_artist(balloon)

# Draw the buoyancy force arrow
ax.arrow(0.5, 0.7, 0, 0.2, head_width=0.05, head_length=0.1, fc='green', ec='green', alpha=0.7)
ax.text(0.52, 0.85, 'Buoyancy Force', color='green', fontsize=12, alpha=0.7)

# Draw the density difference
ax.text(0.1, 0.3, 'Air (Higher Density)', color='blue', fontsize=12, alpha=0.7)
ax.text(0.32, 0.6, 'Helium\n(Lower Density)', color='red', fontsize=12, alpha=0.7)

# Set the limits and remove the ticks
ax.set_xlim(0, 1)
ax.set_ylim(0, 1)
ax.set_xticks([])
ax.set_yticks([])

plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("This creates an upward buoyancy force on the balloon. The magnitude of this force is equal to the weight of the air displaced by the balloon.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Archimedes' Principle]
#v(40pt)
#only("1-")[$ "Buoyancy Force" = "Weight of Displaced Fluid" $]
#v(20pt)
#only("2-")[$ F_B = rho_("air") g V_("balloon") $]
#v(20pt)
#only("3-")[where $rho_("air")$ is air density, $g$ is gravity, $V_("balloon")$ is balloon volume]
#only("1")[
#voiceover("This is known as Archimedes' principle. It states that the buoyancy force on an object is equal to the weight of the fluid displaced by the object.")
]
#only("2")[
#voiceover("Mathematically, the buoyancy force F B equals the density of air rho air, times the acceleration due to gravity g, times the volume of the balloon V balloon.")
]
#only("3")[
#voiceover("Here, rho air is the density of the surrounding air, g is the acceleration due to gravity, and V balloon is the volume of the balloon.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Rising Condition]
#v(40pt)
#only("1-")[Balloon rises when:]
#v(20pt)
#only("2-")[$ "Buoyancy Force" > "Weight of Balloon" $]
#v(20pt)
#only("3-")[$ rho_("air") g V_("balloon") > (rho_("gas") V_("balloon") + m_("balloon")) g $]
#v(20pt)
#only("4-")[where $rho_("gas")$ is gas density, $m_("balloon")$ is mass of balloon material]
#only("1")[
#voiceover("The balloon will start rising when the buoyancy force is greater than the total weight of the balloon, which includes the weight of the gas and the weight of the balloon material.")
]
#only("2")[
#voiceover("In other words, the balloon rises when the buoyancy force exceeds the weight of the balloon.")
]
#only("3")[
#voiceover("This condition can be expressed as the density of air times gravity times the volume of the balloon, being greater than the density of the gas times the volume of the balloon plus the mass of the balloon material, all multiplied by gravity.")
]
#only("4")[
#voiceover("Here, rho gas is the density of the gas inside the balloon, and m balloon is the mass of the balloon material itself.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Balloons rise due to buoyancy force 🎈🍃]
#v(20pt)
#only("2-")[- Buoyancy force depends on density difference 🪁]
#v(20pt)
#only("3-")[- Balloon rises when buoyancy force > weight 📈]
#only("1")[
#voiceover("To summarize, balloons rise due to the buoyancy force, which is an upward force exerted by the surrounding air.")
]
#only("2")[
#voiceover("The strength of this buoyancy force depends on the difference in density between the gas inside the balloon and the air outside.")
]
#only("3")[
#voiceover("The balloon will rise when the buoyancy force is greater than the total weight of the balloon, including the gas and the balloon material.")
]
]