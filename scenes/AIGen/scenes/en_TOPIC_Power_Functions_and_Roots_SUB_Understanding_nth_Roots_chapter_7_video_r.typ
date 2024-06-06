#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[n-th Roots of Negative Numbers]
#v(40pt)
#only("1-")[
- For even n, $root(n, -a)$ is complex 🌀
]
#only("1")[
#voiceover("When we take the n-th root of a negative number and n is even, the result is a complex number.")
]
#v(20pt)
#only("2-")[
- Example: $root(4, -16) = 2i$ 🧮
]
#only("2")[
#voiceover("For example, the 4th root of negative 16 is equal to 2i, where i is the imaginary unit.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualization]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create a figure and axis
fig, ax = plt.subplots(figsize=(6, 6))

# Plot the real and imaginary axes
ax.spines['left'].set_position('center')
ax.spines['bottom'].set_position('center')
ax.spines['right'].set_color('none')
ax.spines['top'].set_color('none')
ax.xaxis.set_ticks_position('bottom')
ax.yaxis.set_ticks_position('left')

# Plot the complex number 2i
ax.plot(0, 2, 'ro', markersize=10)
ax.text(0.1, 2.1, '2i', fontsize=14)

# Set the limits and labels
ax.set_xlim(-3, 3)
ax.set_ylim(-3, 3)
ax.set_xlabel('Real', fontsize=14)
ax.set_ylabel('Imaginary', fontsize=14)

# Show the plot
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's a visualization of the complex number 2i on the complex plane. The real part is 0 and the imaginary part is 2.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[
- n-th roots of negative numbers are complex when n is even 🌀
]
#only("1")[
#voiceover("To summarize, when we take the n-th root of a negative number and n is even, the result is a complex number.")
]
#v(20pt)
#only("2-")[
- Represented on the complex plane 📈
]
#only("2")[
#voiceover("These complex numbers can be represented on the complex plane, with real and imaginary axes.")
]
#v(20pt)
#only("3-")[
- Important concept in mathematics 🧮
]
#only("3")[
#voiceover("Understanding the behavior of n-th roots of negative numbers is an important concept in mathematics, especially when dealing with complex numbers.")
]
]