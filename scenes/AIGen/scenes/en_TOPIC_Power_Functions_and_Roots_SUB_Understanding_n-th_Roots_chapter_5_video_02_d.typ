#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Solving Equations with n-th Roots]
#v(40pt)
Exercise 1: Solve $root(3, x) = 2$
#v(20pt)
a) 4
b) 6 
c) 8
d) 10
#v(40pt)
#only("1-")[#text(fill:green)[c) 8]]
#only("2-")[a) 4 #text(fill:red)[b) 6] d) 10]

#only("1")[
#voiceover("That's not quite right. Let's see the correct solution.")
]
#only("2")[
#voiceover("The other options are incorrect. 4 and 6 are too small, and 10 is too large. Let's solve this step-by-step to see why 8 is the right answer.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[Given: $root(3, x) = 2$]
#v(20pt)
#only("2-")[Step 1: Cube both sides]
#v(10pt)
$(root(3, x))^3 = 2^3$
#v(10pt)
$x = 8$
#v(20pt)
#only("3-")[Therefore, the solution is $x = 8$. 🎉]

#only("1")[
#voiceover("We are given the equation cube root of x equals 2.")
]
#only("2")[
#voiceover("To solve for x, we cube both sides of the equation. On the left side, the cube and cube root cancel out, leaving just x. On the right side, 2 cubed is 8.")
]
#only("3")[
#voiceover("Therefore, the solution is x equals 8. We can check this by substituting 8 for x in the original equation. The cube root of 8 is indeed 2, so our solution is correct.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualization]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(0, 10, 100)
y = np.cbrt(x)

plt.figure(figsize=(8, 6))
plt.plot(x, y, label='$root(3, x)$')
plt.scatter([8], [2], color='red', label='Solution: (8, 2)')
plt.grid(True)
plt.legend()
plt.xlabel('x')
plt.ylabel('$root(3, x)$')
plt.show()
```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[The graph shows the function $y = root(3, x)$.]
#v(20pt)
#only("2-")[The red point (8, 2) is the solution to the equation $root(3, x) = 2$. 📍]

#only("1")[
#voiceover("This graph shows the function y equals the cube root of x.")
]
#only("2")[
#voiceover("The red point with coordinates 8 comma 2 represents the solution to our equation cube root of x equals 2. At this point, the y-value, which is the cube root of x, is 2, and the corresponding x-value is 8.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(40pt)
#only("1-")[- To solve equations with n-th roots, raise both sides to the power of n. 📈]
#v(20pt)
#only("2-")[- This cancels the n-th root on one side, allowing you to solve for the variable. ✅]
#v(20pt)
#only("3-")[- Always check your solution by substituting it back into the original equation. 🔍]

#only("1")[
#voiceover("To solve equations with n-th roots, the key is to raise both sides of the equation to the power of n.")
]
#only("2")[
#voiceover("This operation cancels out the n-th root on one side, leaving you with a simpler equation that you can solve for the variable.")
]
#only("3")[
#voiceover("Always remember to check your solution by substituting it back into the original equation. This ensures that your solution is correct.")
]
]