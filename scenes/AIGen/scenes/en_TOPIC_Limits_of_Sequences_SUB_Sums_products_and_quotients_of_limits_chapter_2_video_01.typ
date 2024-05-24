#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Limits of Products]
#v(40pt)
#only("1-")[- Consider sequences $a_n$ and $b_n$]
#v(20pt)
#only("2-")[- $lim_(n->infinity) a_n = L$ and $lim_(n->infinity) b_n = M$]
#v(20pt)
#only("3-")[- Then, $lim_(n->infinity) (a_n b_n) = L M$]
#only("1")[
#voiceover("Let's discuss the limit of the product of two sequences.")
]
#only("2")[
#voiceover("Suppose we have two sequences, a sub n and b sub n, and their limits as n approaches infinity are L and M, respectively.")
]
#only("3")[
#voiceover("Then, the limit of the product of these sequences, a sub n times b sub n, as n approaches infinity, is equal to the product of their individual limits, L times M.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example]
#v(40pt)
#only("1-")[- Let $a_n = 1/n$ and $b_n = 2n$]
#v(20pt)
#only("2-")[- $lim_(n->infinity) a_n = 0$ and $lim_(n->infinity) b_n = infinity$]
#v(20pt)
#only("3-")[- $lim_(n->infinity) (a_n b_n) = lim_(n->infinity) (1/n 2n) = lim_(n->infinity) 2 = 2$]
#only("1")[
#voiceover("Let's look at an example. Consider the sequences a sub n equals 1 over n and b sub n equals 2n.")
]
#only("2")[
#voiceover("The limit of a sub n as n approaches infinity is 0, and the limit of b sub n as n approaches infinity is infinity.")
]
#only("3")[
#voiceover("Now, let's find the limit of their product. The limit of a sub n times b sub n as n approaches infinity is the same as the limit of 1 over n times 2n, which simplifies to the limit of 2 as n approaches infinity. This limit is simply 2.")
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
an = 1/n
bn = 2*n
product = an * bn

plt.figure(figsize=(8, 6))
plt.plot(n, an, label='$a_n = 1/n$')
plt.plot(n, bn, label='$b_n = 2n$')
plt.plot(n, product, label='$a_n b_n$')
plt.legend()
plt.xlabel('n')
plt.ylabel('Value')
plt.title('Convergence of $a_n$, $b_n$, and $a_n b_n$')
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("This graph shows the convergence of the sequences a sub n, b sub n, and their product a sub n times b sub n. As n increases, a sub n approaches 0, b sub n grows without bound, and their product converges to 2.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- $lim_(n->infinity) (a_n b_n) = lim_(n->infinity) a_n lim_(n->infinity) b_n$]
#v(20pt)
#only("2-")[- Limit of product = Product of limits 🎯]
#only("1")[
#voiceover("In summary, the limit of the product of two sequences is equal to the product of their individual limits.")
]
#only("2")[
#voiceover("Remember, the limit of a product is the product of the limits. This rule is handy when working with sequences and their limits.")
]
]