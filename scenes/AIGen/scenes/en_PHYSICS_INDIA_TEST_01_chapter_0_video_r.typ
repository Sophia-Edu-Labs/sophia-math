#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Review: Electric Current ⚡]
#v(40pt)
#only("1-")[- Electricity powers our modern world 🏙️]
#only("2-")[- Understanding current is crucial for electronics 🔌]
#only("3-")[- Let's recap the concept of electric current 🔍]
#only("1")[
#voiceover("Let's review the concept of electric current. Imagine a world without electricity - no lights, no computers, no smartphones.")
]
#only("2")[
#voiceover("Understanding electric current is crucial for all electronic devices we use daily.")
]
#only("3")[
#voiceover("So, let's recap what electric current really is.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Electric Current: Definition]
#v(40pt)
#only("1-")[- Flow of electric charges over time ⏳]
#only("2-")[- Usually electrons in conductors 🔬]
#only("3-")[- Measured in amperes (A) 📏]
#only("1")[
#voiceover("Electric current is defined as the flow of electric charges over time.")
]
#only("2")[
#voiceover("In most cases, especially in metal wires, these charges are electrons moving through the conductor.")
]
#only("3")[
#voiceover("We measure electric current in a unit called amperes, often abbreviated as A.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualizing Current]
#v(20pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

# Create figure and axis
fig, ax = plt.subplots(figsize=(10, 6))

# Wire
wire = plt.Rectangle((0, 0.4), 10, 0.2, fc='gray', ec='black')
ax.add_patch(wire)

# Electrons
x = np.linspace(0, 10, 20)
y = np.random.uniform(0.45, 0.55, 20)
ax.scatter(x, y, color='blue', s=100, zorder=2, label='Electrons')

# Arrows
for i in range(5):
    ax.arrow(i*2, 0.3, 0.5, 0, head_width=0.05, head_length=0.1, fc='r', ec='r', width=0.01)

# Labels and title
ax.set_xlim(-0.5, 10.5)
ax.set_ylim(0, 1)
ax.set_title('Electric Current in a Wire', fontsize=16)
ax.set_xlabel('Wire Length', fontsize=12)
ax.text(5, 0.2, 'Direction of Current', ha='center', fontsize=12, color='red')

# Remove axis ticks
ax.set_xticks([])
ax.set_yticks([])

# Add legend
ax.legend(loc='upper right')

plt.tight_layout()
plt.show()

```,
width: 360pt),
caption: [],
)
]
]
]
#only("1")[
#voiceover("Here's a simple visualization of electric current in a wire. The blue dots represent electrons, and the red arrows show the direction of the current. Remember, conventional current flows opposite to the electron movement.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Key Points to Remember 🗝️]
#v(40pt)
#only("1-")[- Current is charge flow over time ⏱️]
#only("2-")[- Formula: $I = Q/t$]
#only("3-")[- Continuous movement of charges 🔄]
#only("4-")[- Essential for all electrical devices 📱💻💡]
#only("1")[
#voiceover("As we wrap up, let's review the key points about electric current.")
]
#only("2")[
#voiceover("First, remember that current is the flow of charge over time. We express this mathematically as I equals Q divided by t, where I is the current, Q is the charge, and t is the time.")
]
#only("3")[
#voiceover("It's important to note that current involves the continuous movement of charges, not just a one-time transfer.")
]
#only("4")[
#voiceover("Finally, understanding electric current is crucial because it's the foundation for how all our electrical devices function, from smartphones to computers to light bulbs.")
]
]