#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Scalar Multiplication of Vectors]
  #v(40pt)

  #only("1-")[- Scaling a vector 📏]
  #v(20pt)
  #only("2-")[- Multiplying each component by a scalar 🔢]
  #v(20pt)
  #only("3-")[- Scalar: a single number 1️⃣]
  #v(20pt)
  #only("4-")[- Changes magnitude, keeps direction 🧭]
  #v(20pt)
  #only("5-")[ Exception: negative scalars flip direction ↩️]

  #only("1")[
    #voiceover("Welcome to our introduction to scalar multiplication of vectors. Imagine you're designing a video game, and you need to control the speed and direction of a character's movement. This is where scalar multiplication comes in handy.")
  ]
  #only("2")[
    #voiceover("Scalar multiplication involves multiplying each component of a vector by a single number, called a scalar.")
  ]
  #only("3")[
    #voiceover("A scalar, in this context, is simply a single numerical value. It could be any real number, like 2, negative 3, or 0.5.")
  ]
  #only("4")[
    #voiceover("When we multiply a vector by a scalar, we change its magnitude - that is, its length or size - while usually keeping its direction the same.")
  ]
  #only("5")[
    #voiceover("There's one exception to this: if we multiply by a negative scalar, it flips the direction of the vector to point in the opposite direction.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[How It Works]
  #v(40pt)

  #only("1-")[$ vec(v) = mat(2; 3) $   (Original vector)]
  #v(20pt)
  #only("2-")[$ 2 dot vec(v) = 2 dot mat(2; 3) = mat(2 dot 2; 2 dot 3) = mat(4; 6) $]
  #v(20pt)
  #only("3-")[$ -0.5 dot vec(v) = -0.5 dot mat(2; 3) = mat(-0.5 dot 2; -0.5 dot 3) = mat(-1; -1.5) $]

  #only("1")[
    #voiceover("Let's see how this works in practice. Consider a vector v, represented as a column vector with components 2 and 3.")
  ]
  #only("2")[
    #voiceover("If we multiply this vector by the scalar 2, we multiply each component by 2. So, 2 times 2 equals 4, and 2 times 3 equals 6. Our resulting vector is 4, 6.")
  ]
  #only("3")[
    #voiceover("Now, let's try multiplying by a negative scalar, say negative 0.5. We multiply each component by negative 0.5. Negative 0.5 times 2 is negative 1, and negative 0.5 times 3 is negative 1.5. Our resulting vector is negative 1, negative 1.5. Notice how the direction has been reversed.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Visualization]
  #v(20pt)

  #only("1-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(
```

          import matplotlib.pyplot as plt
import numpy as np

# Original vector
v = np.array([2, 3])

# Scaled vectors
v2 = 2 * v
v_neg = -0.5 * v

# Create the plot
plt.figure(figsize=(8, 6))
plt.axhline(y=0, color='k', linestyle='--')
plt.axvline(x=0, color='k', linestyle='--')

# Plot the vectors
plt.quiver(0, 0, v[0], v[1], angles='xy', scale_units='xy', scale=1, color='b', label='v')
plt.quiver(0, 0, v2[0], v2[1], angles='xy', scale_units='xy', scale=1, color='r', label='2v')
plt.quiver(0, 0, v_neg[0], v_neg[1], angles='xy', scale_units='xy', scale=1, color='g', label='-0.5v')

plt.xlim(-3, 5)
plt.ylim(-3, 7)
plt.xlabel('x')
plt.ylabel('y')
plt.title('Scalar Multiplication of Vectors')
plt.legend()
plt.grid(True)
plt.show()
          ```,
          width: 360pt),
        )
      ]
    ]
  ]

  #only("1")[
    #voiceover("Let's visualize these vectors. The blue arrow represents our original vector v. The red arrow shows the vector multiplied by 2, which is longer but in the same direction. The green arrow represents the vector multiplied by negative 0.5, which is shorter and points in the opposite direction.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Summary]
  #v(40pt)

  #only("1-")[- Scalar multiplication: vector × single number]
  #v(20pt)
  #only("2-")[- Multiplies each component of the vector]
  #v(20pt)
  #only("3-")[- Changes magnitude, usually keeps direction]
  #v(20pt)
  #only("4-")[- Negative scalars reverse direction]

  #only("1")[
    #voiceover("To summarize, scalar multiplication involves multiplying a vector by a single number, or scalar.")
  ]
  #only("2")[
    #voiceover("This operation multiplies each component of the vector by the scalar.")
  ]
  #only("3")[
    #voiceover("Scalar multiplication changes the magnitude of the vector, usually while keeping its direction the same.")
  ]
  #only("4")[
    #voiceover("However, multiplication by a negative scalar will reverse the direction of the vector. This concept is crucial in many applications, from physics to computer graphics, allowing us to scale and manipulate vectors as needed.")
  ]
]