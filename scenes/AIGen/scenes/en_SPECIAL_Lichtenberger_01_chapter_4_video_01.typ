#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Upthrust and Density]
#v(40pt)
#only("1-")[- Upthrust (buoyant force) 🌊]
#only("2-")[- Depends on object's density 🪨]
#only("1")[
#voiceover("Upthrust, also known as the buoyant force, is the force that a fluid exerts on an object immersed in it, pushing it upwards.")
]
#only("2")[
#voiceover("The magnitude of the upthrust varies depending on the density of the object submerged in the fluid.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Archimedes' Principle]
#v(40pt)
#only("1-")[- Upthrust = weight of displaced fluid]
#v(20pt)
#only("2-")[$ F_"buoyant" = rho_"fluid" V_"displaced" g $]
#only("1")[
#voiceover("According to Archimedes' principle, the upthrust is equal to the weight of the fluid displaced by the object.")
]
#only("2")[
#voiceover("Mathematically, the buoyant force equals the density of the fluid multiplied by the volume of fluid displaced and the acceleration due to gravity.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Object Density vs. Fluid Density]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

densities = ['$rho_"object" < rho_"fluid"$', '$rho_"object" = rho_"fluid"$', '$rho_"object" > rho_"fluid"$']
outcomes = ['Float', 'Neutral Buoyancy', 'Sink']

plt.figure(figsize=(8, 4))
plt.yticks(range(len(densities)), densities)
plt.xticks(range(len(outcomes)), outcomes)
plt.grid(True, axis='y')
plt.scatter([0, 1, 2], [0, 1, 2], color=['green', 'blue', 'red'], s=100)
plt.title('Object Behavior Based on Density')
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("When an object's density is less than the fluid's density, it will float. If the densities are equal, the object will have neutral buoyancy and remain suspended. If the object's density is greater than the fluid's, it will sink.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Upthrust varies with object density 🪨]
#v(20pt)
#only("2-")[- Archimedes' principle: $F_"buoyant" = rho_"fluid" V_"displaced" g$]
#v(20pt)
#only("3-")[- Object floats if $rho_"object" < rho_"fluid"$ 🛟]
#only("1")[
#voiceover("In summary, the upthrust acting on an object submerged in a fluid varies depending on the object's density.")
]
#only("2")[
#voiceover("Archimedes' principle states that the buoyant force equals the density of the fluid multiplied by the volume of fluid displaced and the acceleration due to gravity.")
]
#only("3")[
#voiceover("An object will float if its density is less than the fluid's density, have neutral buoyancy if the densities are equal, and sink if the object's density is greater than the fluid's density.")
]
]