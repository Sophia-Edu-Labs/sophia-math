#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Not quite. Let's go through the correct solution step by step together.")
]

#text(size: 30pt, weight: "bold")[Converting $7/20$ to a Decimal]

#v(40pt)

#only("2-")[#text()[$7/20$]]
#only("2")[
#voiceover("We start with the fraction seven over twenty.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Steps to Convert Fractions to Decimals]
#v(40pt)
#only("1-")[- Step 1: Divide the numerator by the denominator. ➗]
#v(20pt)
#only("2-")[- Step 2: Simplify the result if necessary. ✂️]
#only("1")[
#voiceover("Before we solve the exercise, let's quickly review the steps to convert fractions to decimals. First, divide the numerator by the denominator.")
]
#only("2")[
#voiceover("Next, simplify the result if necessary.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Example: Converting $7/20$ to a Decimal]
#v(40pt)
#only("1-")[- Step 1: ➗ Divide $7$ by $20$.]
#v(20pt)
#only("2-")[- Step 2: ✂️ Simplify the result: $0.35$.]
#only("1")[
#voiceover("Now let's apply these steps to the fraction seven over twenty. First, we divide seven by twenty.")
]
#only("2")[
#voiceover("This gives us zero point three five. And that's it, we're done! The solution is zero point three five.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualizing the Division]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

# Data
x = np.array([0, 1])
y = np.array([0, 0.35])

plt.plot(x, y, marker='o', color='b')
plt.axhline(y=0.35, color='r', linestyle='--')
plt.text(0.5, 0.36, '0.35', color='r')
plt.title('Division of 7 by 20')
plt.xlabel('Step')
plt.ylabel('Value')
plt.grid(True)
plt.show()

```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Let's visualize the division of seven by twenty. As you can see, the result is zero point three five.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- We started with the fraction $7/20$. 📜]
#v(20pt)
#only("2-")[- We divided $7$ by $20$. ➗]
#v(20pt)
#only("3-")[- The result is $0.35$. 🎉]
#only("1")[
#voiceover("To summarize, we started with the fraction seven over twenty.")
]
#only("2")[
#voiceover("We divided seven by twenty.")
]
#only("3")[
#voiceover("The result is zero point three five. Well done!")
]
]