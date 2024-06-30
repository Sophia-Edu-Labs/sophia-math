#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Advanced Volume of Cuboids]
  #v(20pt)
  #only("1-")[📦 Revisiting the cuboid volume formula]
  #v(20pt)
  #only("2-")[🧮 Computing volume step-by-step]
  #v(20pt)
  #only("3-")[🔍 Practical applications]

  #only("1")[
    #voiceover("Welcome to our lesson on Advanced Volume of Cuboids. Today, we'll review the formula for cuboid volume and learn how to compute it efficiently. This knowledge is crucial for various real-world applications, from package design to architecture.")
  ]

  #only("2")[
    #voiceover("We'll start by revisiting the cuboid volume formula, breaking it down into its components for a deeper understanding.")
  ]

  #only("3")[
    #voiceover("Then, we'll walk through the computation process step-by-step, ensuring you can confidently calculate the volume of any cuboid.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Cuboid Volume Formula]
  #v(20pt)
  #only("1-")[$ V = l dot w dot h $]
  #v(20pt)
  #only("2-")[Where:]
  #v(10pt)
  #only("2-")[- $V$: Volume]
  #only("3-")[- $l$: Length]
  #only("4-")[- $w$: Width]
  #only("5-")[- $h$: Height]

  #only("1")[
    #voiceover("Let's start by recalling the formula for the volume of a cuboid. The volume, V, is equal to the product of its length, width, and height.")
  ]

  #only("2")[
    #voiceover("In this formula, V represents the volume of the cuboid.")
  ]

  #only("3")[
    #voiceover("l stands for the length of the cuboid,")
  ]

  #only("4")[
    #voiceover("w represents its width,")
  ]

  #only("5")[
    #voiceover("and h is the height of the cuboid.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Computing Cuboid Volume]
  #v(20pt)
  #only("1-")[Example: Cuboid with $l = 5"cm"$, $w = 3"cm"$, $h = 2"cm"$]
  #v(20pt)
  #only("2-")[Step 1: Identify dimensions]
  #only("3-")[Step 2: Apply formula $V = l dot w dot h$]
  #only("4-")[Step 3: Calculate $V = 5"cm" dot 3"cm" dot 2"cm" = 30"cm"^3$]

  #only("1")[
    #voiceover("Now, let's walk through the process of computing a cuboid's volume. We'll use an example of a cuboid with a length of 5 centimeters, a width of 3 centimeters, and a height of 2 centimeters.")
  ]

  #only("2")[
    #voiceover("The first step is to identify the dimensions of our cuboid. In this case, we have l equals 5 centimeters, w equals 3 centimeters, and h equals 2 centimeters.")
  ]

  #only("3")[
    #voiceover("Next, we apply our volume formula: V equals l times w times h.")
  ]

  #only("4")[
    #voiceover("Finally, we calculate: V equals 5 centimeters times 3 centimeters times 2 centimeters, which gives us 30 cubic centimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Summary]
  #v(20pt)
  #only("1-")[📏 Cuboid Volume Formula: $V = l dot w dot h$]
  #v(20pt)
  #only("2-")[🧮 Computation Steps:]
  #only("2-")[1. Identify dimensions]
  #only("3-")[2. Apply formula]
  #only("4-")[3. Calculate final volume]

  #only("1")[
    #voiceover("To summarize, we've reviewed the cuboid volume formula: V equals l times w times h.")
  ]

  #only("2")[
    #voiceover("We've also learned the steps to compute the volume: First, identify the dimensions of the cuboid.")
  ]

  #only("3")[
    #voiceover("Then, apply the formula by multiplying these dimensions.")
  ]

  #only("4")[
    #voiceover("Finally, calculate the result to find the cuboid's volume. Remember, practice makes perfect! Try calculating volumes of different cuboids around you to reinforce your understanding.")
  ]
]