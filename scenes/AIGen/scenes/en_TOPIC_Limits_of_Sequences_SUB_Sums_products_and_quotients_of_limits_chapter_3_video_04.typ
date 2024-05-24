#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Limits of Quotients]
#v(40pt)
#only("1-")[- For sequences $a_n$ and $b_n$, if $lim_(n -> infinity) a_n = L$ and $lim_(n -> infinity) b_n = M$ (with $M != 0$), then:]
#v(20pt)
#only("2-")[$lim_(n -> infinity) (a_n / b_n) = L / M$]
#only("1")[
#voiceover("When we have two sequences a_n and b_n, and the limit of a_n as n goes to infinity is L, and the limit of b_n as n goes to infinity is M, where M is not equal to zero, then...")
]
#only("2")[
#voiceover("the limit of the quotient of a_n and b_n as n goes to infinity is equal to the quotient of their limits, L over M.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example]
#v(40pt)
#only("1-")[Consider $a_n = 1/n$ and $b_n = 2$.]
#v(20pt)
#only("2-")[$lim_(n -> infinity) a_n = 0$ and $lim_(n -> infinity) b_n = 2$]
#v(20pt)
#only("3-")[$lim_(n -> infinity) (a_n / b_n) = lim_(n -> infinity) (1/n) / 2 = 0 / 2 = 0$]
#only("1")[
#voiceover("Let's look at an example. Consider the sequences a_n equals 1 over n, and b_n equals 2.")
]
#only("2")[
#voiceover("We know that the limit of a_n as n goes to infinity is 0, and the limit of b_n as n goes to infinity is 2.")
]
#only("3")[
#voiceover("So, the limit of the quotient of a_n and b_n as n goes to infinity is equal to the limit of 1 over n divided by 2, which is 0 divided by 2, which equals 0.")
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

n = np.arange(1, 100)
a_n = 1 / n
b_n = [2] * len(n)

plt.figure(figsize=(8, 6))
plt.plot(n, a_n / b_n, 'b-', label='$a_n / b_n$')
plt.axhline(y=0, color='r', linestyle='--', label='Limit')
plt.xlabel('n')
plt.ylabel('Value')
plt.title('Convergence of $a_n / b_n$')
plt.legend()
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
]
#only("1")[
#voiceover("Here's a visualization of the convergence of a_n divided by b_n. As n increases, the quotient gets closer and closer to the limit, which is 0, as shown by the red dashed line.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Limit of quotient = Quotient of limits 🧮]
#v(20pt)
#only("2-")[- Denominator limit must not be zero ❌0️⃣]
#v(20pt)
#only("3-")[- Useful for finding limits of complex sequences 🔍]
#only("1")[
#voiceover("In summary, the limit of the quotient of two sequences is equal to the quotient of their limits.")
]
#only("2")[
#voiceover("However, it's important to note that the limit of the denominator sequence must not be zero.")
]
#only("3")[
#voiceover("This property is very useful when finding the limits of more complex sequences that involve division.")
]
]