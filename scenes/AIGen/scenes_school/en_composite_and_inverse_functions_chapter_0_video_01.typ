#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Composing Functions]
#v(40pt)
#only("1-")[- Combining two functions 🎭]
#v(20pt)
#only("2-")[- Output of one becomes input of another 🔀]
#v(20pt)
#only("3-")[- Denoted as $(f∘g)(x) = f(g(x))$ 📜]
#only("1")[
#voiceover("Composing functions is all about combining two functions in a specific way.")
]
#only("2")[
#voiceover("The key idea is that the output of one function becomes the input of another function.")
]
#only("3")[
#voiceover("We denote the composition of functions f and g as f composed with g of x, which equals f of g of x.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example]
#v(40pt)
#only("1-")[Consider $f(x) = x^2$ and $g(x) = x + 1$]
#v(20pt)
#only("2-")[$(f∘g)(x) = f(g(x)) = f(x + 1) = (x + 1)^2$]
#v(20pt)
#only("3-")[$(g∘f)(x) = g(f(x)) = g(x^2) = x^2 + 1$]
#only("1")[
#voiceover("Let's look at an example. Consider the functions f of x equals x squared and g of x equals x plus 1.")
]
#only("2")[
#voiceover("To find f composed with g of x, we replace x in the function f with g of x. This gives us f of x plus 1, which equals x plus 1 squared.")
]
#only("3")[
#voiceover("On the other hand, g composed with f of x is found by replacing x in the function g with f of x. This results in x squared plus 1.")
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

x = np.linspace(-2, 2, 100)

def f(x):
    return x**2

def g(x):
    return x + 1

plt.figure(figsize=(8, 6))
plt.plot(x, f(g(x)), label='$f ∘ g$')
plt.plot(x, g(f(x)), label='$g ∘ f$')
plt.legend(prop={'size': 14})
plt.grid(True)
plt.xlabel('x')
plt.ylabel('y')
plt.title('Composition of Functions')
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's a visualization of the composed functions. The blue curve represents f composed with g, while the orange curve represents g composed with f.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(40pt)
#only("1-")[- Composition combines two functions 🎭]
#v(20pt)
#only("2-")[- Output of one becomes input of another 🔀]
#v(20pt)
#only("3-")[- Order matters: $(f∘g)(x) ≠ (g∘f)(x)$ ⚠]
#only("1")[
#voiceover("To recap, composition combines two functions where the output of one function becomes the input of another.")
]
#only("2")[
#voiceover("We saw this in the example where we composed f and g in both orders.")
]
#only("3")[
#voiceover("It's important to note that the order of composition matters. f composed with g of x is not necessarily equal to g composed with f of x, as we saw in the example and visualization.")
]
]