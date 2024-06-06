#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Let's recap what we learned about n-th roots of negative numbers.")
]
#text(size: 30pt, weight: "bold")[n-th Roots of Negative Numbers 📏]
// The title "n-th Roots of Negative Numbers" is shown on this slide
#v(40pt)
#only("2")[
#voiceover("We saw that the n-th root of a negative number is real if n is odd.")
]
#only("2-")[
- Real if n is odd 🔢
]
// The bullet point "Real if n is odd" is shown from slide 2 onward
#v(20pt)
#only("3")[
#voiceover("For example, the cube root of negative 27 is negative 3, which is a real number.")
]
#only("3-")[
- Example: $root(3, -27) = -3 ∈ ℝ$
]
// The example "root(3, -27) = -3" is shown from slide 3 onward
#v(40pt)
#only("4")[
#voiceover("On the other hand, we learned that the n-th root of a negative number is not real if n is even.")
]
#only("4-")[
- Not real if n is even ❌
]
// The bullet point "Not real if n is even" is shown from slide 4 onward
#v(20pt)
#only("5")[
#voiceover("For instance, the fourth root of negative 16 is not a real number.")
]
#only("5-")[
- Example: $root(4, -16) ∉ ℝ$
]
// The example "root(4, -16) is not in R" is shown from slide 5 onward
]

#slide()[
#only("1")[
#voiceover("Let's visualize this concept.")
]
#text(size: 30pt, weight: "bold")[Visualization 📊]
// The title "Visualization" is shown on this slide
#v(40pt)
#only("2-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```python
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-10, 10, 1000)

plt.figure(figsize=(8, 6))

plt.plot(x, x**3, label='x^3')
plt.plot(x, x**4, label='x^4')

plt.axhline(0, color='black', linewidth=0.5)
plt.axvline(0, color='black', linewidth=0.5)

plt.xlim(-10, 10)
plt.ylim(-1000, 1000)

plt.legend(loc='upper left', fontsize=12)
plt.grid(True)

plt.title('Odd and Even Power Functions')
plt.xlabel('x')
plt.ylabel('y')

plt.show()
```,
width: 360pt),
)
]
]
]
// The figure shows the graphs of x^3 and x^4. This figure is shown from slide 2 onward.
#only("2")[
#voiceover("Here we see the graphs of x cubed and x to the fourth power.")
]
#only("3")[
#voiceover("Notice that x cubed, an odd power, takes on negative values for negative x. This means the cube root of a negative number is real.")
]
#only("4")[
#voiceover("In contrast, x to the fourth, an even power, is never negative. So the fourth root of a negative number is not real.")
]
]

#slide()[
#only("1")[
#voiceover("In summary:")
]
#text(size: 30pt, weight: "bold")[Recap 🔍]
// The title "Recap" is shown on this slide
#v(40pt)
#only("2-")[
- n-th root of negative number is real if n is odd 🔢
]
// The bullet point "n-th root of negative number is real if n is odd" is shown from slide 2 onward
#v(20pt)
#only("3-")[
- Example: $root(3, -27) = -3 ∈ ℝ$
]
// The example "root(3, -27) = -3" is shown from slide 3 onward
#v(40pt)
#only("4-")[
- n-th root of negative number is not real if n is even ❌
]
// The bullet point "n-th root of negative number is not real if n is even" is shown from slide 4 onward
#v(20pt)
#only("5-")[
- Example: $root(4, -16) ∉ ℝ$
]
// The example "root(4, -16) is not in R" is shown from slide 5 onward
#only("2")[
#voiceover("The n-th root of a negative number is real if n is odd, like the cube root of negative 27 which is negative 3, a real number.")
]
#only("4")[
#voiceover("But the n-th root of a negative number is not real if n is even, like the fourth root of negative 16 which is not a real number.")
]
]