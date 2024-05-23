#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Convergence of Sequences 📈]
#v(40pt)
#only("1-")[
- A sequence $(a_n)$ converges if its terms approach a specific value $L$ as $n$ goes to $infinity$
]
#only("1")[
#voiceover("A sequence a_n converges if its terms approach a specific value L as n goes to infinity.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example: $a_n = 1/n$ ➗]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

n = np.arange(1, 21)
a_n = 1 / n

plt.figure(figsize=(8, 6))
plt.plot(n, a_n, 'bo-', label='$a_n = 1/n$')
plt.axhline(0, color='red', linestyle='--', label='$L = 0$')
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
]
#only("1")[
#voiceover("For example, consider the sequence a_n equals 1 over n. As n increases, the terms of the sequence get closer and closer to 0.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Limit of a Sequence 🎯]
#v(40pt)
#only("1-")[
- The value $L$ that a convergent sequence approaches is called its limit
]
#only("2-")[
- For $a_n = 1/n$, the limit is $L = 0$
]
#only("1")[
#voiceover("The value L that a convergent sequence approaches is called its limit.")
]
#only("2")[
#voiceover("In the case of a_n equals 1 over n, the limit is L equals 0.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Notation 📝]
#v(40pt)
#only("1-")[
- We write $lim_(n->infinity) a_n = L$ to denote that the limit of $(a_n)$ is $L$
]
#only("2-")[
- Example: $lim_(n->infinity) 1/n = 0$
]
#only("1")[
#voiceover("We write the limit as n goes to infinity of a_n equals L to denote that the limit of the sequence a_n is L.")
]
#only("2")[
#voiceover("For example, the limit as n goes to infinity of 1 over n equals 0.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary 🎬]
#v(40pt)
#only("1-")[
- Convergence: terms approach a specific value as $n -> infinity$ 📈
]
#only("2-")[
- Limit: the value a convergent sequence approaches 🎯
]
#only("3-")[
- Notation: $lim_(n->infinity) a_n = L$ 📝
]
#only("1")[
#voiceover("In summary, a sequence converges if its terms approach a specific value as n goes to infinity.")
]
#only("2")[
#voiceover("This value is called the limit of the sequence.")
]
#only("3")[
#voiceover("And we denote this using the limit notation: the limit as n goes to infinity of a_n equals L.")
]
]