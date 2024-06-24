#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Characteristics of a Conductor]
#v(40pt)
What characterizes a conductor?
#v(20pt)
#only("-1")[a) No free electrons]#only("2-")[#text(fill:red)[a) No free electrons]]
#v(10pt)
#only("-2")[b) All electrons are bound]#only("3-")[#text(fill:red)[b) All electrons are bound]]
#v(10pt)
#only("-3")[c) Some electrons can move freely]#only("4-")[#text(fill:green)[c) Some electrons can move freely]]
#v(10pt)
#only("-4")[d) Protons can move freely]#only("5-")[#text(fill:red)[d) Protons can move freely]]

#only("1")[#voiceover("Not quite. Let's review the correct solution together.")]
#only("2")[#voiceover("Option a, 'No free electrons', is incorrect. Conductors actually have free electrons, which is key to their ability to conduct electricity.")]
#only("3")[#voiceover("Option b, 'All electrons are bound', is also incorrect. In a conductor, not all electrons are bound; some are free to move.")]
#only("4")[#voiceover("Option c, 'Some electrons can move freely', is correct! This is the defining characteristic of a conductor.")]
#only("5")[#voiceover("Option d, 'Protons can move freely', is incorrect. In a solid conductor, protons are fixed in the atomic nuclei and cannot move freely.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Free Electrons in Conductors]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

# Create a figure and axis
fig, ax = plt.subplots(figsize=(8, 6))

# Create a circle for the atom
circle = plt.Circle((0.5, 0.5), 0.4, fill=False)
ax.add_artist(circle)

# Add nucleus
ax.plot(0.5, 0.5, 'ro', markersize=15)

# Add bound electrons
theta = np.linspace(0, 2*np.pi, 8)
r = 0.3
x = r * np.cos(theta) + 0.5
y = r * np.sin(theta) + 0.5
ax.plot(x, y, 'bo', markersize=8)

# Add free electron
ax.plot(0.8, 0.8, 'go', markersize=8)
ax.annotate('Free electron', xy=(0.8, 0.8), xytext=(0.9, 0.9),
            arrowprops=dict(facecolor='black', shrink=0.05))

# Set limits and remove axes
ax.set_xlim(0, 1)
ax.set_ylim(0, 1)
ax.axis('off')

plt.title('Conductor Atom with Free Electron')
plt.show()

```,
width: 360pt),
)
]
]
]

#only("1")[#voiceover("Let's visualize what we mean by free electrons in a conductor. Here we have a simplified model of an atom in a conductor material.")]
#only("2")[#voiceover("The large red dot in the center represents the nucleus, which contains protons and neutrons. The blue dots represent bound electrons, which orbit the nucleus.")]
#only("3")[#voiceover("The green dot represents a free electron. In a conductor, some electrons are not tightly bound to any particular atom and can move freely through the material. These are called free electrons or conduction electrons.")]
#only("4")[#voiceover("It's these free electrons that allow conductors to easily carry an electric current when a voltage is applied. They can move from atom to atom, creating a flow of charge.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Properties of Conductors]
#v(40pt)
#only("1-")[Key characteristics of conductors:]
#v(20pt)
#only("2-")[- Have free electrons 🔓]
#only("3-")[- Low electrical resistance ⚡]
#only("4-")[- Often good thermal conductors 🌡️]
#only("5-")[- Examples: metals like copper, aluminum, gold 🥇]

#only("1")[#voiceover("Now, let's summarize the key properties of conductors.")]
#only("2")[#voiceover("First and foremost, conductors have free electrons. This is what we just visualized in the previous slide.")]
#only("3")[#voiceover("As a result of these free electrons, conductors have low electrical resistance. This means they allow electric current to flow easily.")]
#only("4")[#voiceover("Interestingly, materials that are good electrical conductors are often also good thermal conductors. This is because the free electrons can also carry heat energy.")]
#only("5")[#voiceover("Common examples of conductors include metals like copper, aluminum, and gold. These materials are widely used in electrical wiring and electronic devices due to their excellent conductive properties.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Conductors vs. Insulators]
#v(40pt)
#only("1-")[
#table(
  columns: (auto, auto),
  inset: 10pt,
  align: horizon,
  [*Conductors*], [*Insulators*],
  [Free electrons], [No free electrons],
  [Low resistance], [High resistance],
  [Conduct electricity], [Block electricity],
  [e.g., Metals], [e.g., Rubber, Glass]
)
]

#only("1")[#voiceover("To further understand conductors, it's helpful to compare them with their opposite: insulators.")]
#only("2")[#voiceover("As we've learned, conductors have free electrons, while insulators do not. This leads to low electrical resistance in conductors, but high resistance in insulators.")]
#only("3")[#voiceover("Consequently, conductors readily conduct electricity, while insulators block it. This is why we use metal wires to carry electricity, but wrap them in rubber or plastic to prevent shocks.")]
#only("4")[#voiceover("Common examples of conductors are metals like copper or aluminum, while insulators include materials like rubber or glass. Understanding this distinction is crucial in electrical engineering and everyday safety.")]
]