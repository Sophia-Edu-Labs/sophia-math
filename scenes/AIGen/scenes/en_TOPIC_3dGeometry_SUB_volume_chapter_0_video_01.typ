#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Introduction to Volume of Cubes]
  #v(40pt)

  #only("1-")[#align(center)[#text(size: 24pt)[🧊 What's inside a cube? 🤔]]]
  #v(20pt)
  #only("2-")[- Volume: Amount of space inside a 3D object 📦]
  #v(20pt)
  #only("3-")[- Cubes: Special 3D shapes with equal sides 🎲]
  #v(20pt)
  #only("4-")[- Question: How do we calculate a cube's volume? 🧮]

  #only("1")[
    #voiceover("Imagine you have a box shaped like a perfect cube. Have you ever wondered how much stuff you could fit inside it?")
  ]
  #only("2")[
    #voiceover("This is where the concept of volume comes in. Volume is the amount of space inside a three-dimensional object.")
  ]
  #only("3")[
    #voiceover("Cubes are special because all their sides are equal. Think of a dice - it's a perfect example of a cube!")
  ]
  #only("4")[
    #voiceover("So, how do we figure out the volume of a cube? Let's explore this together!")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Calculating Cube Volume]
  #v(40pt)

  #only("1-")[#align(center)[#text(size: 24pt)[Side Length → Volume]]]
  #v(20pt)
  #only("2-")[- Cube's volume = side length × side length × side length]
  #v(20pt)
  #only("3-")[- Mathematical notation: $V = s^3$]
  #v(20pt)
  #only("4-")[- Example: Cube with side 2 cm]
  #v(20pt)
  #only("5-")[  $V = 2"cm" dot 2"cm" dot 2"cm" = 8"cm"^3$]

  #only("1")[
    #voiceover("To find a cube's volume, we only need to know one thing: the length of its side.")
  ]
  #only("2")[
    #voiceover("The volume of a cube is calculated by multiplying the side length by itself three times. This is because a cube extends in three dimensions: length, width, and height.")
  ]
  #only("3")[
    #voiceover("In mathematical notation, we write this as V equals s cubed, where V is the volume and s is the side length.")
  ]
  #only("4")[
    #voiceover("Let's look at an example. Imagine we have a cube with a side length of 2 centimeters.")
  ]
  #only("5")[
    #voiceover("To calculate its volume, we multiply 2 centimeters by 2 centimeters by 2 centimeters. This gives us 8 cubic centimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Summary]
  #v(40pt)

  #only("1-")[- Volume: Space inside a 3D object 📦]
  #v(20pt)
  #only("2-")[- Cube volume formula: $V = s^3$ 🧮]
  #v(20pt)
  #only("3-")[- Easy to calculate with one measurement! 📏]

  #only("1")[
    #voiceover("Let's recap what we've learned. Volume is the amount of space inside a three-dimensional object like our cube.")
  ]
  #only("2")[
    #voiceover("To find a cube's volume, we use the formula V equals s cubed, where s is the length of one side of the cube.")
  ]
  #only("3")[
    #voiceover("This makes calculating the volume of a cube really simple - we only need to measure one side! Remember, understanding volume helps us in many real-world situations, from packing boxes to designing buildings. Keep exploring!")
  ]
]