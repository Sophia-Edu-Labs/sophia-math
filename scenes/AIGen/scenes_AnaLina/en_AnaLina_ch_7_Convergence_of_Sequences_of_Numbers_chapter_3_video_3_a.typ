#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[

#only("1")[
#voiceover("Great job! You nailed it. Let's go through the proof step by step to solidify our understanding.")
]

#text(size: 30pt, weight: "bold")[Problem]

#v(40pt)

#only("2-")[Prove that the sequence $a_n = 1/n$ converges to 0 using the formal definition of convergence.]
// The problem statement is shown from slide 2 onward

#only("2")[
#voiceover("We want to prove that the sequence a sub n equals one over n converges to zero using the formal definition of convergence.")
]

]

#slide()[

#text(size: 30pt, weight: "bold")[Formal Definition of Convergence]

#v(40pt)

#only("1-")[A sequence $a_n$ converges to $L$ if for every $ε > 0$, there exists an $N$ such that for all $n >= N$, $|a_n - L| < ε$.]

#only("1")[
#voiceover("Let's recall the formal definition of convergence. A sequence a sub n converges to L if for every epsilon greater than zero, there exists an N such that for all n greater than or equal to N, the absolute value of a sub n minus L is less than epsilon.")
]

]

#slide()[

#text(size: 30pt, weight: "bold")[Proof]

#v(40pt)

#only("1-")[Let $ε > 0$ be given.]
// The first step of the proof is shown from slide 1 onward

#v(10pt)

#only("2-")[Choose $N = 1/ε$.]
// The choice of N is shown from slide 2 onward

#v(10pt)

#only("3-")[Then for all $n ≥ N$,]
// The condition on n is shown from slide 3 onward

#v(10pt)

#only("4-")[$ |a_n - 0| = |1/n - 0| = 1/n $]
// The manipulation of the absolute value is shown from slide 4 onward

#v(10pt)

#only("5-")[$ 1/n ≤ 1/N = 1/(1/ε) = ε $]
// The final inequality is shown from slide 5 onward

#only("1")[#voiceover("Let epsilon be any positive real number.")]

#only("2")[#voiceover("We choose N to be one over epsilon.")]

#only("3")[#voiceover("Then for all n greater than or equal to N,")]

#only("4")[#voiceover("the absolute value of a sub n minus zero equals the absolute value of one over n minus zero, which is just one over n.")]

#only("5")[#voiceover("One over n is less than or equal to one over N, which is one over one over epsilon, which is just epsilon.")]

#only("6")[#voiceover("Thus, by the formal definition of convergence, the sequence a sub n equals one over n converges to zero.")]

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

n = np.arange(1, 21)
a_n = 1/n

plt.figure(figsize=(10, 6))
plt.plot(n, a_n, 'bo-', label='$a_n = 1/n$')
plt.axhline(y=0, color='r', linestyle='-', label='$L = 0$')
plt.legend(loc='upper right')
plt.xlabel('$n$')
plt.ylabel('$a_n$')
plt.title('Convergence of $a_n = 1/n$ to 0')
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
// The plot visualizing the convergence is shown from slide 1 onward

#only("1")[
#voiceover("Here's a visualization of the convergence. The blue dots represent the terms of the sequence a sub n equals one over n. As n increases, the terms get closer and closer to the red line, which represents the limit zero.")
]

]
]

#slide()[

#text(size: 30pt, weight: "bold")[Summary]

#v(40pt)

#only("1-")[- Sequence: $a_n = 1/n$ 📜]

#v(20pt)

#only("2-")[- Limit: $L = 0$ 🎯]

#v(20pt)

#only("3-")[- Proof: Using formal definition of convergence ✅]

#v(20pt)

#only("4-")[- Key steps: Choose $N = 1/ε$, show $|a_n - 0| < ε$ 🔑]

#only("1")[#voiceover("To summarize, we considered the sequence a sub n equals one over n.")]

#only("2")[#voiceover("We wanted to prove that it converges to zero.")]

#only("3")[#voiceover("We used the formal definition of convergence in our proof.")]

#only("4")[#voiceover("The key steps were choosing N to be one over epsilon, and then showing that the absolute value of a sub n minus zero is less than epsilon for all n greater than or equal to N.")]

#only("5")[#voiceover("Great work on this proof! You've demonstrated a solid understanding of the formal definition of convergence.")]

]