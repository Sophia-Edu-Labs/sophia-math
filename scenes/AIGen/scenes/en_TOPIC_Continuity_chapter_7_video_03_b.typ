#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[

#only("1")[
#voiceover("That's not quite right. Let's go through the correct solution step by step together.")
]

#text(size: 30pt, weight: "bold")[Continuity of $f(x) = |x|$ at $x = 0$]

#v(40pt)

#only("2-")[#text()[$ f(x) = |x| $]]
// The function f(x) is shown from slide 2 onward

#only("2")[
#voiceover("We're considering the function f of x equals the absolute value of x.")
]

]

#slide()[

#only("1")[
#voiceover("To check continuity at x equals zero, we need to verify three conditions:")
]

#text(size: 30pt, weight: "bold")[Conditions for Continuity]

#v(40pt)

#only("1-")[1. $lim_(x→0) f(x)$ exists]
// The first condition is shown from slide 1 onward

#only("2-")[2. $f(0)$ is defined]
// The second condition is shown from slide 2 onward

#only("3-")[3. $lim_(x→0) f(x) = f(0)$]
// The third condition is shown from slide 3 onward

#only("2")[
#voiceover("First, the limit of f of x as x approaches zero must exist.")
]

#only("3")[
#voiceover("Second, f of zero must be defined.")
]

#only("4")[
#voiceover("Third, the limit of f of x as x approaches zero must equal f of zero.")
]

]

#slide()[

#text(size: 30pt, weight: "bold")[Checking the Conditions]

#v(40pt)

#only("1-")[1. $lim_(x→0) |x| = 0$ ✅]
// The first condition check is shown from slide 1 onward

#only("2-")[2. $f(0) = |0| = 0$ ✅]
// The second condition check is shown from slide 2 onward

#only("3-")[3. $lim_(x→0) |x| = 0 = f(0)$ ✅]
// The third condition check is shown from slide 3 onward

#only("1")[
#voiceover("Let's check the first condition. The limit of the absolute value of x as x approaches zero is zero. So the limit exists.")
]

#only("2")[
#voiceover("Now the second condition. f of zero is the absolute value of zero, which is zero. So f of zero is defined.")
]

#only("3")[
#voiceover("Finally, the third condition. The limit of the absolute value of x as x approaches zero, which is zero, equals f of zero, which is also zero.")
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

x = np.linspace(-2, 2, 1000)
y = np.abs(x)

plt.figure(figsize=(6, 6))
plt.plot(x, y, color='blue', label='f(x) = |x|')
plt.scatter(0, 0, color='red', label='(0, f(0))')
plt.grid(True)
plt.axhline(0, color='black', lw=0.5)
plt.axvline(0, color='black', lw=0.5)
plt.legend()
plt.title('Graph of f(x) = |x|')
plt.xlabel('x')
plt.ylabel('f(x)')
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]

#only("1")[
#voiceover("Here's a visualization of the function f of x equals the absolute value of x. Notice how the graph is continuous at x equals zero, with no break or gap.")
]

]
]

#slide()[

#text(size: 30pt, weight: "bold")[Conclusion]

#v(40pt)

#only("1-")[Since all three conditions are satisfied, we can conclude that $f(x) = |x|$ is continuous at $x = 0$. 🎉]

#only("1")[
#voiceover("Since all three conditions for continuity are satisfied, we can conclude that the function f of x equals the absolute value of x is indeed continuous at x equals zero.")
]

]