#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Divergence to Infinity]
#v(40pt)
#only("1-")[A sequence $a_n$ diverges to infinity if for every $M > 0$, there exists an $N$ such that for all $n \geq N$, $a_n$ is \_\_\_\_\_.]
#v(40pt)
#only("-1")[a) less than $M$]#only("2-")[#text(fill:red)[a) less than $M$]]
#v(10pt)
#only("-2")[b) greater than $M$]#only("3-")[#text(fill:green)[b) greater than $M$]]
#v(10pt)
#only("-3")[c) equal to $M$]#only("4-")[#text(fill:red)[c) equal to $M$]]
#v(10pt)
#only("-4")[d) not equal to $M$]#only("5-")[#text(fill:red)[d) not equal to $M$]]
#only("1")[
#voiceover("That's okay! Let's review the correct solution.")
]
#only("2")[
#voiceover("Option a) is incorrect. If $a_n$ were less than $M$ for all $n \geq N$, the sequence would be bounded above by $M$ and would not diverge to infinity.")
]
#only("3")[
#voiceover("Option b) is correct. If for any arbitrarily large $M$, we can find an $N$ such that all terms $a_n$ with $n \geq N$ are greater than $M$, then the sequence must diverge to infinity.")
]
#only("4")[
#voiceover("Option c) is incorrect. If $a_n$ were equal to $M$ for all $n \geq N$, the sequence would converge to $M$, not diverge to infinity.")
]
#only("5")[
#voiceover("Option d) is incorrect. While a sequence diverging to infinity is certainly not equal to any fixed $M$ for all large $n$, this condition alone is not sufficient to guarantee divergence to infinity.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[Let's understand this through an example. Consider the sequence $a_n = n^2$.]
#v(20pt)
#only("2-")[🎯 Goal: Show that for any $M > 0$, there exists an $N$ such that $n^2 > M$ for all $n >= N$.]
#v(20pt)
#only("3-")[1️⃣ Let $M > 0$ be given.]
#v(20pt)
#only("4-")[2️⃣ Choose $N > "sqrt"(M)$. Then $N^2 > M$.]
#v(20pt)
#only("5-")[3️⃣ For all $n >= N$, we have $n >= "sqrt"(M)$, so $n^2 >= M$.]
#v(20pt)
#only("6-")[∴ $a_n = n^2$ diverges to infinity. ∎]

#only("1")[
#voiceover("Let's understand this concept through an example. Consider the sequence $a_n$ equals $n$ squared.")
]
#only("2")[
#voiceover("Our goal is to show that for any positive real number $M$, there exists a natural number $N$ such that $n$ squared is greater than $M$ for all $n$ greater than or equal to $N$.")
]
#only("3")[
#voiceover("First, let $M$ be any positive real number.")
]
#only("4")[
#voiceover("Now, choose $N$ to be any integer greater than the square root of $M$. Then $N$ squared is greater than $M$.")
]
#only("5")[
#voiceover("For all $n$ greater than or equal to $N$, we have $n$ greater than or equal to the square root of $M$, so $n$ squared is greater than or equal to $M$.")
]
#only("6")[
#voiceover("Therefore, the sequence $a_n$ equals $n$ squared diverges to infinity. This completes the proof.")
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

M_values = [10, 100, 1000]  # Different M values
colors = ['red', 'green', 'blue']  # Colors for each M value

x = np.linspace(0, 50, 100)
y = x**2

plt.figure(figsize=(8, 6))
plt.plot(x, y, color='black', label='$a_n = n^2$')

for M, color in zip(M_values, colors):
    N = int(np.ceil(np.sqrt(M)))
    plt.axhline(y=M, color=color, linestyle='--', label=f'M = {M}')
    plt.axvline(x=N, color=color, linestyle=':', label=f'N = {N}')
    plt.scatter(N, M, color=color, marker='o')

plt.xlabel('n')
plt.ylabel('$a_n$')
plt.title('Divergence of $a_n = n^2$ to Infinity')
plt.legend()
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]

#v(40pt)
#only("1-")[- The black curve represents $a_n = n^2$.]
#v(20pt)
#only("2-")[- The horizontal lines represent different $M$ values.]
#v(20pt)
#only("3-")[- The vertical lines represent the corresponding $N$ values.]
#v(20pt)
#only("4-")[- For each $M$, $a_n > M$ for all $n >= N$.]

#only("1")[
#voiceover("This graph visualizes the divergence of the sequence $a_n$ equals $n$ squared to infinity.")
]
#only("2")[
#voiceover("The horizontal lines represent different values of $M$.")
]
#only("3")[
#voiceover("The vertical lines represent the corresponding $N$ values, chosen as the least integer greater than the square root of $M$.")
]
#only("4")[
#voiceover("As you can see, for each $M$, the sequence $a_n$ is greater than $M$ for all $n$ greater than or equal to the corresponding $N$. This illustrates the divergence to infinity.")
]
]