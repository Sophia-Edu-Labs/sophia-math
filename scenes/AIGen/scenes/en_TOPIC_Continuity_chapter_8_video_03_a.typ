#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Great job! That's the correct answer. Let's go through the solution step by step.")
]

#text(size: 30pt, weight: "bold")[Right-hand limit]

#v(40pt)

#only("2-")[$ f(x) = 1/x $]
// The function f(x) is shown from slide 2 onward

#only("2")[
#voiceover("We're considering the function f of x equals one over x.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Approach]

#v(40pt)

#only("1-")[- Evaluate limit as $x$ approaches 0 from the right (0+) 🔍]
// The approach of evaluating the limit from the right is shown from slide 1 onward

#only("1")[
#voiceover("To find the right-hand limit, we need to evaluate the limit as x approaches zero from the right, denoted as zero plus.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Solution steps]

#v(40pt)

#only("1-")[$ lim_(x->0^+) 1/x $]

#v(10pt)

#only("2-")[#align(center)[#text(fill:aqua)[⇓ Substitute values close to 0 from the right]]]

#v(10pt)

#only("3-")[$ lim_(x->0^+) 1/x = 1/0.1 = 10 $]

#v(10pt)

#only("4-")[$ lim_(x->0^+) 1/x = 1/0.01 = 100 $]

#v(10pt)

#only("5-")[$ lim_(x->0^+) 1/x = 1/0.001 = 1000 $]

#v(10pt)

#only("6-")[#align(center)[#text(fill:aqua)[⇓ As $x$ gets closer to 0 from the right, $1/x$ grows without bound]]]

#v(10pt)

#only("7-")[$ lim_(x->0^+) 1/x = infinity $]

#only("1")[#voiceover("We start by writing the limit expression, the limit of one over x as x approaches zero from the right.")]

#only("2")[#voiceover("To evaluate this, let's substitute values of x that are close to zero but greater than zero, approaching from the right side.")]

#only("3")[#voiceover("If we substitute x equals zero point one, we get one over zero point one, which equals ten.")]

#only("4")[#voiceover("If we get closer to zero, say x equals zero point zero one, we get one over zero point zero one, which equals one hundred.")]

#only("5")[#voiceover("Getting even closer, with x equals zero point zero zero one, we get one over zero point zero zero one, which equals one thousand.")]

#only("6")[#voiceover("We observe that as x gets closer and closer to zero from the right, one over x grows larger and larger without bound.")]

#only("7")[#voiceover("Therefore, the right-hand limit of one over x as x approaches zero is infinity.")]
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
y = 1/x

fig, ax = plt.subplots(figsize=(8, 6))

ax.plot(x, y, color='blue', linewidth=2, label='f(x) = 1/x')
ax.axvline(x=0, color='black', linewidth=1, linestyle='--')
ax.axhline(y=0, color='black', linewidth=1, linestyle='--')

ax.set_xlim(-2, 2)
ax.set_ylim(-10, 10)

ax.set_xlabel('x', fontsize=14)
ax.set_ylabel('f(x)', fontsize=14)

ax.grid(True, linestyle='--', linewidth=0.5)

ax.legend(fontsize=12)

ax.annotate('Right-hand limit: $infinity$', xy=(0.1, 8), xytext=(0.5, 9), 
            arrowprops=dict(facecolor='red', shrink=0.05), fontsize=14, color='red')

plt.title('Graph of f(x) = 1/x', fontsize=16)

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
// The graph of the function 1/x is visualized using matplotlib, with the right-hand limit behavior annotated in red.

#only("1")[
#voiceover("Here's a visualization of the function one over x. Notice how the graph approaches infinity as x approaches zero from the right, confirming our calculated right-hand limit.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]

#v(40pt)

#only("1-")[- Right-hand limit: limit as $x$ approaches from the right (0+) 👉]

#v(20pt)

#only("2-")[- For $f(x) = 1/x$, as $x->0^+$, $f(x)$ grows without bound 📈]

#v(20pt)

#only("3-")[- $lim_(x->0^+) 1/x = infinity$ ♾]

#only("1")[
#voiceover("In summary, the right-hand limit considers the limit as x approaches a value from the right side.")
]

#only("2")[
#voiceover("For the function one over x, as x approaches zero from the right, the function grows without bound.")
]

#only("3")[
#voiceover("Therefore, the right-hand limit of one over x as x approaches zero is infinity.")
]
]