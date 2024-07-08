#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Multiplying Fractions]
  #v(40pt)

  #only("1-")[🍕 Why do we need to multiply fractions?]
  #v(20pt)
  #only("2-")[📊 Example: Sharing a pizza]
  #v(20pt)
  #only("3-")[🧮 Basic concept: Multiply numerators and denominators]
  #v(20pt)
  #only("4-")[✨ Simplify the result]

  #only("1")[
    #voiceover("Welcome to our lesson on multiplying fractions! Have you ever wondered why we need to multiply fractions?")
  ]

  #only("2")[
    #voiceover("Let's consider a real-life example. Imagine you have half a pizza, and you want to give half of that to your friend. How much of the whole pizza would your friend get?")
  ]

  #only("3")[
    #voiceover("To solve this, we need to multiply fractions. The basic concept is simple: we multiply the numerators together and the denominators together.")
  ]

  #only("4")[
    #voiceover("After multiplying, we often need to simplify the result to get the most reduced form of the fraction. Let's dive deeper into this process in the next slide.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[How to Multiply Fractions]
  #v(40pt)

  #only("1-")[$ (a/b) dot (c/d) = (a dot c)/(b dot d) $]
  #v(20pt)
  #only("2-")[Example: $ (1/2) dot (1/2) = (1 dot 1)/(2 dot 2) = 1/4 $]
  #v(20pt)
  #only("3-")[
    #align(center)[
      #box(width: 200pt, height: 200pt)[
        #morphchildren(id: "plot")[
          #figure(
            pyimage(
```

            import matplotlib.pyplot as plt
import numpy as np

fig, ax = plt.subplots()
circle = plt.Circle((0.5, 0.5), 0.5, fill=False)
ax.add_artist(circle)
ax.plot([0.5, 0.5], [0, 1], 'k-')
ax.plot([0, 1], [0.5, 0.5], 'k-')
ax.fill_between([0, 0.5], [0.5, 0.5], [1, 1], alpha=0.3)
ax.set_xlim(0, 1)
ax.set_ylim(0, 1)
ax.set_aspect('equal')
ax.axis('off')
plt.show()
            ```,
            width: 200pt),
          )
        ]
      ]
    ]
  ]

  #only("1")[
    #voiceover("Here's how we multiply fractions: we multiply the numerators together and the denominators together. If we have a over b times c over d, the result is a times c over b times d.")
  ]

  #only("2")[
    #voiceover("Let's go back to our pizza example. Half of half a pizza is represented as one-half times one-half. Following our rule, we multiply one times one in the numerator, which gives us one, and two times two in the denominator, which gives us four. So, half of half a pizza is one-fourth of the whole pizza.")
  ]

  #only("3")[
    #voiceover("This diagram illustrates our pizza example. The whole circle represents the pizza, and the shaded area shows one-fourth of it, which is the result of our multiplication.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Summary]
  #v(40pt)

  #only("1-")[🔢 Multiply numerators together]
  #v(20pt)
  #only("2-")[🔢 Multiply denominators together]
  #v(20pt)
  #only("3-")[✂️ Simplify if possible]
  #v(20pt)
  #only("4-")[🍕 Real-life application: Sharing food!]

  #only("1")[
    #voiceover("Let's recap what we've learned about multiplying fractions. First, we multiply the numerators together.")
  ]

  #only("2")[
    #voiceover("Then, we multiply the denominators together.")
  ]

  #only("3")[
    #voiceover("After multiplying, we should always check if we can simplify our result.")
  ]

  #only("4")[
    #voiceover("Remember, this isn't just about numbers - it has real-life applications, like figuring out how much pizza you're sharing with friends! Practice this skill, and you'll find it useful in many situations.")
  ]
]