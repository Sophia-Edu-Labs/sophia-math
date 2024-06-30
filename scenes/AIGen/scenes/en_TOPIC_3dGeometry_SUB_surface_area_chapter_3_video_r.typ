#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Review: Surface Area of Cuboids 📦]
  #v(40pt)
  #only("1-")[- Cuboids are 3D shapes with rectangular faces 🧊]
  #only("2-")[- Surface area is the total area of all faces 🔲]
  #only("3-")[- Formula: SA = 2("lw"+ "lh" + "wh") 📏]
  #only("4-")[- Useful for packaging, construction, and more! 🏗️]
  
  #only("1")[
    #voiceover("Let's review the surface area of cuboids. Cuboids, also known as rectangular prisms, are three-dimensional shapes with six rectangular faces.")
  ]
  #only("2")[
    #voiceover("The surface area of a cuboid is the total area of all its faces. This is important in many real-world applications.")
  ]
  #only("3")[
    #voiceover("We calculate this using the formula: Surface Area equals two times the sum of length times width, length times height, and width times height.")
  ]
  #only("4")[
    #voiceover("Understanding this concept is crucial in fields like packaging design, construction, and even in everyday life when dealing with box-shaped objects.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[The Formula in Action 🧮]
  #v(40pt)
  #only("1-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(
```

import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D

fig = plt.figure(figsize=(10, 8))
ax = fig.add_subplot(111, projection='3d')

# Cuboid dimensions
l, w, h = 4, 3, 2

# Vertices of the cuboid
vertices = [
    [0, 0, 0], [l, 0, 0], [l, w, 0], [0, w, 0],
    [0, 0, h], [l, 0, h], [l, w, h], [0, w, h]
]

# List of sides
sides = [
    [vertices[0], vertices[1], vertices[2], vertices[3]],
    [vertices[4], vertices[5], vertices[6], vertices[7]],
    [vertices[0], vertices[3], vertices[7], vertices[4]],
    [vertices[1], vertices[2], vertices[6], vertices[5]],
    [vertices[0], vertices[1], vertices[5], vertices[4]],
    [vertices[3], vertices[2], vertices[6], vertices[7]]
]

# Plot sides
for side in sides:
    x = [vertex[0] for vertex in side + [side[0]]]
    y = [vertex[1] for vertex in side + [side[0]]]
    z = [vertex[2] for vertex in side + [side[0]]]
    ax.plot(x, y, z, 'b')

# Label dimensions
ax.text(l/2, -0.5, 0, 'l = 4', fontsize=12)
ax.text(l+0.5, w/2, 0, 'w = 3', fontsize=12)
ax.text(l+0.5, w, h/2, 'h = 2', fontsize=12)

ax.set_xlabel('Length')
ax.set_ylabel('Width')
ax.set_zlabel('Height')

plt.title('Cuboid Dimensions')
plt.show()
          ```,
          width: 360pt
        ),
        caption: [],
      )
    ]
  ]]
  
  #only("1")[
    #voiceover("Let's apply our formula to this cuboid. We have a cuboid with length 4, width 3, and height 2.")
  ]
  
  #only("2-")[SA = 2("lw"+ "lh" + "wh")]
  #only("3-")[= 2((4 × 3) + (4 × 2) + (3 × 2))]
  #only("4-")[= 2(12 + 8 + 6)]
  #only("5-")[= 2(26) = 52 square units]
  
  #only("2")[
    #voiceover("We'll use our formula: Surface Area equals two times the sum of length times width, length times height, and width times height.")
  ]
  #only("3")[
    #voiceover("Plugging in our values, we get two times the sum of four times three, four times two, and three times two.")
  ]
  #only("4")[
    #voiceover("This simplifies to two times the sum of twelve, eight, and six.")
  ]
  #only("5")[
    #voiceover("Which gives us two times twenty-six, equaling fifty-two square units.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Solving for Unknown Dimensions 🕵️]
  #v(20pt)
  #only("1-")[- Sometimes we know SA but need to find a dimension]
  #only("2-")[- Example: SA = 52, l = 4, w = 3, find h]
  #only("3-")[52 = 2(4 × 3 + 4h + 3h)]
  #only("4-")[52 = 2(12 + 4h + 3h)]
  #only("5-")[52 = 24 + 14h]
  #only("6-")[28 = 14h]
  #only("7-")[h = 2]
  
  #only("1")[
    #voiceover("Sometimes, we might know the surface area and two dimensions, but need to find the third. Let's see how we can use our formula to solve for an unknown dimension.")
  ]
  #only("2")[
    #voiceover("For example, let's say we know the surface area is fifty-two square units, the length is four, and the width is three. We need to find the height.")
  ]
  #only("3")[
    #voiceover("We start with our formula, replacing SA with fifty-two, l with four, and w with three. The height remains as h.")
  ]
  #only("4")[
    #voiceover("Simplifying the known multiplication, we get fifty-two equals two times twelve plus four h plus three h.")
  ]
  #only("5")[
    #voiceover("Multiplying out the two, we have fifty-two equals twenty-four plus fourteen h.")
  ]
  #only("6")[
    #voiceover("Subtracting twenty-four from both sides, we get twenty-eight equals fourteen h.")
  ]
  #only("7")[
    #voiceover("Dividing both sides by fourteen, we find that h equals two, which matches our original cuboid!")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Key Takeaways 🗝️]
  #v(40pt)
  #only("1-")[- Formula: SA = 2("lw"+ "lh" + "wh") 📏]
  #only("2-")[- Applicable to all cuboids 📦]
  #only("3-")[- Can solve for unknown dimensions 🧮]
  #only("4-")[- Useful in real-world scenarios 🌍]
  
  #only("1")[
    #voiceover("To recap, the key formula for the surface area of a cuboid is Surface Area equals two times the sum of length times width, length times height, and width times height.")
  ]
  #only("2")[
    #voiceover("This formula works for all cuboids, regardless of their size.")
  ]
  #only("3")[
    #voiceover("We can use this formula not only to calculate surface area but also to solve for unknown dimensions when we have other information.")
  ]
  #only("4")[
    #voiceover("Understanding and applying this concept is valuable in many real-world scenarios, from packaging design to construction and beyond.")
  ]
]