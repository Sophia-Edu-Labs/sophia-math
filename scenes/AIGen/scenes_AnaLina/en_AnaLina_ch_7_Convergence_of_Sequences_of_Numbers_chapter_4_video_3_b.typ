#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Divergence to Infinity]
#v(40pt)
#only("1-")[#text()[Determine if the sequence $a_n = n^2$ diverges to infinity.]]
#v(20pt)
#only("2-")[#text(fill:green)[Great job! That's the correct answer. 🙌]]
#v(20pt)
#only("3-")[Solution:
1. Consider the definition of divergence to infinity:
   A sequence $a_n$ diverges to infinity if for every $M > 0$, there exists an $N$ such that for all $n >= N$, $a_n > M$.]
#only("4-")[2. Let $M > 0$ be arbitrary. We need to find an $N$ such that for all $n >= N$, $n^2 > M$.]

#only("1")[
#voiceover("Let's review the correct solution to see if the sequence a_n equals n squared diverges to infinity.")
]
#only("2")[
#voiceover("Great job! That's the correct answer. The sequence does indeed diverge to infinity. Let's see why.")
]
#only("3")[
#voiceover("First, let's consider the definition of divergence to infinity. A sequence a_n diverges to infinity if for every M greater than 0, there exists an N such that for all n greater than or equal to N, a_n is greater than M.")
]
#only("4")[
#voiceover("Let M be any arbitrary number greater than 0. We need to find an N such that for all n greater than or equal to N, n squared is greater than M.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Divergence to Infinity (cont.)]
#v(40pt)
#only("1-")[Solution (cont.):
1. Solving for $n$, we get: $n > sqrt(M)$]
#only("2-")[2. Choose $N = ceil(sqrt(M))$. Then for all $n >= N$, we have $n >= sqrt(M)$, which implies $n^2 >= M$.]
#only("3-")[3. Thus, for every $M > 0$, there exists an $N$ (namely, $ceil(sqrt(M))$) such that for all $n >= N$, $a_n = n^2 > M$.]
#only("4-")[Therefore, the sequence $a_n = n^2$ diverges to infinity. ♾]

#only("1")[
#voiceover("Solving this inequality for n, we get that n must be greater than the square root of M.")
]
#only("2")[
#voiceover("Now, choose N to be the ceiling of the square root of M. Then for all n greater than or equal to N, we have n greater than or equal to the square root of M, which implies that n squared is greater than or equal to M.")
]
#only("3")[
#voiceover("Thus, for every M greater than 0, there exists an N (namely, the ceiling of the square root of M) such that for all n greater than or equal to N, a_n equals n squared is greater than M.")
]
#only("4")[
#voiceover("Therefore, the sequence a_n equals n squared diverges to infinity.")
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

# Generate x values (n)
n = np.arange(1, 11)

# Calculate y values (a_n)
a_n = n**2

# Create the plot
plt.figure(figsize=(8, 6))
plt.plot(n, a_n, 'bo-', linewidth=2, markersize=8)
plt.xlabel('n', fontsize=14)
plt.ylabel('a_n', fontsize=14)
plt.title('Sequence a_n = n^2', fontsize=16)
plt.grid(True)

# Add annotations
for i in range(len(n)):
    plt.annotate(f'({n[i]}, {a_n[i]})', xy=(n[i], a_n[i]), xytext=(5, 5), 
                 textcoords='offset points', fontsize=12)

plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's a visualization of the sequence a_n equals n squared for the first 10 terms. As you can see, the values of a_n increase rapidly as n increases, showing the divergence to infinity.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(40pt)
#only("1-")[- The sequence $a_n = n^2$ diverges to infinity. 📈]
#v(20pt)
#only("2-")[- For any arbitrarily large $M$, we can always find an $N$ such that for all $n \geq N$, $a_n > M$. 🔍]
#v(20pt)
#only("3-")[- This is because $n^2$ grows without bound as $n$ increases. ⏫]
#only("1")[
#voiceover("The key takeaway here is that the sequence a_n equals n squared diverges to infinity.")
]
#only("2")[
#voiceover("This is because for any arbitrarily large M, we can always find an N such that for all n greater than or equal to N, a_n is greater than M.")
]
#only("3")[
#voiceover("The reason for this is that n squared grows without bound as n increases.")
]
]