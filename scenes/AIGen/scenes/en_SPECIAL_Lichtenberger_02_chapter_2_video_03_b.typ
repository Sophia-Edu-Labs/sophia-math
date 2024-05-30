#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Percentage of an Iceberg Underwater 🧊]
#v(40pt)
#only("1-")[Great job! 🎉 That's the correct answer.]
#v(20pt)
#only("2-")[- $89.9%$ of an iceberg is underwater]
#only("1")[
#voiceover("Not quite. Let's see the correct solution to find out how 89.9% of an iceberg is underwater.")
]
#only("2")[
#voiceover("The key to solving this problem is understanding the concept of buoyancy and the densities of ice and water.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Given Information]
#v(40pt)
#only("1-")[- Density of ice: $rho_("ice") = 920 "kg"/m^3$]
#v(20pt)
#only("2-")[- Density of water: $rho_("water") = 1000 "kg"/m^3$]
#only("1")[
#voiceover("We know that the density of ice is approximately 920 kilograms per cubic meter.")
]
#only("2")[
#voiceover("And the density of water is 1000 kilograms per cubic meter.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Archimedes' Principle 🚢]
#v(40pt)
#only("1-")[- The buoyant force equals the weight of the displaced fluid]
#v(20pt)
#only("2-")[- $F_("buoyant") = rho_("water") g V_("displaced")$]
#only("1")[
#voiceover("Archimedes' principle states that the buoyant force on an object is equal to the weight of the fluid displaced by the object.")
]
#only("2")[
#voiceover("Mathematically, this can be written as the buoyant force equals the density of water times the acceleration due to gravity times the volume of water displaced.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Equilibrium Condition ⚖️]
#v(40pt)
#only("1-")[- At equilibrium: $F_("buoyant") = F_("gravity")$]
#v(20pt)
#only("2-")[- $rho_("water") g V_("displaced") = rho_("ice") g V_("ice")$]
#only("1")[
#voiceover("For the iceberg to float at equilibrium, the buoyant force must equal the force of gravity on the iceberg.")
]
#only("2")[
#voiceover("This means that the density of water times g times the volume of water displaced equals the density of ice times g times the volume of the iceberg.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Solving for the Ratio]
#v(40pt)
#only("1-")[- Simplify: $rho_("water") V_("displaced") = rho_("ice") V_("ice")$]
#v(20pt)
#only("2-")[- Divide by $V_("ice")$: $rho_("water") (V_("displaced")/V_("ice")) = rho_("ice")$]
#v(20pt) 
#only("3-")[- Solve: $V_("displaced")/V_("ice") = rho_("ice")/rho_("water")$]
#only("1")[
#voiceover("We can simplify this equation by dividing both sides by g, giving us the density of water times the volume displaced equals the density of ice times the volume of the iceberg.")
]
#only("2")[
#voiceover("Dividing both sides by the volume of the iceberg, we get the density of water times the ratio of the volume displaced to the volume of the iceberg equals the density of ice.")
]
#only("3")[
#voiceover("Solving for the ratio, we find that the volume displaced divided by the volume of the iceberg equals the density of ice divided by the density of water.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Calculating the Percentage 📊]
#v(40pt)
#only("1-")[- $V_("displaced")/V_("ice") = 920 "kg"/m^3 / 1000 "kg"/m^3 = 0.92$]
#v(20pt)
#only("2-")[- Percentage underwater: $0.92 * 100% = 92%$]
#v(20pt)
#only("3-")[- More precisely: $89.9%$]
#only("1")[
#voiceover("Plugging in the values for the densities, we find that the ratio is 920 divided by 1000, which equals 0.92.")
]
#only("2")[
#voiceover("To convert this to a percentage, we multiply by 100%, giving us 92%.")
]
#only("3")[
#voiceover("A more precise calculation yields 89.9%. Therefore, approximately 89.9% of an iceberg is underwater.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualization 📸]
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
#voiceover("Here's a visualization of an iceberg floating in water. The blue line represents the water level, and the light blue shaded area shows the underwater portion of the iceberg, which we calculated to be about 89.9% of the total volume.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways 🔑]
#v(40pt)
#only("1-")[- Buoyancy depends on the densities of the object and fluid]
#v(20pt)
#only("2-")[- At equilibrium, buoyant force equals gravitational force]
#v(20pt)
#only("3-")[- Ratio of volumes equals ratio of densities]
#only("1")[
#voiceover("The key takeaways from this problem are that buoyancy depends on the densities of the object and the fluid it's in.")
]
#only("2")[
#voiceover("At equilibrium, the buoyant force equals the gravitational force on the object.")
]
#only("3")[
#voiceover("And the ratio of the volume displaced to the total volume of the object equals the ratio of the object's density to the fluid's density.")
]
]