#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Power Functions as $x → ∞$]
#v(40pt)
#only("1-")[- Consider $f(x) = x^n$, where $n ∈ NN$]
#v(20pt)
#only("2-")[- Examples: $f(x) = x^2$, $f(x) = x^3$, $f(x) = x^4$]
#v(20pt)
#only("3-")[- As $x$ gets larger, $f(x)$ gets larger too 📈]
#only("1")[
#voiceover("Let's look at the behavior of power functions of the form f of x equals x to the power of n, where n is a natural number, as x approaches infinity.")
]
#only("2")[
#voiceover("Some examples of such functions are f of x equals x squared, f of x equals x cubed, and f of x equals x to the fourth power.")
]
#only("3")[
#voiceover("As x gets larger and larger, the value of f of x also gets larger and larger.")
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

plt.figure(figsize=(8, 6))

for n in range(1, 5):
    plt.plot(x, x**n, label=f'$x^{n}$')

plt.xlabel('$x$')
plt.ylabel('$f(x)$')
plt.title('Power Functions as $x → ∞$')
plt.legend()
plt.grid(True)

plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's a visualization of some power functions. As you can see, as x gets larger, all the functions grow rapidly and approach infinity.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Formal Definition]
#v(40pt)
#only("1-")[For any $n ∈ NN$, as $x → ∞$, $f(x) = x^n → ∞$]
#v(20pt)
#only("2-")[Mathematically: $lim_(x→∞) x^n = ∞$]
#only("1")[
#voiceover("Formally, we can say that for any natural number n, as x approaches infinity, the function f of x equals x to the power of n also approaches infinity.")
]
#only("2")[
#voiceover("Mathematically, we write this as the limit of x to the power of n, as x approaches infinity, equals infinity.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Intuition 💡]
#v(40pt)
#only("1-")[- Multiplying large numbers → even larger numbers]
#v(20pt)
#only("2-")[- Example: $10^2 = 100$, $10^3 = 1000$, $10^4 = 10000$]
#only("1")[
#voiceover("Intuitively, this makes sense. When we multiply large numbers, we get even larger numbers.")
]
#only("2")[
#voiceover("For instance, 10 squared is 100, 10 cubed is 1000, and 10 to the fourth power is 10,000.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Power functions: $f(x) = x^n$, $n ∈ NN$]
#v(20pt)
#only("2-")[- As $x → ∞$, $f(x) → ∞$]
#v(20pt)
#only("3-")[- Multiplying large numbers yields even larger numbers]
#only("1")[
#voiceover("In summary, power functions are functions of the form f of x equals x to the power of n, where n is a natural number.")
]
#only("2")[
#voiceover("As x approaches infinity, the value of f of x also approaches infinity.")
]
#only("3")[
#voiceover("This is because multiplying large numbers together yields even larger numbers.")
]
]