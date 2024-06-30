#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Volume of a Cuboid]
  #v(40pt)
  #only("1-")[How do you calculate the volume of a cuboid?]
  #v(40pt)
  #only("-1")[a) Length × Width × Height]#only("2-")[#text(fill:green)[a) Length × Width × Height]]
  #v(10pt)
  #only("-2")[b) Length + Width + Height]#only("3-")[#text(fill:red)[b) Length + Width + Height]]
  #v(10pt)
  #only("-3")[c) Length × Width × Width]#only("4-")[#text(fill:red)[c) Length × Width × Width]]
  #v(10pt)
  #only("-4")[d) Length × Height × Height]#only("5-")[#text(fill:red)[d) Length × Height × Height]]
  #v(40pt)

  #only("1")[#voiceover("Not quite. Let's go through each option to understand the correct solution.")]
  #only("2")[#voiceover("Option a, Length times Width times Height, is indeed the correct formula for calculating the volume of a cuboid. This formula captures all three dimensions of the cuboid, giving us its total volume.")]
  #only("3")[#voiceover("Option b, Length plus Width plus Height, is incorrect. Adding the dimensions would only give us the sum of the cuboid's edges, not its volume.")]
  #only("4")[#voiceover("Option c, Length times Width times Width, is also incorrect. This formula repeats the width dimension twice, neglecting the height.")]
  #only("5")[#voiceover("Lastly, option d, Length times Height times Height, is incorrect for the same reason as c. It repeats the height dimension and omits the width.")]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Understanding Cuboid Volume]
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
length, width, height = 4, 3, 2

# Vertices of the cuboid
vertices = [
    [0, 0, 0], [length, 0, 0], [length, width, 0], [0, width, 0],
    [0, 0, height], [length, 0, height], [length, width, height], [0, width, height]
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
    x = [vertex[0] for vertex in side]
    y = [vertex[1] for vertex in side]
    z = [vertex[2] for vertex in side]
    ax.plot(x + [x[0]], y + [y[0]], z + [z[0]], color='b')

# Add dimension labels
ax.text(length/2, -0.5, 0, "Length", color='r', fontsize=12)
ax.text(length+0.5, width/2, 0, "Width", color='r', fontsize=12)
ax.text(length+0.5, width+0.5, height/2, "Height", color='r', fontsize=12)

ax.set_xlabel('X')
ax.set_ylabel('Y')
ax.set_zlabel('Z')
ax.set_title('Cuboid Dimensions')

plt.show()
          ```,
          width: 360pt
        ),
        caption: [Cuboid with labeled dimensions]
      )
    ]
  ]]
  #only("1")[#voiceover("Let's visualize a cuboid to better understand its volume. As you can see, a cuboid has three dimensions: length, width, and height. To find its volume, we need to consider all three of these dimensions.")]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Volume Formula Explained]
  #v(40pt)
  #only("1-")[Volume = Length × Width × Height]
  #v(20pt)
  #only("2-")[📏 Length: How long the cuboid is]
  #v(10pt)
  #only("3-")[↔️ Width: How wide the cuboid is]
  #v(10pt)
  #only("4-")[↕️ Height: How tall the cuboid is]
  #v(20pt)
  #only("5-")[🧊 Volume: The space inside the cuboid]
  
  #only("1")[#voiceover("The formula for the volume of a cuboid is simple: Length times Width times Height.")]
  #only("2")[#voiceover("The length is how long the cuboid is from one end to the other.")]
  #only("3")[#voiceover("The width is how wide the cuboid is from side to side.")]
  #only("4")[#voiceover("And the height is how tall the cuboid is from top to bottom.")]
  #only("5")[#voiceover("When we multiply these three dimensions together, we get the total space inside the cuboid, which is its volume.")]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Why This Formula Works]
  #v(40pt)
  #only("1-")[🔢 It counts all the unit cubes inside]
  #v(20pt)
  #only("2-")[🔁 Repeated addition becomes multiplication]
  #v(20pt)
  #only("3-")[3️⃣ All three dimensions are necessary]
  #v(20pt)
  #only("4-")[🎯 It gives the exact space occupied]
  
  #only("1")[#voiceover("This formula works because it essentially counts all the unit cubes that could fit inside the cuboid.")]
  #only("2")[#voiceover("Think of it as laying out rows of cubes, then stacking these rows, and finally repeating this process for each layer. This repeated addition becomes multiplication.")]
  #only("3")[#voiceover("We need all three dimensions because a cuboid extends in three directions. Omitting any dimension would result in an incorrect calculation.")]
  #only("4")[#voiceover("By multiplying length, width, and height, we're calculating the exact space that the cuboid occupies, which is its volume.")]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Conclusion]
  #v(40pt)
  #only("1-")[✅ Volume of a cuboid = Length × Width × Height]
  #v(20pt)
  #only("2-")[🔑 Remember: All three dimensions are crucial]
  #v(20pt)
  #only("3-")[💡 This formula applies to all cuboids, including cubes!]
  
  #only("1")[#voiceover("To wrap up, remember that the volume of a cuboid is always calculated by multiplying its length, width, and height.")]
  #only("2")[#voiceover("It's crucial to include all three dimensions in your calculation. Forgetting any one of them will lead to an incorrect result.")]
  #only("3")[#voiceover("Interestingly, this formula works for all cuboids, including cubes where length, width, and height are all equal. Keep practicing, and you'll master this concept in no time!")]
]