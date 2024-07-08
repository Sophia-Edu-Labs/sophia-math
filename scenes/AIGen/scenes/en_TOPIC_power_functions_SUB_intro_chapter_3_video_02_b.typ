#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Effect of Negative Coefficient on Power Functions]
#v(40pt)
What effect does a negative coefficient $a$ have on the graph of the power function $f(x) = a x^b$?
#v(40pt)
#only("-1")[a) Reflects across the y-axis]#only("2-")[#text(fill:red)[a) Reflects across the y-axis]]
#v(10pt)
#only("-2")[b) Reflects across the x-axis]#only("3-")[#text(fill:green)[b) Reflects across the x-axis]]
#v(10pt)
#only("-3")[c) Translates up]#only("4-")[#text(fill:red)[c) Translates up]]
#v(10pt)
#only("-4")[d) Translates down]#only("5-")[#text(fill:red)[d) Translates down]]

#only("1")[#voiceover("Excellent job! You've answered correctly. Let's break down why b) reflects across the x-axis is the right answer, and why the other options are incorrect.")]
#only("2")[#voiceover("Option a) reflects across the y-axis is incorrect. A negative coefficient doesn't cause a reflection across the y-axis.")]
#only("3")[#voiceover("Option b) reflects across the x-axis is correct. A negative coefficient indeed causes the graph to reflect across the x-axis.")]
#only("4")[#voiceover("Option c) translates up is incorrect. A negative coefficient doesn't cause an upward translation of the graph.")]
#only("5")[#voiceover("Option d) translates down is also incorrect. A negative coefficient doesn't cause a downward translation of the graph.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Understanding the Effect]
#v(40pt)
#only("1-")[- Consider $f(x) = x^2$ and $g(x) = -x^2$]
#v(20pt)
#only("2-")[- The negative coefficient flips the graph vertically 🔄]
#v(20pt)
#only("3-")[- This is equivalent to reflecting across the x-axis 🪞]

#only("1")[#voiceover("Let's understand this effect better. Consider two functions: f of x equals x squared and g of x equals negative x squared.")]
#only("2")[#voiceover("The negative coefficient in g of x causes the graph to flip vertically compared to f of x.")]
#only("3")[#voiceover("This vertical flip is equivalent to reflecting the graph across the x-axis.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualization]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-2, 2, 100)
y1 = x**2
y2 = -x**2

plt.figure(figsize=(10, 6))
plt.plot(x, y1, label='f(x) = x²')
plt.plot(x, y2, label='g(x) = -x²')
plt.axhline(y=0, color='k', linestyle='--')
plt.axvline(x=0, color='k', linestyle='--')
plt.legend()
plt.title('Effect of Negative Coefficient')
plt.xlabel('x')
plt.ylabel('y')
plt.grid(True)
plt.show()

```,
width: 360pt),
)
]
]

#only("1")[#voiceover("Here's a visual representation of our example. The blue curve shows f of x equals x squared, while the orange curve shows g of x equals negative x squared.")]
#only("2")[#voiceover("As you can see, the negative coefficient in g of x causes the parabola to open downwards, which is equivalent to reflecting the original function across the x-axis.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Key Points]
#v(40pt)
#only("1-")[- Negative coefficient flips the graph vertically 🔄]
#v(20pt)
#only("2-")[- Equivalent to reflection across x-axis 🪞]
#v(20pt)
#only("3-")[- Shape and scale of graph remain unchanged 📏]
#v(20pt)
#only("4-")[- Works for any power function $f(x) = a x^b$ 🔢]

#only("1")[#voiceover("Let's summarize the key points. First, a negative coefficient flips the graph vertically.")]
#only("2")[#voiceover("This vertical flip is equivalent to reflecting the graph across the x-axis.")]
#only("3")[#voiceover("It's important to note that the shape and scale of the graph remain unchanged.")]
#only("4")[#voiceover("This effect works for any power function of the form f of x equals a times x to the power of b, regardless of the value of b.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Conclusion]
#v(40pt)
#only("1-")[A negative coefficient $a$ in $f(x) = a x^b$:]
#v(20pt)
#only("2-")[- ✅ Reflects the graph across the x-axis]
#v(20pt)
#only("3-")[- ❌ Does not change the shape or scale]
#v(20pt)
#only("4-")[- 🧠 Remember: It's a vertical flip!]

#only("1")[#voiceover("In conclusion, a negative coefficient a in the function f of x equals a times x to the power of b has a specific effect.")]
#only("2")[#voiceover("It reflects the graph across the x-axis.")]
#only("3")[#voiceover("However, it does not change the shape or scale of the graph.")]
#only("4")[#voiceover("A helpful way to remember this is to think of it as a vertical flip of the graph. Great job understanding this concept!")]
]