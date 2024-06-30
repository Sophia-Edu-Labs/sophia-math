#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Review: Surface Area of Composite Figures 📐]
  #v(40pt)
  #only("1-")[- Real-world objects often have complex shapes 🏠🚗]
  #only("2-")[- Composite figures: combination of basic shapes 🔷🔺]
  #only("3-")[- Surface area calculation is crucial for various applications 🎨🏗️]
  
  #only("1")[
    #voiceover("Let's review the concept of surface area for composite figures. In the real world, objects often have complex shapes that aren't simple geometric forms.")
  ]
  #only("2")[
    #voiceover("These complex shapes can be thought of as composite figures, which are combinations of basic geometric shapes.")
  ]
  #only("3")[
    #voiceover("Calculating the surface area of these composite figures is crucial for various applications, from painting a house to designing a spacecraft.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Calculating Surface Area 🧮]
  #v(20pt)
  #only("1-")[1. Break down the composite figure into basic shapes]
  #only("2-")[2. Calculate surface area of each part separately]
  #only("3-")[3. Add all individual surface areas]
  #only("4-")[4. Subtract overlapping areas]
  
  #v(20pt)
  #only("1-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(
```

          import matplotlib.pyplot as plt
from matplotlib.patches import Rectangle, Circle

fig, ax = plt.subplots(figsize=(8, 6))

# Draw rectangle
rect = Rectangle((0, 0), 4, 3, fill=False, edgecolor='blue')
ax.add_patch(rect)

# Draw circle
circle = Circle((4, 1.5), 1.5, fill=False, edgecolor='red')
ax.add_patch(circle)

# Set axis limits
ax.set_xlim(-0.5, 6)
ax.set_ylim(-0.5, 3.5)

# Remove axis ticks
ax.set_xticks([])
ax.set_yticks([])

# Add labels
ax.text(2, -0.3, 'Rectangle', ha='center')
ax.text(4, 3.3, 'Circle', ha='center')

plt.title('Composite Figure: Rectangle + Circle')
plt.axis('equal')
plt.show()
          ```,
          width: 360pt),
        )
      ]
    ]
  ]
  
  #only("1")[
    #voiceover("Let's review the steps for calculating the surface area of a composite figure. First, we need to break down the composite figure into basic shapes. In this example, we have a rectangle with a semicircle attached to one side.")
  ]
  #only("2")[
    #voiceover("Next, we calculate the surface area of each part separately. We'd find the area of the rectangle and the area of the semicircle.")
  ]
  #only("3")[
    #voiceover("Then, we add all the individual surface areas together.")
  ]
  #only("4")[
    #voiceover("Finally, we subtract any overlapping areas. In this case, we don't have any overlap, but it's an important step to remember for more complex figures.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Summary 📝]
  #v(40pt)
  #only("1-")[- Composite figures = combination of basic shapes 🔷🔺]
  #only("2-")[- Surface Area = Sum of individual areas - Overlapping areas]
  #only("3-")[- Formula: $"SA"_"total" = "SA"_1 + "SA"_2 + ... - "SA"_"overlap"$]
  #only("4-")[- Remember: Measure twice, calculate once! ✅]
  
  #only("1")[
    #voiceover("To summarize, composite figures are combinations of basic shapes.")
  ]
  #only("2")[
    #voiceover("The total surface area is the sum of individual areas minus any overlapping areas.")
  ]
  #only("3")[
    #voiceover("We can express this as a formula: The total surface area equals surface area 1 plus surface area 2 and so on, minus any overlapping surface area.")
  ]
  #only("4")[
    #voiceover("Remember, when dealing with composite figures, it's always a good idea to double-check your measurements and calculations. As the saying goes: Measure twice, calculate once!")
  ]
]