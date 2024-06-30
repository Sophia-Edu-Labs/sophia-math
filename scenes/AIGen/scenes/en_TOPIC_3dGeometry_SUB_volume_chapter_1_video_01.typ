#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Advanced Volume of Cubes]
  #v(40pt)
  #only("1-")[📦 Imagine you're packing cubes...]
  #v(20pt)
  #only("2-")[🤔 How much space do they take up?]
  #v(20pt)
  #only("3-")[🧮 That's where volume comes in!]
  #v(20pt)
  #only("4-")[📏 Let's review how to calculate it]

  #only("1")[
    #voiceover("Welcome to our lesson on the advanced volume of cubes. Let's start by imagining a scenario.")
  ]
  #only("2")[
    #voiceover("You're packing a bunch of cube-shaped boxes. You might wonder, how much space do these cubes actually take up?")
  ]
  #only("3")[
    #voiceover("This is where the concept of volume becomes important. Volume tells us how much three-dimensional space an object occupies.")
  ]
  #only("4")[
    #voiceover("In this video, we'll review how to calculate the volume of a cube and explore some interesting properties. Let's dive in!")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Volume of a Cube]
  #v(40pt)
  #only("1-")[📏 Cube: 3D shape with 6 equal square faces]
  #v(20pt)
  #only("2-")[🔑 Key measurement: Side length (s)]
  #v(20pt)
  #only("3-")[🧮 Volume formula: $V = s^3$]
  #v(20pt)
  #only("4-")[💡 Example: Cube with side 5 cm]
  #v(20pt)
  #only("5-")[   $V = 5^3 = 5 dot 5 dot 5 = 125 "cm"^3$]

  #only("1")[
    #voiceover("Let's start with the basics. A cube is a three-dimensional shape with six equal square faces.")
  ]
  #only("2")[
    #voiceover("The key measurement for a cube is its side length, which we often denote as s.")
  ]
  #only("3")[
    #voiceover("The volume of a cube is calculated using a simple formula: V equals s cubed. This means we multiply the side length by itself three times.")
  ]
  #only("4")[
    #voiceover("Let's look at an example. Suppose we have a cube with a side length of 5 centimeters.")
  ]
  #only("5")[
    #voiceover("To find its volume, we cube 5. That's 5 times 5 times 5, which equals 125 cubic centimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Recap]
  #v(40pt)
  #only("1-")[📦 Cube: 3D shape with equal square faces]
  #v(20pt)
  #only("2-")[📏 Volume: Space occupied by the cube]
  #v(20pt)
  #only("3-")[🧮 Formula: $V = s^3$]
  #v(20pt)
  #only("4-")[💡 Remember: Units are cubed too!]

  #only("1")[
    #voiceover("Let's recap what we've learned. A cube is a three-dimensional shape with six equal square faces.")
  ]
  #only("2")[
    #voiceover("The volume of a cube represents the amount of three-dimensional space it occupies.")
  ]
  #only("3")[
    #voiceover("We calculate this volume using the formula V equals s cubed, where s is the length of one side of the cube.")
  ]
  #only("4")[
    #voiceover("Remember, when we cube the side length, we also cube the units. So if the side length is in centimeters, the volume will be in cubic centimeters.")
  ]
]