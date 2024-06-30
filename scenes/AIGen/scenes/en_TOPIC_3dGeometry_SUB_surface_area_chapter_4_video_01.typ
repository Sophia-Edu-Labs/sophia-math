#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Finding Missing Dimensions of a Cuboid]
  #v(20pt)
  
  #only("1-")[#align(center)[#image("https://i.imgur.com/QZQThxN.png", width: 200pt)]]
  
  #only("2-")[- Given: Surface Area]
  #v(10pt)
  #only("3-")[- Find: Missing dimension]
  #v(10pt)
  #only("4-")[- Real-world application: 📦 Packaging]

  #only("1")[
    #voiceover("Imagine you're designing a box for a new product. You know how much surface area the box should have, but you're not sure about one of its dimensions. How can we solve this problem?")
  ]
  
  #only("2")[
    #voiceover("In this scenario, we're given the surface area of a cuboid, which is a rectangular box.")
  ]
  
  #only("3")[
    #voiceover("Our task is to find a missing dimension of the cuboid using this information.")
  ]
  
  #only("4")[
    #voiceover("This problem has real-world applications, particularly in packaging design where material usage needs to be optimized.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Surface Area Formula]
  #v(20pt)
  
  #only("1-")[$ "SA" = 2(l w + l h + w h) $]
  #v(20pt)
  #only("2-")[Where:]
  #only("3-")[- $"SA"$: Surface Area]
  #only("4-")[- $l$: Length]
  #only("5-")[- $w$: Width]
  #only("6-")[- $h$: Height]

  #only("1")[
    #voiceover("To solve this problem, we need to recall the formula for the surface area of a cuboid. The surface area is equal to two times the sum of length times width, length times height, and width times height.")
  ]
  
  #only("2")[
    #voiceover("Let's break down what each variable in this formula represents.")
  ]
  
  #only("3")[
    #voiceover("SA stands for Surface Area, which is what we're given in our problem.")
  ]
  
  #only("4")[
    #voiceover("l represents the length of the cuboid,")
  ]
  
  #only("5")[
    #voiceover("w represents the width,")
  ]
  
  #only("6")[
    #voiceover("and h represents the height.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Solving for a Missing Dimension]
  #v(20pt)
  
  #only("1-")[1. Start with the SA formula]
  #only("2-")[2. Substitute known values]
  #only("3-")[3. Rearrange to isolate unknown]
  #only("4-")[4. Solve the equation]

  #only("1")[
    #voiceover("Now, let's walk through the process of solving for a missing dimension. First, we start with our surface area formula.")
  ]
  
  #only("2")[
    #voiceover("Next, we substitute the known values into the formula. This includes the given surface area and any dimensions we know.")
  ]
  
  #only("3")[
    #voiceover("Then, we rearrange the equation to isolate the unknown dimension.")
  ]
  
  #only("4")[
    #voiceover("Finally, we solve the resulting equation to find the value of the missing dimension.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Summary]
  #v(20pt)
  
  #only("1-")[- Problem: Find missing dimension given SA]
  #only("2-")[- Use SA formula: $ "SA" = 2(l w + l h + w h) $]
  #only("3-")[- Substitute, rearrange, solve]
  #only("4-")[- Practical application in packaging 📦]

  #only("1")[
    #voiceover("To summarize, we've introduced the problem of finding a missing dimension of a cuboid when given its surface area.")
  ]
  
  #only("2")[
    #voiceover("We use the surface area formula, which relates the surface area to the length, width, and height of the cuboid.")
  ]
  
  #only("3")[
    #voiceover("The process involves substituting known values, rearranging the equation, and solving for the unknown dimension.")
  ]
  
  #only("4")[
    #voiceover("This concept has practical applications, particularly in fields like packaging design where optimizing material usage is crucial.")
  ]
]