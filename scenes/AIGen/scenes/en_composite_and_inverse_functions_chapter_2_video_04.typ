#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Composite Functions Recap 🔄]
#v(40pt)
#only("1-")[- Combine simpler functions to model complex relationships 🧩]
#v(20pt)
#only("2-")[- Example: Area of a rectangle 📏]
#v(20pt)
#only("3-")[  - Length: $l(x) = 2x$]
#only("4-")[  - Width: $w(x) = x + 3$]
#only("5-")[  - Area: $A(x) = l(x) dot w(x) = (2x)(x + 3) = 2x^2 + 6x$]
#only("1")[
#voiceover("Composite functions allow us to model complex relationships by combining simpler functions.")
]
#only("2")[
#voiceover("For example, let's consider the area of a rectangle.")
]
#only("3")[
#voiceover("If the length of the rectangle is a function of x, say, 2x...")
]
#only("4")[
#voiceover("...and the width is another function of x, say, x plus 3...")
]
#only("5")[
#voiceover("...then the area of the rectangle can be modeled as a composite function. It's the length function times the width function, which simplifies to 2x squared plus 6x.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualization 📊]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(0, 5, 100)
l = 2 * x
w = x + 3
A = 2 * x**2 + 6 * x

fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(12, 5))

ax1.plot(x, l, 'r', label='Length')
ax1.plot(x, w, 'b', label='Width')
ax1.set_xlabel('x')
ax1.set_ylabel('Length/Width')
ax1.legend()
ax1.grid(True)

ax2.plot(x, A, 'g', label='Area')
ax2.set_xlabel('x')
ax2.set_ylabel('Area')
ax2.legend()
ax2.grid(True)

plt.tight_layout()
plt.show()
```,
width: 500pt),
)
]
]
#only("1")[
#voiceover("Here's a visualization of our example. On the left, we see the length and width functions. On the right, we see the resulting area function, which is a composite of the length and width.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways 🔑]
#v(40pt)
#only("1-")[- Composite functions combine simpler functions 🎛]
#v(20pt)
#only("2-")[- They can model complex real-world relationships 🌍]
#v(20pt)
#only("3-")[- Useful in various fields: physics, economics, biology, etc. 🔬💰🌿]
#only("1")[
#voiceover("The key takeaway is that composite functions allow us to combine simpler functions...")
]
#only("2")[
#voiceover("...which enables us to model complex real-world relationships.")
]
#only("3")[
#voiceover("This concept is useful in various fields, such as physics, economics, biology, and more.")
]
]