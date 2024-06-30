#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Cuboid Surface Area: A Review]
  #v(20pt)

  #only("1-")[#align(center)[#image("https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/Cuboid.png/220px-Cuboid.png", width: 150pt)]]
  
  #only("2-")[- Cuboid: 3D shape with 6 rectangular faces 📦]
  #v(10pt)
  #only("3-")[- Dimensions: length (l), width (w), height (h)]
  #v(10pt)
  #only("4-")[- Surface Area: Sum of areas of all faces]

  #only("1")[
    #voiceover("Let's review the surface area of a cuboid. Imagine you're wrapping a present box. How much wrapping paper would you need?")
  ]

  #only("2")[
    #voiceover("A cuboid, also known as a rectangular prism, is a three-dimensional shape with six rectangular faces.")
  ]

  #only("3")[
    #voiceover("It has three dimensions: length, width, and height. We usually denote these as l, w, and h respectively.")
  ]

  #only("4")[
    #voiceover("The surface area of a cuboid is the total area of all its faces. It's like calculating how much wrapping paper you'd need to cover the entire box.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Formula and Calculation]
  #v(20pt)

  #only("1-")[- Formula: $"SA" = 2(l w + l h + w h)$]
  #v(10pt)
  #only("2-")[- Each face appears twice]
  #v(10pt)
  #only("3-")[- Example: $l = 3"cm", w = 4"cm", h = 5"cm$]
  #v(10pt)
  #only("4-")[  $"SA" = 2(3 dot 4 + 3 dot 5 + 4 dot 5)$]
  #v(5pt)
  #only("5-")[  $    = 2(12 + 15 + 20)$]
  #v(5pt)
  #only("6-")[  $    = 2(47) = 94 "cm"^2$]

  #only("1")[
    #voiceover("The formula for the surface area of a cuboid is SA equals 2 times the sum of length times width, length times height, and width times height.")
  ]

  #only("2")[
    #voiceover("We multiply by 2 because each face appears twice on the cuboid. For example, there are two faces with length times width.")
  ]

  #only("3")[
    #voiceover("Let's work through an example. Suppose we have a cuboid with length 3 centimeters, width 4 centimeters, and height 5 centimeters.")
  ]

  #only("4")[
    #voiceover("We plug these values into our formula. SA equals 2 times the sum of 3 times 4, 3 times 5, and 4 times 5.")
  ]

  #only("5")[
    #voiceover("Simplifying, we get 2 times the sum of 12, 15, and 20.")
  ]

  #only("6")[
    #voiceover("Adding these up and multiplying by 2, we get a total surface area of 94 square centimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Summary]
  #v(20pt)

  #only("1-")[- Cuboid: 6 rectangular faces 📦]
  #v(10pt)
  #only("2-")[- Dimensions: length (l), width (w), height (h)]
  #v(10pt)
  #only("3-")[- Surface Area Formula: $"SA" = 2(l w + l h + w h)$]
  #v(10pt)
  #only("4-")[- Practical use: Wrapping, painting, material needed 🎁🖌️]

  #only("1")[
    #voiceover("To summarize, a cuboid is a three-dimensional shape with six rectangular faces.")
  ]

  #only("2")[
    #voiceover("It's defined by three dimensions: length, width, and height.")
  ]

  #only("3")[
    #voiceover("The surface area is calculated using the formula: SA equals 2 times the sum of length times width, length times height, and width times height.")
  ]

  #only("4")[
    #voiceover("Understanding surface area is crucial for many real-world applications, like wrapping presents, painting rooms, or calculating material needed for construction. Keep practicing, and you'll master this concept in no time!")
  ]
]