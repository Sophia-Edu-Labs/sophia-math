#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Surface Area of Composite Figures]
  #v(40pt)
  
  #only("1-")[#align(center)[
    #box(width: 200pt, height: 150pt)[
      #morphchildren(id: "composite_shape")[
        #figure(
          pyimage(
```

          import matplotlib.pyplot as plt
from matplotlib.patches import Rectangle, Circle

fig, ax = plt.subplots()
ax.add_patch(Rectangle((0, 0), 4, 3, fill=False))
ax.add_patch(Circle((4, 1.5), 1.5, fill=False))
ax.set_xlim(-0.5, 6)
ax.set_ylim(-0.5, 3.5)
ax.set_aspect('equal', adjustable='box')
ax.axis('off')
plt.show()
          ```,
          width: 200pt),
        )
      ]
    ]
  ]]
  
  #only("2-")[- Composite figure: combination of simple shapes]
  #v(20pt)
  #only("3-")[- Surface area = sum of individual parts' areas]
  #v(20pt)
  #only("4-")[- Subtract overlapping areas]
  
  #only("1")[
    #voiceover("Imagine you're designing a new logo for your school's robotics club. You've come up with a design that combines a rectangle and a circle. How would you calculate the surface area of this logo if you needed to paint it?")
  ]
  
  #only("2")[
    #voiceover("This is an example of a composite figure - a shape made up of two or more simple shapes combined together.")
  ]
  
  #only("3")[
    #voiceover("To find the surface area of a composite figure, we need to add up the surface areas of all the individual parts.")
  ]
  
  #only("4")[
    #voiceover("However, we need to be careful. If there are any overlapping areas between the shapes, we need to subtract these to avoid counting them twice.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Calculating Surface Area]
  #v(40pt)
  
  #only("1-")[#align(center)[
    #box(width: 200pt, height: 150pt)[
      #morphchildren(id: "composite_shape_calc")[
        #figure(
          pyimage(
```

          import matplotlib.pyplot as plt
from matplotlib.patches import Rectangle, Circle

fig, ax = plt.subplots()
rect = Rectangle((0, 0), 4, 3, fill=False)
circ = Circle((4, 1.5), 1.5, fill=False)
ax.add_patch(rect)
ax.add_patch(circ)
ax.text(2, 1.5, "A", ha='center', va='center')
ax.text(5, 1.5, "B", ha='center', va='center')
ax.text(3.5, 1.5, "C", ha='center', va='center')
ax.set_xlim(-0.5, 6)
ax.set_ylim(-0.5, 3.5)
ax.set_aspect('equal', adjustable='box')
ax.axis('off')
plt.show()
          ```,
          width: 200pt),
        )
      ]
    ]
  ]]
  
  #only("2-")[$ "Total SA" = "SA"_A + "SA"_B - "SA"_C $]
  #v(20pt)
  #only("3-")[A: Rectangle, B: Circle, C: Overlap]
  #v(20pt)
  #only("4-")[Remember: $ "SA"_"rectangle" = l w $]
  #v(20pt)
  #only("5-")[$ "SA"_"circle" = pi r^2 $]
  
  #only("1")[
    #voiceover("Let's look at our logo example more closely. We have a rectangle, which we'll call A, and a circle, which we'll call B. The area where they overlap, we'll call C.")
  ]
  
  #only("2")[
    #voiceover("To find the total surface area, we add the surface area of A and B, then subtract the surface area of C. This gives us the formula: Total surface area equals surface area of A plus surface area of B minus surface area of C.")
  ]
  
  #only("3")[
    #voiceover("Here, A is our rectangle, B is our circle, and C is the overlapping area.")
  ]
  
  #only("4")[
    #voiceover("Remember, the surface area of a rectangle is found by multiplying its length by its width.")
  ]
  
  #only("5")[
    #voiceover("And the surface area of a circle is pi times the radius squared.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Summary]
  #v(40pt)
  
  #only("1-")[- Composite figures: combination of simple shapes]
  #v(20pt)
  #only("2-")[- Surface area = sum of individual parts]
  #v(20pt)
  #only("3-")[- Subtract overlapping areas]
  #v(20pt)
  #only("4-")[- Formula: $ "Total SA" = "SA"_A + "SA"_B - "SA"_C $]
  
  #only("1")[
    #voiceover("To summarize, composite figures are made up of a combination of simple shapes.")
  ]
  
  #only("2")[
    #voiceover("To find their surface area, we sum up the surface areas of all the individual parts.")
  ]
  
  #only("3")[
    #voiceover("But we need to be careful to subtract any overlapping areas to avoid counting them twice.")
  ]
  
  #only("4")[
    #voiceover("This gives us our general formula: Total surface area equals the sum of individual surface areas minus any overlapping areas. Remember this principle, and you'll be able to tackle even complex composite figures!")
  ]
]