#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Convergence of Sequences]
#v(40pt)
#only("1-")[- A sequence $a_n$ converges to a limit $L$ 📈]
#v(20pt)
#only("2-")[- Formally: For every $epsilon > 0$, there exists an $N$ such that for all $n >= N$, $|a_n - L| < epsilon$ 📏]
#only("1")[
#voiceover("A sequence a_n is said to converge to a limit L if the terms of the sequence get arbitrarily close to L as n increases.")
]
#only("2")[
#voiceover("Formally, this means that for every positive epsilon, no matter how small, we can find an index N such that for all n greater than or equal to N, the absolute difference between a_n and L is less than epsilon.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visual Representation]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Define the sequence
def a(n):
    return 1 / n

# Generate the sequence
N = 20
n = np.arange(1, N+1)
a_n = a(n)

# Create the plot
plt.figure(figsize=(8, 6))
plt.plot(n, a_n, 'bo-', label='$a_n$')
plt.axhline(y=0, color='r', linestyle='-', label='$L$')
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
#only("1")[
#voiceover("Let's visualize this with an example. Consider the sequence a_n equals 1 over n. As n increases, the terms of the sequence get closer and closer to 0. So, this sequence converges to 0.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Epsilon-N Definition]
#v(40pt)
#only("1-")[- Choose any $epsilon > 0$ 🎯]
#v(20pt)
#only("2-")[- Find an $N$ such that for all $n >= N$, $|a_n - L| < epsilon$ ✅]
#v(20pt)
#only("3-")[- Example: For $a_n = 1/n$, choose $N > 1/epsilon$ 🧮]
#only("1")[
#voiceover("The epsilon-N definition captures this idea. We start by choosing any positive epsilon, no matter how small.")
]
#only("2")[
#voiceover("Then, we need to find an index N such that for all n greater than or equal to N, the absolute difference between a_n and L is less than this epsilon.")
]
#only("3")[
#voiceover("For our example sequence a_n equals 1 over n, if we want the terms to be within epsilon of 0, we can choose N to be greater than 1 over epsilon.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Convergence: $a_n$ gets arbitrarily close to $L$ 🎯]
#v(20pt)
#only("2-")[- Epsilon-N definition: For every $epsilon > 0$, there exists an $N$ such that for all $n >= N$, $|a_n - L| < epsilon$ 📏]
#v(20pt)
#only("3-")[- Key idea: Control the distance between $a_n$ and $L$ 🔒]
#only("1")[
#voiceover("In summary, a sequence a_n converges to a limit L if its terms get arbitrarily close to L as n increases.")
]
#only("2")[
#voiceover("The epsilon-N definition formalizes this by saying that for every positive epsilon, we can find an index N such that for all n greater than or equal to N, the absolute difference between a_n and L is less than epsilon.")
]
#only("3")[
#voiceover("The key idea is that we can control how close the terms of the sequence get to the limit by choosing an appropriate index N.")
]
]