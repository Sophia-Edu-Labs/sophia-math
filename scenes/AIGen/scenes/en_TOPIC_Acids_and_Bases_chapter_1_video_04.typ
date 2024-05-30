#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Properties of Acids 🍋]
#v(40pt)
#only("1-")[- Sour taste 👅]
#only("2-")[- Conduct electricity ⚡]
#only("3-")[- React with metals to produce hydrogen gas 🔥]

#only("1")[
#voiceover("Acids have several distinct properties. First, they have a sour taste.")
]

#only("2")[
#voiceover("Second, acids can conduct electricity due to the presence of ions in solution.")
]

#only("3")[
#voiceover("Finally, acids react with metals to produce hydrogen gas. This is a characteristic reaction of acids.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Acid-Metal Reaction]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt 
import numpy as np 

# Create a figure and axis 
fig, ax = plt.subplots(figsize=(6, 4)) 

# Draw a beaker 
beaker = plt.Rectangle((0.1, 0.1), 0.8, 0.6, fill=False, linewidth=2) 
ax.add_patch(beaker) 

# Draw acid in the beaker 
acid = plt.Rectangle((0.15, 0.15), 0.7, 0.3, color='skyblue', alpha=0.5) 
ax.add_patch(acid) 
ax.text(0.5, 0.4, 'Acid', ha='center', va='center', fontsize=14) 

# Draw metal 
metal = plt.Rectangle((0.4, 0.5), 0.2, 0.1, color='gray', alpha=0.7) 
ax.add_patch(metal) 
ax.text(0.5, 0.55, 'Metal', ha='center', va='center', fontsize=12) 

# Draw hydrogen gas bubbles 
bubble1 = plt.Circle((0.3, 0.6), 0.05, color='white', alpha=0.7) 
bubble2 = plt.Circle((0.5, 0.65), 0.04, color='white', alpha=0.7) 
bubble3 = plt.Circle((0.7, 0.62), 0.06, color='white', alpha=0.7) 
ax.add_patch(bubble1) 
ax.add_patch(bubble2) 
ax.add_patch(bubble3) 
ax.text(0.5, 0.8, r'$H_2$ gas', ha='center', va='center', fontsize=14) 

# Set axis limits and remove ticks 
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
#voiceover("Here's a visual representation of the reaction between an acid and a metal. The metal, shown in gray, is placed in the acid solution, shown in blue. As the reaction proceeds, hydrogen gas bubbles, shown in white, are produced and rise to the surface.") 
] 

#v(40pt) 

#only("2-")[Acid + Metal $arrow$ Salt + Hydrogen gas] 

#only("2")[ 
#voiceover("In general, when an acid reacts with a metal, it produces a salt and hydrogen gas.") 
] 
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Acids have a sour taste 🍋]
#only("2-")[- Acids conduct electricity ⚡]
#only("3-")[- Acids react with metals to produce hydrogen gas 🔥]

#only("1")[
#voiceover("To recap, acids have a sour taste,")
]

#only("2")[
#voiceover("they can conduct electricity,")
]

#only("3")[
#voiceover("and they react with metals to produce hydrogen gas. These are key properties that help us identify and characterize acids.")
]
]