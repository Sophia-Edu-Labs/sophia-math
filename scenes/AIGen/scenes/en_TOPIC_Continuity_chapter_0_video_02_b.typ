#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Limit of a Function]
#v(40pt)
What does the limit of a function describe?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is incorrect. 
#only("-1")[a) The exact value of the function]#only("2-")[#text(fill:red)[a) The exact value of the function]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) The behavior of the function as the input approaches a certain value]#only("3-")[#text(fill:green)[b) The behavior of the function as the input approaches a certain value]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is incorrect.
#only("-3")[c) The derivative of the function]#only("4-")[#text(fill:red)[c) The derivative of the function]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is incorrect.
#only("-4")[d) The integral of the function]#only("5-")[#text(fill:red)[d) The integral of the function]]
#only("1")[#voiceover("Great job! You selected the correct answer.")]
#only("2")[#voiceover("Option a) is incorrect because the limit does not necessarily equal the exact value of the function at that point.")]
#only("3")[#voiceover("Option b) is the correct answer. The limit indeed describes the behavior of the function as the input approaches a certain value.")]
#only("4")[#voiceover("Option c) is incorrect. The derivative is related to the rate of change of the function, not the limit.")]
#only("5")[#voiceover("Option d) is also incorrect. The integral is related to the area under the function's curve, not the limit.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[Step 1: Understand the concept of a limit 🧠]
#v(20pt)
#only("2-")[- A limit is the value that a function approaches as the input gets closer to a certain point]
#v(20pt)
#only("3-")[Step 2: Distinguish limit from other concepts ≠]
#v(20pt)
#only("4-")[- Function value: the exact output at a specific input]
#v(20pt)
#only("5-")[- Derivative: the rate of change of the function]
#v(20pt)
#only("6-")[- Integral: the area under the function's curve]

#only("1")[#voiceover("Let's go through the solution step by step.")]
#only("2")[#voiceover("First, it's important to understand that a limit is the value that a function approaches as the input gets closer to a certain point.")]
#only("3")[#voiceover("Next, we need to distinguish the concept of a limit from other related concepts.")]
#only("4")[#voiceover("The function value is the exact output at a specific input, which is different from the limit.")]
#only("5")[#voiceover("The derivative is the rate of change of the function, also a distinct concept.")]
#only("6")[#voiceover("And the integral is the area under the function's curve, again different from the limit.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[Step 3: Visualize the limit 📈]
#v(20pt)
#only("2-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt
import numpy as np

def f(x):
    return (x**2 - 1) / (x - 1)

x = np.linspace(-5, 5, 1000)
y = f(x)

plt.figure(figsize=(8, 6))
plt.plot(x, y, label='f(x)')
plt.scatter([1], [2], color='red', label='Limit as x→1')
plt.annotate('Hole at x=1', xy=(1, 2), xytext=(1.5, 3), 
             arrowprops=dict(facecolor='black', shrink=0.05))
plt.grid(True)
plt.legend()
plt.xlim(-5, 5)
plt.ylim(-5, 5)
plt.show()
```,
width: 360pt),
)
]
]
#v(20pt)
#only("3-")[- As $x$ approaches 1, $f(x)$ approaches 2, even though $f(1)$ is undefined]
#v(20pt)
#only("4-")[Therefore, the limit describes the #text(weight: "bold")[behavior] of the function near a point, not the exact value at that point ✅]

#only("1")[#voiceover("It can be helpful to visualize the limit.")]
#only("2")[#voiceover("In this graph, we see a function f of x that has a hole at x equals 1.")]
#only("3")[#voiceover("As x approaches 1, f of x approaches 2, even though f of 1 is undefined due to the hole.")]
#only("4")[#voiceover("This illustrates that the limit describes the behavior of the function near a point, not necessarily the exact value at that point.")]
]
]