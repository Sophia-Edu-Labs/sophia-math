#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Vectors and the Dot Product]
  #v(40pt)

  #only("1-")[- Vectors: Quantities with magnitude and direction 🏹]
  #v(20pt)
  #only("2-")[- Examples: Force, velocity, displacement]
  #v(20pt)
  #only("3-")[- Dot product: A scalar operation on two vectors 🔢]
  #v(20pt)
  #only("4-")[- Notation: $vec(a) dot vec(b)$ or $vec(a) * vec(b)$]

  #only("1")[
    #voiceover("Welcome to our introduction to vectors and the dot product. Let's start with vectors. What exactly is a vector?")
  ]
  #only("2")[
    #voiceover("A vector is a mathematical object that has both magnitude and direction. In the real world, we encounter vectors in various forms. For example, force is a vector because it has both strength and direction. Velocity is another example, as it describes both speed and direction of motion. Displacement, which tells us how far and in what direction an object has moved, is also a vector.")
  ]
  #only("3")[
    #voiceover("Now, let's introduce a new concept: the dot product. The dot product is a special operation we can perform on two vectors. Unlike vector addition or scalar multiplication, which give us new vectors, the dot product of two vectors results in a scalar - that is, a single number.")
  ]
  #only("4")[
    #voiceover("We denote the dot product of two vectors a and b either with a dot between them, or sometimes with an asterisk. Both notations mean the same thing: we're taking the dot product of vectors a and b.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Calculating the Dot Product]
  #v(40pt)

  #only("1-")[For vectors $vec(a) = (a_1, a_2, ..., a_n)$ and $vec(b) = (b_1, b_2, ..., b_n)$:]
  #v(20pt)
  #only("2-")[$ vec(a) dot vec(b) = a_1 b_1 + a_2 b_2 + ... + a_n b_n $]
  #v(20pt)
  #only("3-")[Example: $vec(a) = (1, 2, 3)$, $vec(b) = (4, 5, 6)$]
  #v(20pt)
  #only("4-")[$ vec(a) dot vec(b) = 1 dot 4 + 2 dot 5 + 3 dot 6 = 4 + 10 + 18 = 32 $]

  #only("1")[
    #voiceover("Now, let's learn how to calculate the dot product. Consider two vectors a and b, each with n components.")
  ]
  #only("2")[
    #voiceover("The dot product is calculated by multiplying the corresponding components of the two vectors and then summing these products. Mathematically, we write this as a_1 times b_1, plus a_2 times b_2, and so on, up to a_n times b_n.")
  ]
  #only("3")[
    #voiceover("Let's look at a concrete example. Suppose we have vector a equal to 1, 2, 3, and vector b equal to 4, 5, 6.")
  ]
  #only("4")[
    #voiceover("To calculate their dot product, we multiply the corresponding components and sum: 1 times 4, plus 2 times 5, plus 3 times 6. This gives us 4 plus 10 plus 18, which equals 32. So the dot product of these two vectors is 32.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Summary]
  #v(40pt)

  #only("1-")[- Vectors: Quantities with magnitude and direction 🏹]
  #v(20pt)
  #only("2-")[- Dot product: Scalar result from multiplying vector components]
  #v(20pt)
  #only("3-")[- Notation: $vec(a) dot vec(b)$ or $vec(a) * vec(b)$]
  #v(20pt)
  #only("4-")[- Calculation: Sum of component-wise products]

  #only("1")[
    #voiceover("Let's recap what we've learned. Vectors are mathematical objects that have both magnitude and direction. They're used to represent quantities like force, velocity, and displacement in physics and engineering.")
  ]
  #only("2")[
    #voiceover("The dot product is a special operation on two vectors that results in a scalar. It's calculated by multiplying corresponding components of the vectors and summing these products.")
  ]
  #only("3")[
    #voiceover("We denote the dot product either with a dot or an asterisk between the vector symbols.")
  ]
  #only("4")[
    #voiceover("To calculate the dot product, we multiply corresponding components and sum the results. This operation has many applications in physics and engineering, which we'll explore in future lessons. Thank you for your attention!")
  ]
]