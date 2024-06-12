#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Introduction to Power Functions with Natural Exponents]
#v(40pt)
#only("1")[#voiceover("Great job on answering the question! Now, let's go through the solution step-by-step.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Understanding $2^3$]
#v(40pt)
#only("1-")[- $2^3$ means multiplying the number 2 by itself 3 times.]
#v(20pt)
#only("2-")[- This can be written as $2 * 2 * 2$.]
#v(20pt)
#only("3-")[- Let's calculate this step-by-step: $2 * 2 = 4$.]
#v(20pt)
#only("4-")[- Then, $4 * 2 = 8$.]
#v(20pt)
#only("5-")[- So, $2^3 = 8$.]
#only("1")[#voiceover("To understand $2^3$, we need to know that it means multiplying the number 2 by itself 3 times.")]
#only("2")[#voiceover("This can be written as 2 times 2 times 2.")]
#only("3")[#voiceover("Let's calculate this step-by-step. First, 2 times 2 equals 4.")]
#only("4")[#voiceover("Then, 4 times 2 equals 8.")]
#only("5")[#voiceover("So, $2^3$ equals 8.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualizing $2^3$]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

# Define the base and exponent
base = 2
exponent = 3

# Create the values for the plot
x = np.linspace(0, exponent, 100)
y = base ** x

# Plot the function
plt.plot(x, y, label='$2^x$')
plt.scatter([1, 2, 3], [2, 4, 8], color='red')  # Highlight the points 2^1, 2^2, 2^3
plt.text(1, 2, '2', fontsize=12, ha='right')
plt.text(2, 4, '4', fontsize=12, ha='right')
plt.text(3, 8, '8', fontsize=12, ha='right')

# Add labels and legend
plt.xlabel('Exponent')
plt.ylabel('Value')
plt.title('Visualizing $2^3$')
plt.legend()
plt.grid(True)
plt.show()

```,
width: 360pt),
)
]
]
#v(20pt)
#only("1")[#voiceover("Here is a graph of the function $2^x$. The red points highlight the values of $2^1$, $2^2$, and $2^3$.")]
#only("2")[#voiceover("As you can see, $2^1$ equals 2, $2^2$ equals 4, and $2^3$ equals 8.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- $2^3$ means multiplying 2 by itself 3 times.]
#v(20pt)
#only("2-")[- This can be written as $2 * 2 * 2$.]
#v(20pt)
#only("3-")[- Calculating step-by-step: $2 * 2 = 4$ and $4 * 2 = 8$.]
#v(20pt)
#only("4-")[- Therefore, $2^3 = 8$.]
#only("1")[#voiceover("To summarize, $2^3$ means multiplying 2 by itself 3 times.")]
#only("2")[#voiceover("This can be written as 2 times 2 times 2.")]
#only("3")[#voiceover("Calculating step-by-step, 2 times 2 equals 4, and 4 times 2 equals 8.")]
#only("4")[#voiceover("Therefore, $2^3$ equals 8.")]
]