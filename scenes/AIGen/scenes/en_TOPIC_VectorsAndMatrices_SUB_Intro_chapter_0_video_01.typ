#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Introduction to Vectors]
  #v(40pt)

  #only("1-")[📦 Imagine packing for a trip...]
  #v(20pt)
  #only("2-")[🧳 Weight and size matter]
  #v(20pt)
  #only("3-")[🔢 One number isn't enough]
  #v(20pt)
  #only("4-")[➡️ Enter vectors: "multi-dimensional numbers"]

  #only("1")[
    #voiceover("Let's start our journey into the world of vectors with a simple scenario. Imagine you're packing for a trip.")
  ]
  #only("2")[
    #voiceover("When packing, you need to consider both the weight and size of your luggage. These are two separate, but related pieces of information.")
  ]
  #only("3")[
    #voiceover("In this case, using just one number to describe your luggage isn't enough. You need at least two: one for weight and one for size.")
  ]
  #only("4")[
    #voiceover("This is where vectors come in handy. Vectors are like 'multi-dimensional numbers' that can represent multiple related quantities at once.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[What are Vectors?]
  #v(40pt)

  #only("1-")[➡️ "Multi-dimensional numbers"]
  #v(20pt)
  #only("2-")[📏 Represented as arrows or coordinates]
  #v(20pt)
  #only("3-")[🧳 Example: Luggage vector $v = (20, 50)$]
  #v(20pt)
  #only("4-")[📊 Dimension = number of components]

  #only("1")[
    #voiceover("So, what exactly are vectors? As we mentioned, vectors are 'multi-dimensional numbers'.")
  ]
  #only("2")[
    #voiceover("They can be represented visually as arrows, or mathematically as a list of coordinates.")
  ]
  #only("3")[
    #voiceover("Let's go back to our luggage example. We could represent a piece of luggage as a vector v equals twenty comma fifty, where twenty represents the weight in kilograms and fifty represents the size in liters.")
  ]
  #only("4")[
    #voiceover("The dimension of a vector is simply the number of components it has. In our luggage example, we have a two-dimensional vector because it has two components: weight and size.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Adding Vectors]
  #v(40pt)

  #only("1-")[➕ Add corresponding components]
  #v(20pt)
  #only("2-")[🧳 Luggage A: $(15, 40)$]
  #v(10pt)
  #only("2-")[🧳 Luggage B: $(10, 30)$]
  #v(20pt)
  #only("3-")[🧳🧳 Total: $(15+10, 40+30) = (25, 70)$]

  #only("1")[
    #voiceover("Now, let's learn how to add vectors. When we add vectors, we simply add their corresponding components.")
  ]
  #only("2")[
    #voiceover("Let's say we have two pieces of luggage. Luggage A is represented by the vector fifteen comma forty, and Luggage B by ten comma thirty.")
  ]
  #only("3")[
    #voiceover("To find the total, we add the weights: fifteen plus ten equals twenty-five, and we add the sizes: forty plus thirty equals seventy. So the total vector is twenty-five comma seventy.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Summary]
  #v(40pt)

  #only("1-")[➡️ Vectors: "multi-dimensional numbers"]
  #v(20pt)
  #only("2-")[📏 Represented as arrows or coordinates]
  #v(20pt)
  #only("3-")[➕ Add by summing corresponding components]
  #v(20pt)
  #only("4-")[📊 Dimension = number of components]

  #only("1")[
    #voiceover("Let's recap what we've learned. Vectors are 'multi-dimensional numbers' that can represent multiple related quantities at once.")
  ]
  #only("2")[
    #voiceover("They can be visualized as arrows or written as a list of coordinates.")
  ]
  #only("3")[
    #voiceover("To add vectors, we sum their corresponding components.")
  ]
  #only("4")[
    #voiceover("And remember, the dimension of a vector is simply the number of components it has. This powerful concept allows us to represent and manipulate complex information in a concise way.")
  ]
]