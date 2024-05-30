#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Iceberg Buoyancy 🧊]
#v(40pt)
#only("1-")[Great job! 🎉 That's the correct answer.]
#v(20pt)
#only("2-")[Let's see how we can calculate this step-by-step.]
#only("1")[
#voiceover("Not quite. Let's go over the correct solution.")
]
#only("2")[
#voiceover("Let's see how we can calculate the percentage of an iceberg that is underwater step-by-step.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Given Information]
#v(40pt)
#only("1-")[- Density of ice: $rho_("ice") = 920 "kg"/m^3$]
#v(20pt)
#only("2-")[- Density of water: $rho_("water") = 1000 "kg"/m^3$]
#only("1")[
#voiceover("We know that the density of ice is 920 kilograms per cubic meter,")
]
#only("2")[
#voiceover("and the density of water is 1000 kilograms per cubic meter.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Archimedes' Principle]
#v(40pt)
#only("1-")[- The buoyant force equals the weight of the displaced fluid.]
#v(20pt)
#only("2-")[$ F_("buoyant") = rho_("water") V_("displaced") g $]
#only("1")[
#voiceover("According to Archimedes' principle, the buoyant force acting on an object is equal to the weight of the fluid displaced by the object.")
]
#only("2")[
#voiceover("Mathematically, this can be expressed as: The buoyant force equals the density of water times the volume of water displaced times the acceleration due to gravity.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 2: Equilibrium]
#v(40pt)
#only("1-")[- For the iceberg to float, the buoyant force must equal its weight.]
#v(20pt)
#only("2-")[$ rho_("water") V_("displaced") g = rho_("ice") V_("iceberg") g $]
#only("1")[
#voiceover("For the iceberg to float in equilibrium, the buoyant force must be equal to the weight of the iceberg.")
]
#only("2")[
#voiceover("This means that the density of water times the volume of water displaced times g must equal the density of ice times the volume of the iceberg times g.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 3: Simplify]
#v(40pt)
#only("1-")[- Divide both sides by $g$:]
#v(20pt)
#only("2-")[$ rho_("water") V_("displaced") = rho_("ice") V_("iceberg") $]
#only("1")[
#voiceover("We can divide both sides of the equation by g to simplify it.")
]
#only("2")[
#voiceover("This leaves us with the density of water times the volume displaced equals the density of ice times the volume of the iceberg.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 4: Fraction Underwater]
#v(40pt)
#only("1-")[- Divide both sides by $rho_("water") V_("iceberg")$:]
#v(20pt)
#only("2-")[$ V_("displaced")/V_("iceberg") = rho_("ice")/rho_("water") $]
#only("1")[
#voiceover("Now, let's divide both sides by the density of water times the volume of the iceberg.")
]
#only("2")[
#voiceover("This gives us the ratio of the volume displaced to the total volume of the iceberg equals the ratio of the density of ice to the density of water.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 5: Percentage]
#v(40pt)
#only("1-")[- To get the percentage, multiply by 100:]
#v(20pt)
#only("2-")[$ (rho_("ice")/rho_("water")) dot 100 = (920/1000) dot 100 = 92% $]
#only("1")[
#voiceover("To convert this fraction to a percentage, we multiply by 100.")
]
#only("2")[
#voiceover("Plugging in the values for the densities of ice and water, we get that 920 divided by 1000, times 100, equals 92 percent.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualization 📊]
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
#voiceover("Here's a visualization of an iceberg floating in water. As we calculated, 92% of the iceberg's volume is submerged underwater, while only 8% is visible above the surface.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Conclusion]
#v(40pt)
#only("1-")[- 92% of an iceberg's volume is underwater. 🌊]
#v(20pt)
#only("2-")[- This is due to the ratio of the densities of ice and water. ⚖️]
#only("1")[
#voiceover("In conclusion, we found that 92 percent of an iceberg's volume is underwater.")
]
#only("2")[
#voiceover("This is a direct consequence of the ratio of the densities of ice and water, as explained by Archimedes' principle of buoyancy.")
]
]