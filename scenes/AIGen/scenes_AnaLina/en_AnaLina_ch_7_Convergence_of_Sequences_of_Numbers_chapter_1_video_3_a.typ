#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Convergence of $a_n = 1/n$]
#v(40pt)
#only("1-")[Great job! That's the correct answer. Let's see how we can determine the convergence and limit of the sequence $a_n = 1/n$.]
#only("1")[
#voiceover("Great job! That's the correct answer. Let's see how we can determine the convergence and limit of the sequence a sub n equals 1 over n.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Intuition 🧠]
#v(40pt)
#only("1-")[As $n$ increases, $1/n$ becomes smaller and approaches 0.]
#only("1")[
#voiceover("Intuitively, as n increases, 1 over n becomes smaller and approaches 0.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Formal Proof 📜]
#v(40pt)
#only("1-")[Let $ε > 0$ be given.]
#only("2-")[Choose $N = 1/ε$.]
#only("3-")[For all $n ≥ N$, we have:]
#only("4-")[$|a_n - 0| = |1/n - 0| = 1/n ≤ 1/N = ε$]
#only("5-")[Therefore, by the definition of convergence, $a_n = 1/n$ converges to 0.]

#only("1")[
#voiceover("To prove it formally, let epsilon be any positive real number.")
]
#only("2")[
#voiceover("We choose capital N to be 1 over epsilon.")
]
#only("3")[
#voiceover("For all n greater than or equal to capital N, we have:")
]
#only("4")[
#voiceover("The absolute value of a sub n minus 0, which is equal to the absolute value of 1 over n minus 0, which is equal to 1 over n, is less than or equal to 1 over capital N, which is epsilon.")
]
#only("5")[
#voiceover("Therefore, by the definition of convergence, the sequence a sub n equals 1 over n converges to 0.")
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

n = np.arange(1, 20, 1)
a_n = 1/n

plt.figure(figsize=(10,6))
plt.plot(n, a_n, 'bo-', linewidth=2, markersize=8)
plt.axhline(y=0, color='r', linestyle='-', linewidth=2)
plt.title('Convergence of $a_n = 1/n$', fontsize=20)
plt.xlabel('n', fontsize=16)
plt.ylabel('$a_n$', fontsize=16)
plt.xticks(fontsize=14)
plt.yticks(fontsize=14)
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's a visualization of the sequence. As n increases, the terms of the sequence, plotted in blue, approach the red line at y equals 0.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Conclusion 🎉]
#v(40pt)
#only("1-")[The sequence $a_n = 1/n$ converges to 0.]
#only("1")[
#voiceover("In conclusion, the sequence a sub n equals 1 over n converges to 0.")
]
]