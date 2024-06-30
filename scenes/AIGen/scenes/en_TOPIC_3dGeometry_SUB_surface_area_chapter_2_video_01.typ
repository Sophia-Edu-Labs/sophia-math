#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Surface Area of Cuboids]
  #v(40pt)
  
  #only("1-")[#align(center)[#image("https://upload.wikimedia.org/wikipedia/commons/thumb/4/4c/Cuboid.png/240px-Cuboid.png", width: 200pt)]]
  
  #only("2-")[- Cuboid: 3D shape with 6 rectangular faces 📦]
  #v(20pt)
  #only("3-")[- Surface area: Total area of all faces 🔢]
  #v(20pt)
  #only("4-")[- Not all faces may be identical! 🔍]

  #only("1")[
    #voiceover("Imagine you're wrapping a gift box. How much wrapping paper would you need? This question leads us to explore the surface area of cuboids.")
  ]
  #only("2")[
    #voiceover("A cuboid, also known as a rectangular prism, is a three-dimensional shape with six rectangular faces.")
  ]
  #only("3")[
    #voiceover("The surface area of a cuboid is the total area of all these faces. It's like calculating how much paint you'd need to cover the entire box.")
  ]
  #only("4")[
    #voiceover("An important point to remember is that not all faces of a cuboid are necessarily identical. Think of a shoe box - the top and bottom are the same, but the sides might be different.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Calculating Surface Area]
  #v(40pt)
  
  #only("1-")[- Sum areas of all 6 faces ➕]
  #v(20pt)
  #only("2-")[- Area of rectangle = length × width]
  #v(20pt)
  #only("3-")[- For cuboid with dimensions l, w, h:]
  #v(10pt)
  #only("4-")[  $"SA" = 2(l w + l h + w h)$]

  #only("1")[
    #voiceover("To find the surface area of a cuboid, we need to sum up the areas of all six faces.")
  ]
  #only("2")[
    #voiceover("Remember, each face is a rectangle, and the area of a rectangle is calculated by multiplying its length by its width.")
  ]
  #only("3")[
    #voiceover("For a cuboid with length l, width w, and height h, we can express the surface area using a formula.")
  ]
  #only("4")[
    #voiceover("The surface area equals two times the sum of length times width, plus length times height, plus width times height. This accounts for all six faces of the cuboid.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Example: Gift Box]
  #v(40pt)
  
  #only("1-")[- Dimensions: 30cm × 20cm × 10cm 📏]
  #v(20pt)
  #only("2-")[- Calculate surface area:]
  #v(10pt)
  #only("3-")[  $"SA" = 2(30 dot 20 + 30 dot 10 + 20 dot 10)$]
  #v(10pt)
  #only("4-")[  $"SA" = 2(600 + 300 + 200) = 2(1100) = 2200"cm"^2$]

  #only("1")[
    #voiceover("Let's apply this to our gift box example. Suppose we have a box that's 30 centimeters long, 20 centimeters wide, and 10 centimeters high.")
  ]
  #only("2")[
    #voiceover("To calculate the surface area, we'll use our formula.")
  ]
  #only("3")[
    #voiceover("We multiply 30 by 20 for the top and bottom, 30 by 10 for the front and back, and 20 by 10 for the sides. Then we add these up and multiply by 2.")
  ]
  #only("4")[
    #voiceover("This gives us 2200 square centimeters. That's how much wrapping paper we'd need to cover the entire box!")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Summary]
  #v(40pt)
  
  #only("1-")[- Surface area = Sum of all face areas 🧮]
  #v(20pt)
  #only("2-")[- Cuboid: 6 rectangular faces, not all identical 📦]
  #v(20pt)
  #only("3-")[- Formula: $"SA" = 2(l w + l h + w h)$ 📐]
  #v(20pt)
  #only("4-")[- Practical applications: Wrapping, painting, etc. 🎁🖌️]

  #only("1")[
    #voiceover("To wrap up, the surface area of a cuboid is the sum of the areas of all its faces.")
  ]
  #only("2")[
    #voiceover("Remember, a cuboid has six rectangular faces, and these faces may not all be identical.")
  ]
  #only("3")[
    #voiceover("We can calculate the surface area using the formula: Surface Area equals two times the sum of length times width, plus length times height, plus width times height.")
  ]
  #only("4")[
    #voiceover("Understanding surface area has practical applications, from wrapping gifts to painting rooms. Keep exploring, and you'll find many more uses for this concept!")
  ]
]