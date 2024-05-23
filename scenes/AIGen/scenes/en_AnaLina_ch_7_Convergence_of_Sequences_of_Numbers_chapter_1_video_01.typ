#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Sequence Convergence]
#v(40pt)
#only("1-")[- Terms approach a specific value as $n$ goes to $infinity$ ♾]
#v(20pt)
#only("2-")[- Example: $a_n = 1/n$ → 0 as $n$ → $infinity$]
#only("1")[
#voiceover("A sequence converges if its terms approach a specific value as n, the index of the term, goes to infinity.")
]
#only("2")[
#voiceover("For example, consider the sequence a_n equals 1 over n. As n gets larger and larger, the terms of this sequence get closer and closer to 0.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visual Representation]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

n = np.arange(1, 11)
a_n = 1 / n

plt.figure(figsize=(6, 4))
plt.plot(n, a_n, 'bo-', label='$a_n = 1/n$')
plt.axhline(0, color='r', linestyle='--', label='Limit: 0')
plt.xlabel('$n$')
plt.ylabel('$a_n$')
plt.title('Convergence of $a_n = 1/n$')
plt.legend()
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's a visual representation of the sequence a_n equals 1 over n. The blue dots represent the terms of the sequence, and the red dashed line represents the limit, which is 0. As you can see, as n increases, the terms get closer and closer to the limit.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Formal Definition]
#v(40pt)
#only("1-")[- $a_n$ converges to $L$ if:]
#v(20pt)
#only("2-")[  For every $epsilon > 0$, there exists an $N$ such that]
#v(20pt)
#only("3-")[  for all $n >= N$, $|a_n - L| < epsilon$ 📏]
#only("1")[
#voiceover("Now, let's look at the formal definition of convergence.")
]
#only("2")[
#voiceover("A sequence a_n converges to a limit L if for every epsilon greater than 0, there exists a natural number N such that...")
]
#only("3")[
#voiceover("for all n greater than or equal to N, the absolute value of a_n minus L is less than epsilon. In other words, the terms get arbitrarily close to L as n increases.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Sequence convergence: terms approach a specific value ⛳]
#v(20pt)
#only("2-")[- Example: $a_n = 1/n$ converges to 0 as $n$ → $infinity$]
#v(20pt)
#only("3-")[- Formal definition: $|a_n - L| < epsilon$ for large $n$ 📏]
#only("1")[
#voiceover("To summarize, a sequence converges if its terms approach a specific value as n goes to infinity.")
]
#only("2")[
#voiceover("We saw the example of a_n equals 1 over n, which converges to 0 as n approaches infinity.")
]
#only("3")[
#voiceover("The formal definition states that for any epsilon greater than 0, the absolute difference between the terms and the limit becomes less than epsilon for sufficiently large n.")
]
]