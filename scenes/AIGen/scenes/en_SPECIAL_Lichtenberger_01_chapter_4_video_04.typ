#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Buoyancy Recap 🌊]
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
#voiceover("Let's recap what we've learned about buoyancy. The buoyant force acting on an object in water depends on two key factors: the object's density and the volume of water it displaces.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Density's Role 🧱]
#v(40pt)
#only("1-")[- Objects with lower density experience greater upthrust]
#v(20pt)
#only("2-")[- Example: Styrofoam (low density) vs. Steel (high density)]
#only("1")[
#voiceover("Objects with lower densities experience a greater upthrust force. This is because the buoyant force is equal to the weight of the fluid displaced by the object.")
]
#only("2")[
#voiceover("For instance, styrofoam, which has a very low density, will experience a much greater upthrust compared to a dense material like steel when submerged in water.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Volume Matters 📏]
#v(40pt)
#only("1-")[- Larger objects displace more water, increasing buoyant force]
#v(20pt)
#only("2-")[- Example: Large styrofoam block vs. small styrofoam block]
#only("1")[
#voiceover("The volume of the object also plays a crucial role. Larger objects displace a greater volume of water, which increases the buoyant force acting on them.")
]
#only("2")[
#voiceover("Consider two blocks of styrofoam, one large and one small. The larger block will experience a greater upthrust because it displaces more water, even though both blocks have the same density.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Putting it Together 🧩]
#v(40pt)
#only("1-")[- Buoyant force = Weight of displaced fluid]
#v(20pt)
#only("2-")[- $F_"buoyant" = rho_"fluid" V_"displaced" g$]
#v(20pt)
#only("3-")[- Where $rho_"fluid"$ is fluid density, $V_"displaced"$ is volume displaced, and $g$ is gravitational acceleration]
#only("1")[
#voiceover("In summary, the buoyant force is equal to the weight of the fluid displaced by the object.")
]
#only("2")[
#voiceover("Mathematically, this can be expressed as F buoyant equals rho fluid times V displaced times g,")
]
#only("3")[
#voiceover("where rho fluid is the density of the fluid, V displaced is the volume of fluid displaced by the object, and g is the acceleration due to gravity.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways 🔑]
#v(40pt)
#only("1-")[- Lower density objects experience greater upthrust 🎈]
#v(20pt)
#only("2-")[- Larger objects displace more fluid, increasing buoyant force 🌊]
#v(20pt)
#only("3-")[- Buoyant force depends on both density and volume displaced 🧮]
#only("1")[
#voiceover("The key takeaways from this recap are:")
]
#only("1")[
#voiceover("First, objects with lower densities experience a greater upthrust force.")
]
#only("2")[
#voiceover("Second, larger objects displace more fluid, which increases the buoyant force acting on them.")
]
#only("3")[
#voiceover("And finally, the buoyant force depends on both the density of the object and the volume of fluid it displaces.")
]
]