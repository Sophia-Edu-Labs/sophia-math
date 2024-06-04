#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Dam Force Comparison]
#v(40pt)
#only("1-")[How does the force on other sections of the same size but different positions compare?]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct. 
#only("-1")[a) Greater]#only("2-")[#text(fill:green)[a) Greater]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) Smaller]#only("3-")[#text(fill:red)[b) Smaller]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) Equal]#only("4-")[#text(fill:red)[c) Equal]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) Cannot be determined]#only("5-")[#text(fill:red)[d) Cannot be determined]]
#v(40pt)

#only("1")[#voiceover("That's not quite right. Let's take a look at the correct solution...")]
// Very briefly Talk about a and why it is correct
#only("2")[#voiceover("a) Greater. The force on sections deeper down the dam is indeed greater.")]
// Very briefly Talk about b and why it is incorrect
#only("3")[#voiceover("b) Smaller is incorrect. The force increases with depth, not decreases.")]
// Very briefly Talk about c and why it is incorrect
#only("4")[#voiceover("c) Equal is also incorrect. The force varies with depth, so it's not the same for all sections.")]
// Very briefly Talk about d and why it is incorrect
#only("5")[#voiceover("And d) Cannot be determined is incorrect as well. We can determine the force using the depth and area of each section.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Force on Dam Sections]
#v(40pt)
#only("1-")[Let's see why:]
#v(20pt)
#only("2-")[- Force on a dam section: $F = rho g h A$]
#only("3-")[    - $rho$ = water density (constant)]
#only("4-")[    - $g$ = gravitational acceleration (constant)]
#only("5-")[    - $A$ = area of section (same for all)]
#only("6-")[    - $h$ = depth of section (varies!)]
#v(20pt)
#only("7-")[⇒ Deeper sections experience greater force! 🌊]

#only("1")[#voiceover("Let's see why the force is greater for sections deeper down the dam.")]
#only("2")[#voiceover("The force on a dam section is given by the formula F equals rho g h A, where")]
#only("3")[#voiceover("rho is the density of water, which is constant,")]
#only("4")[#voiceover("g is the gravitational acceleration, also constant,")]
#only("5")[#voiceover("A is the area of the section, which is the same for all sections in this case, and")]
#only("6")[#voiceover("h is the depth of the section, which varies.")]
#only("7")[#voiceover("Since the depth h is the only variable that changes, and it's in the numerator, a greater depth results in a greater force. Therefore, deeper sections of the dam experience greater force.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualization]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Set up the figure
fig, ax = plt.subplots(figsize=(8, 6))

# Draw the dam
dam_height = 10
dam_width = 2
dam = plt.Rectangle((0, 0), dam_width, dam_height, linewidth=1, edgecolor='k', facecolor='gray')
ax.add_patch(dam)

# Draw the water
water = plt.Rectangle((dam_width, 0), 4, dam_height, linewidth=1, edgecolor='k', facecolor='skyblue')
ax.add_patch(water)

# Highlight sections
section1 = plt.Rectangle((0, 7), dam_width, 2, linewidth=2, edgecolor='r', facecolor='none')
ax.add_patch(section1)
section2 = plt.Rectangle((0, 2), dam_width, 2, linewidth=2, edgecolor='g', facecolor='none')
ax.add_patch(section2)

# Add labels
ax.text(1, 8, 'Section 1', ha='center', va='center', color='r', fontsize=12)
ax.text(1, 3, 'Section 2', ha='center', va='center', color='g', fontsize=12)
ax.text(3, 10.5, 'Water', ha='center', va='center', fontsize=14)

# Add force arrows
ax.arrow(1, 8, 0, 1, head_width=0.3, head_length=0.5, linewidth=2, color='r')
ax.arrow(1, 3, 0, 2, head_width=0.3, head_length=0.5, linewidth=2, color='g')

# Set axis limits and remove ticks
ax.set_xlim(0, 6)
ax.set_ylim(0, 12)
ax.set_xticks([])
ax.set_yticks([])

# Show the plot
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[#voiceover("Here's a visualization to illustrate this concept.")]
#only("2")[#voiceover("The dam is shown in gray, and the water in blue.")]
#only("3")[#voiceover("We're comparing two sections of the same size, marked in red and green.")]
#only("4")[#voiceover("The red section, Section 1, is deeper down the dam than the green section, Section 2.")]
#only("5")[#voiceover("The force on each section is represented by the arrows. As you can see, the arrow for Section 1 is longer, indicating a greater force.")]
#only("6")[#voiceover("This is because Section 1 has a greater depth h, and thus experiences a greater force according to the formula F equals rho g h A.")]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Recap]
#v(40pt)
#only("1-")[- Force on a dam section depends on its depth 🧮]
#v(20pt)
#only("2-")[- Deeper sections experience greater force 🌊]
#v(20pt)
#only("3-")[- Due to the formula: $F = rho g h A$]
#v(20pt)
#only("4-")[⇒ Position matters! 📍]

#only("1")[#voiceover("To recap, the force on a dam section depends on its depth.")]
#only("2")[#voiceover("Deeper sections experience greater force,")]
#only("3")[#voiceover("due to the formula F equals rho g h A, where depth h is in the numerator.")]
#only("4")[#voiceover("Therefore, the position of a section matters when it comes to the force it experiences. Keep this in mind when designing dams!")]
]