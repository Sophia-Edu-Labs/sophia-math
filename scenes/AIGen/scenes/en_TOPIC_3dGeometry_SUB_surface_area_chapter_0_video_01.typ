#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Introduction to Surface Area of Cubes]
  #v(40pt)
  
  #only("1-")[#align(center)[#image("https://i.imgur.com/QZWQJKq.png", width: 200pt)]]
  
  #only("2-")[- Packaging a gift 🎁]
  #v(20pt)
  #only("3-")[- How much wrapping paper? 📏]
  #v(20pt)
  #only("4-")[- Surface area is the key! 🔑]

  #only("1")[
    #voiceover("Imagine you have a cube-shaped gift box that you want to wrap. How would you figure out how much wrapping paper you need?")
  ]
  #only("2")[
    #voiceover("This is a practical application of surface area. When we wrap a gift, we're essentially covering its entire surface.")
  ]
  #only("3")[
    #voiceover("To determine how much wrapping paper we need, we need to calculate the total area we're covering.")
  ]
  #only("4")[
    #voiceover("This is where the concept of surface area comes in. It's the total area of all the outer faces of a three-dimensional object. For our gift box, it's the key to knowing exactly how much wrapping paper we need!")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Understanding Cube Surface Area]
  #v(40pt)
  
  #only("1-")[- Cube: 6 identical square faces ⬜]
  #v(20pt)
  #only("2-")[- Area of one face: $s^2$]
  #v(20pt)
  #only("3-")[- Total surface area: $6 s^2$]
  #v(20pt)
  #only("4-")[#align(center)[$ "SA" = 6 s^2 $]]

  #only("1")[
    #voiceover("Now, let's break this down. A cube has six faces, and all of these faces are identical squares.")
  ]
  #only("2")[
    #voiceover("The area of one square face is simply the side length squared. If we call the side length s, then the area of one face is s squared.")
  ]
  #only("3")[
    #voiceover("Since we have six identical faces, to get the total surface area, we multiply the area of one face by six.")
  ]
  #only("4")[
    #voiceover("This gives us our formula for the surface area of a cube: SA equals 6 times s squared, where SA stands for surface area and s is the length of one side of the cube.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Recap: Surface Area of Cubes]
  #v(40pt)
  
  #only("1-")[- Surface area = Total area of all faces 📐]
  #v(20pt)
  #only("2-")[- Cube: 6 identical square faces ⬜x6]
  #v(20pt)
  #only("3-")[- Formula: $ "SA" = 6 s^2 $]
  #v(20pt)
  #only("4-")[- Example: 3cm cube → $"SA" = 6 * 3^2 = 54"cm"^2$ 📏]

  #only("1")[
    #voiceover("Let's recap what we've learned about the surface area of cubes.")
  ]
  #only("2")[
    #voiceover("First, we understood that a cube has six identical square faces.")
  ]
  #only("3")[
    #voiceover("This led us to the formula for the surface area of a cube: SA equals 6 times s squared, where s is the length of one side.")
  ]
  #only("4")[
    #voiceover("For example, if we have a cube with sides of 3 centimeters, its surface area would be 6 times 3 squared, which equals 54 square centimeters. This means we'd need 54 square centimeters of wrapping paper to cover our gift box completely!")
  ]
]