#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Review: Changing Fractions 🔄]
  #v(40pt)
  #only("1-")[- Fractions are essential in math and real life 🍕]
  #only("2-")[- Sometimes we need to change denominators 🔢]
  #only("3-")[- Let's review how to do this correctly ✅]
  
  #only("1")[
    #voiceover("Let's review the concept of changing the denominator of fractions. Fractions are essential in both mathematics and everyday life.")
  ]
  #only("2")[
    #voiceover("Sometimes, we need to change the denominator of a fraction while keeping its value the same. This is a crucial skill in many mathematical operations.")
  ]
  #only("3")[
    #voiceover("Let's review how to do this correctly, ensuring we maintain the fraction's original value.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Changing Denominators]
  #v(40pt)
  #only("1-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(
```

            import matplotlib.pyplot as plt
import numpy as np

# Create the figure and axis
fig, ax = plt.subplots(figsize=(8, 6))

# Draw the pizza
circle = plt.Circle((0.5, 0.5), 0.4, fill=False)
ax.add_artist(circle)

# Draw the slices
angles = np.linspace(0, 2*np.pi, 9)[:-1]
for angle in angles:
    x = [0.5, 0.5 + 0.4*np.cos(angle)]
    y = [0.5, 0.5 + 0.4*np.sin(angle)]
    ax.plot(x, y, 'k-')

# Highlight 3 slices
highlight = plt.Circle((0.5, 0.5), 0.4, fill=True, alpha=0.3, color='red')
ax.add_artist(highlight)

# Set the aspect of the plot to be equal and remove axes
ax.set_aspect('equal', adjustable='box')
ax.axis('off')

# Add text
ax.text(0.5, -0.1, '3/8 of the pizza', ha='center', va='center', fontsize=12)

plt.tight_layout()
plt.show()
          ```,
          width: 360pt
        ),
        caption: [],
      )
    ]
  ]]
  #only("2-")[$3/8 = ?/16$]
  #v(20pt)
  #only("3-")[Multiply both numerator and denominator by 2:]
  #only("4-")[$3/8 * 2/2 = (3*2)/(8*2) = 6/16$]
  
  #only("1")[
    #voiceover("Let's start with a practical example. Imagine we have 3/8 of a pizza, and we want to express this as a fraction with 16 as the denominator. How can we do this?")
  ]
  #only("2")[
    #voiceover("We need to find an equivalent fraction to 3/8, but with 16 as the denominator.")
  ]
  #only("3")[
    #voiceover("To do this, we multiply both the numerator and denominator by the same number. In this case, we need to multiply by 2 to get from 8 to 16 in the denominator.")
  ]
  #only("4")[
    #voiceover("So, we multiply 3/8 by 2/2. This gives us 3 times 2 over 8 times 2, which equals 6/16. This fraction is equivalent to 3/8, but now has 16 as its denominator.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Summary 📝]
  #v(40pt)
  #only("1-")[- To change denominator, find equivalent fraction 🔢]
  #only("2-")[- Multiply numerator and denominator by same number ✖️]
  #only("3-")[- This maintains the fraction's value ⚖️]
  #only("4-")[- Example: $3/8 = 3/8 * 2/2 = 6/16$ 🍕]
  
  #only("1")[
    #voiceover("Let's recap. To change the denominator of a fraction, we need to find an equivalent fraction.")
  ]
  #only("2")[
    #voiceover("We do this by multiplying both the numerator and denominator by the same number.")
  ]
  #only("3")[
    #voiceover("This process maintains the original value of the fraction, as we're essentially multiplying by 1 in fraction form.")
  ]
  #only("4")[
    #voiceover("In our example, we changed 3/8 to 6/16 by multiplying both top and bottom by 2. Remember, these fractions are equivalent - they represent the same portion of the whole.")
  ]
]