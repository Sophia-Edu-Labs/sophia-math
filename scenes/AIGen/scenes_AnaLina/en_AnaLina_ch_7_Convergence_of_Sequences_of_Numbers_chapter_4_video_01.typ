#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Divergence to ∞]
#v(40pt)
#only("1-")[- Sequence $a_n$ diverges to ∞ if:]
#v(20pt)
#only("2-")[  - Terms increase without bound 📈]
#v(20pt)
#only("3-")[  - As $n$ goes to ∞]
#only("1")[
#voiceover("A sequence a_n diverges to infinity if:")
]
#only("2")[
#voiceover("Its terms increase without bound,")
]
#only("3")[
#voiceover("as n goes to infinity.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example]
#v(40pt)
#only("1-")[Consider the sequence $a_n = n^2$]
#v(20pt)
#only("2-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt
import numpy as np

n = np.arange(1, 11)  # First 10 terms
a_n = n**2

plt.figure(figsize=(6, 4))
plt.plot(n, a_n, 'bo-', label='$a_n = n^2$')
plt.xlabel('$n$')
plt.ylabel('$a_n$')
plt.title('Sequence $a_n = n^2$')
plt.legend()
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Consider the sequence a_n equals n squared.")
]
#only("2")[
#voiceover("As n increases, the terms of the sequence grow larger and larger without bound.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Formal Definition]
#v(40pt)
#only("1-")[A sequence $a_n$ diverges to ∞ if:]
#v(20pt)
#only("2-")[For every $M > 0$, there exists an $N$ such that]
#v(20pt)
#only("3-")[for all $n >= N$, $a_n > M$.]
#only("1")[
#voiceover("Formally, a sequence a_n diverges to infinity if:")
]
#only("2")[
#voiceover("For every real number M greater than 0, there exists a natural number N such that")
]
#only("3")[
#voiceover("for all n greater than or equal to N, a_n is greater than M.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Divergence to ∞: Terms increase without bound 📈]
#v(20pt)
#only("2-")[- Example: $a_n = n^2$ diverges to ∞]
#v(20pt)
#only("3-")[- Formal definition: For every $M > 0$, there exists an $N$ such that for all $n >= N$, $a_n > M$]
#only("1")[
#voiceover("In summary, a sequence diverges to infinity if its terms increase without bound as n goes to infinity.")
]
#only("2")[
#voiceover("An example is the sequence a_n equals n squared, which diverges to infinity.")
]
#only("3")[
#voiceover("The formal definition states that for every real number M greater than 0, there exists a natural number N such that for all n greater than or equal to N, a_n is greater than M.")
]
]