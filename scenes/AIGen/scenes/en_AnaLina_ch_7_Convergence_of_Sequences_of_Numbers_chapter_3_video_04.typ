#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Let's recap the formal definition of convergence for sequences.")
]
#text(size: 30pt, weight: "bold")[Formal Definition of Convergence]
// The title "Formal Definition of Convergence" is shown on this slide
#v(40pt)
#only("2")[
#voiceover("A sequence $a_n$ converges to a limit $L$ if for every positive epsilon, there exists a natural number $N$, such that for all $n$ greater than or equal to $N$, the absolute value of $a_n - L$ is less than epsilon.")
]
#only("2-")[
$ a_n → L ⟺ ∀ ε>0 ∃ N ∈ ℕ: ∀ n ≥ N |a_n - L| < ε$
]
// The formal definition is shown in mathematical notation from slide 2 onward
]

#slide()[
#only("1")[
#voiceover("Let's break this down step by step.")
]
#text(size: 30pt, weight: "bold")[Breaking it Down]
// The title "Breaking it Down" is shown on this slide
#v(40pt)
#only("2-")[- $ε > 0$ represents any arbitrarily small positive number 🔍]
// The explanation for epsilon is shown from slide 2 onward
#only("2")[
#voiceover("First, epsilon represents any arbitrarily small positive number. It's a threshold that we choose.")
]
#v(20pt)
#only("3-")[- $N ∈ ℕ$ is a natural number that depends on $ε$ 🔢]
// The explanation for N is shown from slide 3 onward
#only("3")[
#voiceover("Next, $N$ is a natural number that depends on the choice of epsilon. It's a point in the sequence from which onward all terms are close to the limit.")
]
#v(20pt)
#only("4-")[- $|a_n - L| < ε$ means the distance between $a_n$ and $L$ is less than $ε$ 📏]
// The explanation for |a_n - L| < epsilon is shown from slide 4 onward
#only("4")[
#voiceover("Finally, the condition $|a_n - L| < ε$ means that the absolute difference between the terms $a_n$ and the limit $L$ is less than epsilon, for all terms beyond the $N$-th term.")
]
]

#slide()[
#only("1")[
#voiceover("Here's a visual representation.")
]
#text(size: 30pt, weight: "bold")[Visualization]
// The title "Visualization" is shown on this slide
#v(40pt)
#only("2-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Sequence
n = np.arange(1, 11)
a_n = 1 + 1/n

# Limit
L = 1

# Choose an epsilon
epsilon = 0.5

# Find N
N = np.ceil(1/epsilon)

# Plot
plt.figure(figsize=(8, 6))
plt.plot(n, a_n, 'bo-', label='$a_n$')
plt.axhline(y=L, color='r', linestyle='-', label='$L$')
plt.axhline(y=L-epsilon, color='g', linestyle='--', label='$L-ε$')
plt.axhline(y=L+epsilon, color='g', linestyle='--', label='$L+ε$')
plt.axvline(x=N, color='m', linestyle='-.', label='$N$')
plt.xlabel('$n$')
plt.ylabel('$a_n$')
plt.title('Convergence of a Sequence')
plt.legend()
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
]
// The figure shows a sequence a_n converging to a limit L, with the epsilon-neighborhood and the point N marked. This figure is shown from slide 2 onward.
#only("2")[
#voiceover("In this plot, the blue line represents the sequence $a_n$, converging to the red limit line $L$. The green lines mark the epsilon-neighborhood around $L$, and the magenta line shows the point $N$ from which onward all terms are within this neighborhood.")
]
]

#slide()[
#only("1")[
#voiceover("To sum up:")
]
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("2-")[- A sequence $a_n$ converges to $L$ if:]
#only("2")[
#voiceover("A sequence $a_n$ converges to a limit $L$ if:")
]
#v(20pt)
#only("3-")[  - For every $ε>0$ (arbitrarily small) 🔍]
#only("3")[
#voiceover("For every arbitrarily small positive epsilon...")
]
#v(20pt)
#only("4-")[  - There exists an $N ∈ ℕ$ (depends on $ε$) 🔢]
#only("4")[
#voiceover("...there exists a natural number $N$ that depends on epsilon...")
]
#v(20pt)
#only("5-")[  - Such that $|a_n - L| < ε$ for all $n ≥ N$ 📏]
#only("5")[
#voiceover("...such that the absolute difference between $a_n$ and $L$ is less than epsilon for all $n$ greater than or equal to $N$.")
]
]