#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Which Sequence Converges?]
#v(40pt)
#only("-1")[a) $a_n = n$]#only("2-")[#text(fill:red)[a) $a_n = n$]]
#v(10pt)
#only("-2")[b) $b_n = 1/n$]#only("3-")[#text(fill:green)[b) $b_n = 1/n$]]
#v(10pt)
#only("-3")[c) $c_n = (-1)^n$]#only("4-")[#text(fill:red)[c) $c_n = (-1)^n$]]
#v(10pt)
#only("-4")[d) $d_n = n^2$]#only("5-")[#text(fill:red)[d) $d_n = n^2$]]
#v(40pt)
#only("1")[#voiceover("Not quite, but don't worry! Let's go through each option and see the correct solution.")]
#only("2")[#voiceover("a) The sequence $a_n = n$ does not converge. As $n$ increases, the terms of the sequence will grow without bound, approaching infinity.")]
#only("3")[#voiceover("b) The sequence $b_n = 1/n$ does converge. As $n$ increases, the terms of the sequence will get closer and closer to 0. In fact, the limit of this sequence as $n$ goes to infinity is 0.")]
#only("4")[#voiceover("c) The sequence $c_n = (-1)^n$ does not converge. The terms of this sequence will alternate between 1 and -1 indefinitely, never settling on a single value.")]
#only("5")[#voiceover("d) The sequence $d_n = n^2$ does not converge. Similar to sequence a), as $n$ increases, the terms of this sequence will grow without bound, approaching infinity.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualizing Convergence 📈]
#v(40pt)
#only("1-")[Let's visualize the sequences to better understand their behavior:]
#v(20pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

n = np.arange(1, 11)

plt.figure(figsize=(8, 6))

plt.subplot(2, 2, 1)
plt.plot(n, n, 'ro-')
plt.title('a) $a_n = n$')
plt.grid(True)

plt.subplot(2, 2, 2)
plt.plot(n, 1/n, 'bo-')
plt.title('b) $b_n = 1/n$')
plt.grid(True)

plt.subplot(2, 2, 3)
plt.plot(n, (-1)**n, 'go-')
plt.title('c) $c_n = (-1)^n$')
plt.grid(True)

plt.subplot(2, 2, 4)
plt.plot(n, n**2, 'yo-')
plt.title('d) $d_n = n^2$')
plt.grid(True)

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[#voiceover("In these plots, we can see the behavior of each sequence as $n$ increases.")]
#only("2")[#voiceover("For sequence a), we see a steady linear increase, indicating divergence to infinity.")]
#only("3")[#voiceover("For sequence b), we see the terms getting closer and closer to 0, indicating convergence to 0.")]
#only("4")[#voiceover("For sequence c), we see the terms alternating between 1 and -1, indicating no convergence.")]
#only("5")[#voiceover("And for sequence d), we see a rapid increase, indicating divergence to infinity.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Formal Definition of Convergence 🎓]
#v(40pt)
#only("1-")[Recall the formal definition of convergence:]
#v(20pt)
#only("2-")[A sequence $a_n$ converges to a limit $L$ if:]
#v(20pt)
#only("3-")[$∀ε > 0$, $∃N ∈ ℕ$ such that $∀n ≥ N$, $|a_n - L| < ε$]
#v(20pt)
#only("4-")[In other words, we can make the terms of the sequence as close to $L$ as we want by making $n$ sufficiently large.]
#only("1")[#voiceover("Now let's recall the formal definition of convergence.")]
#only("2")[#voiceover("A sequence $a_n$ is said to converge to a limit $L$ if...")]
#only("3")[#voiceover("For every epsilon greater than 0, there exists a natural number $N$ such that for all $n$ greater than or equal to $N$, the absolute value of $a_n$ minus $L$ is less than epsilon.")]
#only("4")[#voiceover("Intuitively, this means that we can make the terms of the sequence as close to $L$ as we want by making $n$ sufficiently large.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Applying the Definition 🧮]
#v(40pt)
#only("1-")[Let's apply this definition to $b_n = 1/n$:]
#v(20pt)
#only("2-")[We claim that $b_n$ converges to $L = 0$.]
#v(20pt)
#only("3-")[Given $ε > 0$, choose $N > 1/ε$.]
#v(20pt)
#only("4-")[Then for $n ≥ N$, $|b_n - 0| = |1/n - 0| = 1/n < 1/N < ε$.]
#v(20pt)
#only("5-")[Thus, by definition, $b_n$ converges to 0.]
#only("1")[#voiceover("Now let's apply this definition to the sequence $b_n = 1/n$.")]
#only("2")[#voiceover("We claim that $b_n$ converges to $L = 0$.")]
#only("3")[#voiceover("Given any epsilon greater than 0, let's choose $N$ to be greater than 1 over epsilon.")]
#only("4")[#voiceover("Then for any $n$ greater than or equal to $N$, the absolute value of $b_n$ minus 0, which is just 1 over $n$, will be less than 1 over $N$, which in turn is less than epsilon.")]
#only("5")[#voiceover("Thus, by the formal definition of convergence, we have shown that $b_n$ indeed converges to 0.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways 🔑]
#v(40pt)
#only("1-")[- A sequence converges if its terms approach a specific limit as $n$ goes to infinity.]
#v(20pt)
#only("2-")[- Visualizing sequences can give insights into their convergence behavior.]
#v(20pt)
#only("3-")[- The formal definition of convergence provides a rigorous way to prove convergence.]
#v(20pt)
#only("4-")[- Of the given sequences, only $b_n = 1/n$ converges (to 0).]
#only("1")[#voiceover("Let's summarize the key points about convergence of sequences.")]
#only("2")[#voiceover("Visualizing sequences can give us a good idea about whether they converge or diverge.")]
#only("3")[#voiceover("The formal definition of convergence provides a rigorous way to prove that a sequence converges to a specific limit.")]
#only("4")[#voiceover("And of the sequences we looked at, only $b_n = 1/n$ converges, and it converges to 0. The others all diverge.")]
]