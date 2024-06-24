#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Electric Fields in Conductors]
#v(40pt)
#only("1-")[What happens when an electric field is applied to a conductor?]
#v(40pt)
#only("-1")[a) Electrons stop moving]#only("2-")[#text(fill:red)[a) Electrons stop moving]]
#v(10pt)
#only("-2")[b) Free electrons move in the field direction]#only("3-")[#text(fill:red)[b) Free electrons move in the field direction]]
#v(10pt)
#only("-3")[c) Free electrons move opposite to the field direction]#only("4-")[#text(fill:green)[c) Free electrons move opposite to the field direction]]
#v(10pt)
#only("-4")[d) The conductor becomes an insulator]#only("5-")[#text(fill:red)[d) The conductor becomes an insulator]]

#only("1")[#voiceover("Great job! You've answered this question correctly. Let's go through each option to understand why.")]
#only("2")[#voiceover("Option a is incorrect. Electrons in a conductor don't stop moving when an electric field is applied. In fact, the opposite happens - they start moving in a specific direction.")]
#only("3")[#voiceover("Option b is also incorrect. While free electrons do move, they don't move in the direction of the electric field.")]
#only("4")[#voiceover("Option c is correct! Free electrons in a conductor move in the opposite direction of the applied electric field. This is because electrons are negatively charged, so they're attracted to the positive end of the field.")]
#only("5")[#voiceover("Finally, option d is incorrect. Applying an electric field doesn't change a conductor into an insulator. The material properties remain the same.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Electron Movement in Conductors]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

fig, ax = plt.subplots(figsize=(10, 6))

# Draw conductor
rect = plt.Rectangle((0.1, 0.3), 0.8, 0.4, fill=False)
ax.add_patch(rect)

# Draw electric field lines
for i in np.linspace(0.2, 0.8, 5):
    ax.arrow(i, 0.9, 0, -0.1, head_width=0.02, head_length=0.05, fc='r', ec='r')
    ax.text(i, 0.95, 'E', color='r', ha='center')

# Draw electron movement
for i in np.linspace(0.2, 0.8, 5):
    ax.arrow(i, 0.4, -0.1, 0, head_width=0.02, head_length=0.05, fc='b', ec='b')
    ax.text(i-0.05, 0.35, 'e-', color='b', ha='center')

ax.set_xlim(0, 1)
ax.set_ylim(0, 1)
ax.axis('off')

plt.title('Electron Movement in a Conductor')
plt.show()

```,
width: 360pt),
)
]
]
]

#only("1")[#voiceover("Let's visualize what happens in a conductor when an electric field is applied. In this diagram, we see a conductor represented by the rectangle. The red arrows at the top represent the applied electric field, pointing downwards. The blue arrows inside the conductor show the movement of free electrons.")]

#only("2-")[- Applied electric field (red arrows) ⬇️]
#only("3-")[- Free electron movement (blue arrows) ⬅️]
#only("4-")[- Electrons move opposite to the field direction]

#only("2")[#voiceover("The red arrows represent the applied electric field. In this case, it's pointing downwards.")]
#only("3")[#voiceover("The blue arrows show the movement of free electrons. Notice that they're moving in the opposite direction to the electric field.")]
#only("4")[#voiceover("This illustrates our correct answer: free electrons in a conductor move opposite to the direction of the applied electric field. This is due to the negative charge of electrons, which causes them to be attracted towards the positive end of the electric field.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Why Electrons Move This Way]
#v(40pt)
#only("1-")[- Electrons are negatively charged (-)]
#only("2-")[- Electric field exerts force on charges]
#only("3-")[- Negative charges experience force opposite to field direction]
#only("4-")[- Result: Electrons move opposite to field]

#only("1")[#voiceover("To understand why electrons move this way, let's break it down step by step. First, remember that electrons have a negative charge.")]
#only("2")[#voiceover("When we apply an electric field, it exerts a force on all charges within the conductor.")]
#only("3")[#voiceover("Due to their negative charge, electrons experience a force in the direction opposite to the electric field.")]
#only("4")[#voiceover("As a result, the free electrons in the conductor move in the direction opposite to the applied electric field.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Implications]
#v(40pt)
#only("1-")[- Creates current in conductors]
#only("2-")[- Allows for charge redistribution]
#only("3-")[- Leads to electrostatic shielding]
#only("4-")[- Fundamental to electrical circuits ⚡]

#only("1")[#voiceover("This behavior of electrons has several important implications. First, it's what creates electric current in conductors.")]
#only("2")[#voiceover("It also allows for charge redistribution within the conductor, which is crucial for many electrical phenomena.")]
#only("3")[#voiceover("This movement of electrons leads to electrostatic shielding, where the interior of a conductor is protected from external electric fields.")]
#only("4")[#voiceover("Finally, this principle is fundamental to the operation of all electrical circuits. Understanding this behavior is key to grasping how electricity works in our everyday devices.")]
]