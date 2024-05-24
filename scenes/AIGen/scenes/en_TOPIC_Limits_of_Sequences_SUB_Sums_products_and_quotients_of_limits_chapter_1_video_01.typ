#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Limit of Sum of Sequences 🧮]
#v(40pt)
#only("1-")[- Consider sequences $a_n$ and $b_n$]
#v(20pt)
#only("2-")[- $lim_(n -> infinity) a_n = L$ and $lim_(n -> infinity) b_n = M$]
#v(20pt)
#only("3-")[- Then, $lim_(n -> infinity) (a_n + b_n) = L + M$]
#v(40pt)
#only("4-")[#text(size: 30pt, weight: "bold")[Example 📊]]
#v(40pt)
#only("5-")[- $a_n = 1/n$ and $b_n = 2/n$]
#v(20pt)
#only("6-")[- $lim_(n -> infinity) a_n = 0$ and $lim_(n -> infinity) b_n = 0$]
#v(20pt)
#only("7-")[- $lim_(n -> infinity) (a_n + b_n) = 0 + 0 = 0$]
#only("1")[
#voiceover("Let's consider two sequences, a_n and b_n.")
]
#only("2")[
#voiceover("Suppose the limit of a_n as n approaches infinity is L, and the limit of b_n as n approaches infinity is M.")
]
#only("3")[
#voiceover("Then, the limit of the sum of these sequences, a_n plus b_n, as n approaches infinity, is equal to the sum of their individual limits, L plus M.")
]
#only("4")[
#voiceover("Let's look at an example to illustrate this.")
]
#only("5")[
#voiceover("Consider the sequences a_n equals 1 over n, and b_n equals 2 over n.")
]
#only("6")[
#voiceover("We know that the limit of 1 over n as n approaches infinity is 0, and similarly, the limit of 2 over n as n approaches infinity is also 0.")
]
#only("7")[
#voiceover("Therefore, the limit of the sum of these sequences, 1 over n plus 2 over n, as n approaches infinity, is equal to 0 plus 0, which is 0.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualization 📈]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

n = np.arange(1, 100)
a_n = 1/n
b_n = 2/n
sum_n = a_n + b_n

plt.figure(figsize=(8, 6))
plt.plot(n, a_n, label='$a_n$')
plt.plot(n, b_n, label='$b_n$')
plt.plot(n, sum_n, label='$a_n + b_n$')
plt.axhline(y=0, color='r', linestyle='--', label='Limit')
plt.xlabel('n')
plt.ylabel('Sequence Value')
plt.title('Convergence of Sequences and their Sum')
plt.legend()
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("This graph shows the sequences a_n, b_n, and their sum a_n plus b_n, as n increases. As you can see, all three sequences converge to 0, which is their limit as n approaches infinity.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary 🎯]
#v(40pt)
#only("1-")[- Limit of sum of sequences = Sum of limits of sequences]
#v(20pt)
#only("2-")[- $lim_(n -> infinity) (a_n + b_n) = lim_(n -> infinity) a_n + lim_(n -> infinity) b_n$]
#v(20pt)
#only("3-")[- Useful for analyzing convergence of sequence sums]
#only("1")[
#voiceover("In summary, the limit of the sum of two sequences is equal to the sum of their individual limits.")
]
#only("2")[
#voiceover("Mathematically, this can be expressed as the limit of a_n plus b_n, as n approaches infinity, equals the limit of a_n, as n approaches infinity, plus the limit of b_n, as n approaches infinity.")
]
#only("3")[
#voiceover("This property is very useful when analyzing the convergence of sums of sequences.")
]
]