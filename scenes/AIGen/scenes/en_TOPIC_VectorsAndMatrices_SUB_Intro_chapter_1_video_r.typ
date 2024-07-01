#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Review: Scalar Multiplication of Vectors 🔢➡️]
  #v(40pt)
  #only("1-")[- Vectors are essential in mathematics and physics 📐🧮]
  #only("2-")[- Scalar multiplication: a way to scale vectors 📏]
  #only("3-")[- Let's review this operation with examples 🔍]
  
  #only("1")[
    #voiceover("Let's review scalar multiplication of vectors. Vectors are fundamental in mathematics and physics, representing quantities with both magnitude and direction.")
  ]
  #only("2")[
    #voiceover("Scalar multiplication is an operation that allows us to scale vectors, changing their magnitude while preserving their direction.")
  ]
  #only("3")[
    #voiceover("We'll go through this concept step by step with some examples.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Scalar Multiplication: Definition 📚]
  #v(40pt)
  #only("1-")[- Scalar: a single number 🔢]
  #only("2-")[- Vector: an ordered list of numbers ➡️]
  #only("3-")[- Scalar multiplication: multiply each component by the scalar 🔄]
  
  #only("1")[
    #voiceover("First, let's recall what we mean by scalar and vector. A scalar is simply a single number, like 2 or negative 3.")
  ]
  #only("2")[
    #voiceover("A vector, on the other hand, is an ordered list of numbers. For example, in two dimensions, we might have a vector (3, 4).")
  ]
  #only("3")[
    #voiceover("Scalar multiplication involves multiplying each component of the vector by the scalar. This scales the vector up or down, depending on the scalar's value.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Example: 2D Vector 🎯]
  #v(20pt)
  #only("1-")[
    Let $vec(v) = mat(2; 3)$ and scalar $c = 4$
  ]
  #v(20pt)
  #only("2-")[
    $c vec(v) = 4 mat(2; 3) = mat(4 dot 2; 4 dot 3) = mat(8; 12)$
  ]
  #v(20pt)
  #only("3-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(
```

            import matplotlib.pyplot as plt
import numpy as np

# Original vector
v = np.array([2, 3])
# Scaled vector
sv = 4 * v

plt.figure(figsize=(8, 6))
plt.axhline(y=0, color='k', linestyle='-', linewidth=0.5)
plt.axvline(x=0, color='k', linestyle='-', linewidth=0.5)

# Plot original vector
plt.quiver(0, 0, v[0], v[1], angles='xy', scale_units='xy', scale=1, color='blue', label='v')
# Plot scaled vector
plt.quiver(0, 0, sv[0], sv[1], angles='xy', scale_units='xy', scale=1, color='red', label='4v')

plt.xlim(-1, 13)
plt.ylim(-1, 13)
plt.grid(True)
plt.legend()
plt.title('Scalar Multiplication of a 2D Vector')
plt.xlabel('x')
plt.ylabel('y')

plt.show()
          ```,
          width: 360pt
        ),
        caption: [],
      )
    ]
  ]]
  
  #only("1")[
    #voiceover("Let's look at an example in two dimensions. Consider the vector v equal to (2, 3) and let's multiply it by the scalar 4.")
  ]
  #only("2")[
    #voiceover("To perform this multiplication, we multiply each component of v by 4. So, 4 times (2, 3) equals (4 times 2, 4 times 3), which gives us (8, 12).")
  ]
  #only("3")[
    #voiceover("Here's a visual representation. The blue arrow represents our original vector v, and the red arrow shows the result of multiplying v by 4. As you can see, the direction remains the same, but the magnitude has increased by a factor of 4.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Summary 📝]
  #v(40pt)
  #only("1-")[- Scalar multiplication: $c vec(v) = (c v_1, c v_2, ..., c v_n)$ 🔢]
  #only("2-")[- Multiplies each component by the scalar 🔄]
  #only("3-")[- Changes magnitude, preserves direction ➡️]
  #only("4-")[- Important in physics, computer graphics, and more! 🌟]
  
  #only("1")[
    #voiceover("To recap, scalar multiplication of a vector v by a scalar c is defined as c times v equals c v-1, c v-2, and so on up to c v-n, where v-i represents the i-th component of the vector.")
  ]
  #only("2")[
    #voiceover("This operation multiplies each component of the vector by the scalar.")
  ]
  #only("3")[
    #voiceover("As a result, scalar multiplication changes the magnitude of the vector but preserves its direction, unless the scalar is negative, which reverses the direction.")
  ]
  #only("4")[
    #voiceover("Understanding scalar multiplication is crucial in various fields, including physics for scaling forces, computer graphics for transformations, and many other applications in mathematics and science.")
  ]
]