#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Surface Area of Cubes]
  #v(40pt)

  #only("1-")[#align(center)[#box(width: 100pt, height: 100pt, stroke: black)[📦]]]
  
  #only("2-")[- Each face is a square]
  #v(20pt)
  #only("3-")[- 6 identical faces]
  #v(20pt)
  #only("4-")[- Area of one face: $s^2$]
  #v(20pt)
  #only("5-")[- Total surface area: $6s^2$]

  #only("1")[
    #voiceover("Imagine you're wrapping a gift box. How much wrapping paper would you need? This is where the concept of surface area comes in handy, especially for cube-shaped objects.")
  ]
  #only("2")[
    #voiceover("Let's review the surface area of a cube. First, notice that each face of a cube is a perfect square.")
  ]
  #only("3")[
    #voiceover("A cube has six identical faces - think about it: top, bottom, front, back, left, and right.")
  ]
  #only("4")[
    #voiceover("The area of one face is simply the side length squared. If we call the side length s, then the area of one face is s squared.")
  ]
  #only("5")[
    #voiceover("Since there are six identical faces, we multiply the area of one face by 6. So, the total surface area of a cube is 6 times s squared.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Computing Surface Area]
  #v(40pt)

  #only("1-")[Example: Cube with side length 5 cm]
  #v(20pt)
  #only("2-")[- Area of one face: $5^2 = 25"cm"^2$]
  #v(20pt)
  #only("3-")[- Total surface area: $6 dot 25 = 150"cm"^2$]
  #v(40pt)
  #only("4-")[Formula: $"SA" = 6s^2$]

  #only("1")[
    #voiceover("Let's work through an example to see how we compute the surface area. Suppose we have a cube with a side length of 5 centimeters.")
  ]
  #only("2")[
    #voiceover("First, we calculate the area of one face. The side length is 5 cm, so the area of one face is 5 squared, which equals 25 square centimeters.")
  ]
  #only("3")[
    #voiceover("Now, we multiply this by 6 to get the total surface area. 6 times 25 is 150 square centimeters.")
  ]
  #only("4")[
    #voiceover("In general, we can express this as a formula: The surface area, SA, equals 6 times s squared, where s is the side length of the cube.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Recap: Surface Area of Cubes]
  #v(40pt)

  #only("1-")[- Cube has 6 square faces]
  #v(20pt)
  #only("2-")[- Area of one face: $s^2$]
  #v(20pt)
  #only("3-")[- Total surface area: $"SA" = 6s^2$]
  #v(20pt)
  #only("4-")[- Useful for real-world applications 🎁📦]

  #only("1")[
    #voiceover("Let's recap what we've learned about the surface area of cubes. First, remember that a cube has 6 square faces.")
  ]
  #only("2")[
    #voiceover("The area of one face is the side length squared.")
  ]
  #only("3")[
    #voiceover("To get the total surface area, we multiply the area of one face by 6. This gives us the formula: Surface Area equals 6 times s squared.")
  ]
  #only("4")[
    #voiceover("This concept is incredibly useful in real-world applications, from gift wrapping to packaging design. Understanding surface area helps us efficiently use materials and solve practical problems.")
  ]
]