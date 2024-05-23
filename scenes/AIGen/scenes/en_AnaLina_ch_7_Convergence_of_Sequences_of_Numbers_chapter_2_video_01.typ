#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Examples of Convergent Sequences]
#v(40pt)
#only("1-")[- $a_n = 1/n$]
#v(20pt)
#only("2-")[- $b_n = 2n/(n+1)$]
#only("1")[
#voiceover("Let's look at two examples of convergent sequences. The first one is a_n equals 1 over n.")
]
#only("2")[
#voiceover("The second example is b_n equals 2n over n plus 1.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example 1: $a_n = 1/n$]
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

plt.figure(figsize=(8, 6))
plt.plot(n, a_n, 'bo-', label='$a_n = 1/n$')
plt.axhline(y=0, color='r', linestyle='-', label='Limit: 0')
plt.xlabel('n')
plt.ylabel('a_n')
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
#voiceover("Let's plot the sequence a_n equals 1 over n. As n increases, the terms of the sequence get closer and closer to 0. In fact, the limit of this sequence as n goes to infinity is 0.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example 2: $b_n = 2n/(n+1)$]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

n = np.arange(1, 11)
b_n = 2*n / (n+1)

plt.figure(figsize=(8, 6))
plt.plot(n, b_n, 'bo-', label='$b_n = 2n/(n+1)$')
plt.axhline(y=2, color='r', linestyle='-', label='Limit: 2')
plt.xlabel('n')
plt.ylabel('b_n')
plt.title('Convergence of $b_n = 2n/(n+1)$')
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
#voiceover("Now let's plot the sequence b_n equals 2n over n plus 1. As n increases, the terms of this sequence approach 2. The limit of b_n as n goes to infinity is indeed 2.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Convergent sequences approach a specific value as $n → ∞$ 📈]
#v(20pt)
#only("2-")[- Examples: $a_n = 1/n$ converges to 0, $b_n = 2n/(n+1)$ converges to 2 ✅]
#only("1")[
#voiceover("In summary, convergent sequences are those whose terms approach a specific value as n goes to infinity.")
]
#only("2")[
#voiceover("We've seen two examples: a_n equals 1 over n converges to 0, and b_n equals 2n over n plus 1 converges to 2. Understanding these examples helps build intuition for the concept of convergence.")
]
]