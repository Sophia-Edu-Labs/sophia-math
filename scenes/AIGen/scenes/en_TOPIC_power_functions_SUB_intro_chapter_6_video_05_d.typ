#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Area of a Circle]
#v(40pt)

#only("1-")[Which of the following is an application of power functions?]
#v(20pt)
#only("-1")[a) Projectile motion]#only("2-")[#text(fill:red)[a) Projectile motion]]
#v(10pt)
#only("-2")[b) Population growth]#only("3-")[#text(fill:red)[b) Population growth]]
#v(10pt)
#only("-3")[c) Temperature conversion]#only("4-")[#text(fill:red)[c) Temperature conversion]]
#v(10pt)
#only("-4")[d) Area of a circle]#only("5-")[#text(fill:green)[d) Area of a circle]]

#only("1")[#voiceover("Great job! You've correctly identified that the area of a circle is an application of power functions. Let's explore why this is the case and why the other options are incorrect.")]
#only("2")[#voiceover("a) Projectile motion is incorrect. While it involves quadratic functions, it's not typically classified as a power function.")]
#only("3")[#voiceover("b) Population growth is also incorrect. It usually involves exponential functions, not power functions.")]
#only("4")[#voiceover("c) Temperature conversion is incorrect as well. It typically involves linear functions, not power functions.")]
#only("5")[#voiceover("d) Area of a circle is correct! This is indeed an application of power functions. Let's delve deeper into why.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Area of a Circle: A Power Function]
#v(40pt)

#only("1-")[Area of a circle: $A = pi r^2$]
#v(20pt)
#only("2-")[- $r$ is the radius]
#only("3-")[- $r^2$ is a power function]
#only("4-")[- $pi$ is a constant]

#only("1")[#voiceover("The formula for the area of a circle is A equals pi r squared.")]
#only("2")[#voiceover("Here, r represents the radius of the circle.")]
#only("3")[#voiceover("The term r squared is a power function. Specifically, it's a quadratic function, which is a type of power function.")]
#only("4")[#voiceover("Pi is a constant in this formula. The presence of this constant doesn't change the fact that the core of this formula is a power function.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualizing the Power Function]
#v(20pt)

#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

r = np.linspace(0, 5, 100)
A = np.pi * r**2

plt.figure(figsize=(10, 6))
plt.plot(r, A, 'b-', linewidth=2)
plt.title('Area of a Circle as a Function of Radius')
plt.xlabel('Radius (r)')
plt.ylabel('Area (A)')
plt.grid(True)
plt.annotate('A = πr²', xy=(3, 20), xytext=(3.5, 30),
             arrowprops=dict(facecolor='black', shrink=0.05))
plt.show()

```,
width: 360pt),
)
]
]

#only("1")[#voiceover("Let's visualize how the area of a circle changes as the radius increases. This graph shows the relationship between the radius on the x-axis and the area on the y-axis.")]
#only("2")[#voiceover("Notice how the curve isn't a straight line. It's curved, and specifically, it's a parabola. This shape is characteristic of quadratic functions, which are a type of power function.")]
#only("3")[#voiceover("As the radius increases, the area increases much more rapidly. This is because the area is proportional to the square of the radius.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Why It's a Power Function]
#v(40pt)

#only("1-")[Power Function: $f(x) = a x^n$]
#v(20pt)
#only("2-")[For Area of Circle: $A = pi r^2$]
#v(20pt)
#only("3-")[- $a = pi$ (constant)]
#only("4-")[- $x = r$ (variable)]
#only("5-")[- $n = 2$ (power)]

#only("1")[#voiceover("A power function is generally defined as f of x equals a times x to the power of n, where a and n are constants, and x is the variable.")]
#only("2")[#voiceover("In the case of the area of a circle, we have A equals pi r squared.")]
#only("3")[#voiceover("Here, pi acts as our constant a.")]
#only("4")[#voiceover("The radius r is our variable, equivalent to x in the general form.")]
#only("5")[#voiceover("And the power, n, is 2. This makes it a quadratic function, which is a specific type of power function.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Conclusion]
#v(40pt)

#only("1-")[- Area of a circle is a power function 🔍]
#only("2-")[- It's specifically a quadratic function 📈]
#only("3-")[- Understanding this helps in analyzing circular objects 🌍]
#only("4-")[- Power functions are crucial in many areas of math and science! 🧮🔬]

#only("1")[#voiceover("To conclude, the area of a circle is indeed an application of power functions.")]
#only("2")[#voiceover("More specifically, it's a quadratic function, where the area increases as the square of the radius.")]
#only("3")[#voiceover("Understanding this relationship is crucial when analyzing any circular objects or phenomena in the real world.")]
#only("4")[#voiceover("Power functions like this one are fundamental in many areas of mathematics and science. Great job recognizing this important application!")]
]