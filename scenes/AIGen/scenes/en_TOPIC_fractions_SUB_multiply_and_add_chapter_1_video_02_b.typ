#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Multiplying Fractions]
#v(40pt)

#only("1-")[
  $1/2 × 3/4$
]

#v(20pt)

#only("2-")[
  $= (1 × 3) / (2 × 4)$
]

#v(20pt)

#only("3-")[
  $= 3 / 8$
]

#only("1")[
#voiceover("Not quite. Let's walk through the correct solution step by step.")
]

#only("2")[
#voiceover("To multiply fractions, we multiply the numerators together and the denominators together. So, we multiply 1 by 3 in the numerator, and 2 by 4 in the denominator.")
]

#only("3")[
#voiceover("This gives us 3 over 8 as our final answer. There's no need to simplify further as 3 and 8 don't have any common factors other than 1.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visual Representation]
#v(40pt)

#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

fig, (ax1, ax2, ax3) = plt.subplots(1, 3, figsize=(15, 5))

# First fraction: 1/2
ax1.add_patch(plt.Rectangle((0, 0), 1, 1, fill=False))
ax1.add_patch(plt.Rectangle((0, 0), 0.5, 1, fill=True, color='lightblue'))
ax1.text(0.25, 0.5, '1/2', ha='center', va='center', fontsize=20)
ax1.set_xlim(0, 1)
ax1.set_ylim(0, 1)
ax1.set_aspect('equal')
ax1.axis('off')

# Second fraction: 3/4
ax2.add_patch(plt.Rectangle((0, 0), 1, 1, fill=False))
ax2.add_patch(plt.Rectangle((0, 0), 0.75, 1, fill=True, color='lightgreen'))
ax2.text(0.375, 0.5, '3/4', ha='center', va='center', fontsize=20)
ax2.set_xlim(0, 1)
ax2.set_ylim(0, 1)
ax2.set_aspect('equal')
ax2.axis('off')

# Result: 3/8
ax3.add_patch(plt.Rectangle((0, 0), 1, 1, fill=False))
ax3.add_patch(plt.Rectangle((0, 0), 0.375, 1, fill=True, color='lightyellow'))
ax3.text(0.1875, 0.5, '3/8', ha='center', va='center', fontsize=20)
ax3.set_xlim(0, 1)
ax3.set_ylim(0, 1)
ax3.set_aspect('equal')
ax3.axis('off')

plt.tight_layout()
plt.show()

```,
width: 360pt),
caption: [],
)
]
]

#only("1")[
#voiceover("Let's visualize this multiplication. Here we have three rectangles. The first represents 1/2, shown in blue.")
]

#only("2")[
#voiceover("The second rectangle represents 3/4, shown in green.")
]

#only("3")[
#voiceover("When we multiply these fractions, we're essentially taking 3/4 of 1/2. The result is 3/8, shown in yellow in the third rectangle.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Why This Works]
#v(40pt)

#only("1-")[- Multiplication is repeated addition 🔁]
#v(20pt)
#only("2-")[- $(1/2) × (3/4) = 3 × (1/2 × 1/4)$ 🧮]
#v(20pt)
#only("3-")[- $(1/2 × 1/4) = 1/(2 × 4) = 1/8$ 📊]
#v(20pt)
#only("4-")[- $3 × (1/8) = 3/8$ ✅]

#only("1")[
#voiceover("Now, let's understand why this method works. Remember, multiplication is essentially repeated addition.")
]

#only("2")[
#voiceover("We can think of 1/2 times 3/4 as 3 times 1/2 of 1/4.")
]

#only("3")[
#voiceover("1/2 of 1/4 is 1/8. We get this by multiplying the denominators: 2 times 4 equals 8.")
]

#only("4")[
#voiceover("Finally, we take 3 of these 1/8 pieces, giving us 3/8. This is why multiplying the numerators and denominators separately works!")
]
]