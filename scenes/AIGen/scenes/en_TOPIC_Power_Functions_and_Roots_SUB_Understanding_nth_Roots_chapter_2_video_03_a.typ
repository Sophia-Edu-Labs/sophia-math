#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Great Job! 🌟]
#v(40pt)
#text(size: 20pt)[That's the correct answer!]
#v(20pt)
Let's see how we can solve this step by step.
#only("1")[
#voiceover("Great job! That's the correct answer. Let's see how we can solve this step by step.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Given]
#v(40pt)
#only("1-")[- Simplify $root(4, 16/81)$]
#only("1")[
#voiceover("We are asked to simplify the 4th root of 16 over 81.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 1]
#v(40pt)
#only("1-")[- $root(4, 16/81) = root(4, 16) / root(4, 81)$]
#only("1")[
#voiceover("First, we use the property that the 4th root of a quotient is the quotient of the 4th roots. So, the 4th root of 16 over 81 equals the 4th root of 16 divided by the 4th root of 81.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 2]
#v(40pt)
#only("1-")[- $sqrt[4](16) = 2$]
#only("2-")[- $sqrt[4](81) = 3$]
#only("1")[
#voiceover("Now, let's simplify each 4th root separately. The 4th root of 16 equals 2, because 2 to the power of 4 equals 16.")
]
#only("2")[
#voiceover("And the 4th root of 81 equals 3, because 3 to the power of 4 equals 81.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 3]
#v(40pt)
#only("1-")[- $root(4, 16/81) = 2 / 3$]
#only("1")[
#voiceover("Therefore, the 4th root of 16 over 81 equals 2 over 3.")
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
y = np.power(x, 4)

plt.figure(figsize=(6, 6))
plt.plot(x, y, color='blue', linewidth=2, label='$y = x^4$')
plt.plot([2], [16], 'ro', markersize=8, label='$(2, 16)$')
plt.plot([3], [81], 'go', markersize=8, label='$(3, 81)$')
plt.grid(True)
plt.legend(fontsize=12)
plt.xlim(0, 5)
plt.ylim(0, 100)
plt.title('Visualization of 4th Powers', fontsize=14)
plt.xlabel('x', fontsize=12)
plt.ylabel('$x^4$', fontsize=12)
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's a visualization of the 4th power function. You can see that 2 to the power of 4 equals 16, and 3 to the power of 4 equals 81.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Conclusion]
#v(40pt)
#only("1-")[- $root(4, 16/81) = 2/3$ ✅]
#only("1")[
#voiceover("In conclusion, the 4th root of 16 over 81 equals 2 over 3. Great work on solving this problem!")
]
]