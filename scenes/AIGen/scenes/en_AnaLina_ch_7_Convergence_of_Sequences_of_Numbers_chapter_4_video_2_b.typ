#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Divergence to Infinity]
#v(40pt)
A sequence diverges to infinity if its terms ______.
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false. 
#only("-1")[a) decrease without bound]#only("2-")[#text(fill:red)[a) decrease without bound]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) oscillate]#only("3-")[#text(fill:red)[b) oscillate]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned green, because it is correct.
#only("-3")[c) increase without bound]#only("4-")[#text(fill:green)[c) increase without bound]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) stay constant]#only("5-")[#text(fill:red)[d) stay constant]]
#only("1")[#voiceover("Incorrect, but don't worry! Here's the correct solution.")]
#only("2")[#voiceover("Option a) is incorrect. If the terms decrease without bound, the sequence would diverge to negative infinity, not positive infinity.")]
#only("3")[#voiceover("Option b) is also incorrect. If the terms oscillate, the sequence is divergent, but it does not necessarily diverge to infinity.")]
#only("4")[#voiceover("Option c) is the correct answer. A sequence diverges to infinity if its terms increase without bound as n goes to infinity.")]
#only("5")[#voiceover("Finally, option d) is incorrect. If the terms stay constant, the sequence is convergent, not divergent.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
- A sequence $a_n$ diverges to infinity if:
  - For every $M > 0$, there exists an $N$ such that for all $n \geq N$, $a_n > M$. 🚀
#v(20pt)  
- This means:
  - No matter how large $M$ is, we can always find an $N$ such that for all terms beyond the $N$-th term, $a_n$ is greater than $M$. 📈
#v(20pt)  
- In other words:
  - The terms of the sequence increase without bound as $n$ goes to infinity. ∞
#only("1")[#voiceover("Let's break this down step-by-step. A sequence a_n diverges to infinity if for every M greater than 0, there exists an N such that for all n greater than or equal to N, a_n is greater than M.")]
#only("2")[#voiceover("This means that no matter how large we choose M to be, we can always find an N such that for all terms beyond the N-th term, a_n is greater than M.")]
#only("3")[#voiceover("In other words, the terms of the sequence increase without bound as n goes to infinity. They keep getting larger and larger, exceeding any finite value.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example]
#v(40pt)
Consider the sequence $a_n = n^2$.
#v(20pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

n = np.arange(1, 11)
a_n = n**2

plt.figure(figsize=(8, 6))
plt.plot(n, a_n, 'bo-', label='$a_n = n^2$')
plt.xlabel('n')
plt.ylabel('$a_n$')
plt.title('Sequence $a_n = n^2$')
plt.grid(True)
plt.legend()
plt.show()
```,
width: 360pt),
)
]
]
#v(20pt)
- For any $M > 0$, choose $N = ceil(sqrt(M))$. 🎯
- Then for all $n >= N$, $a_n = n^2 >= N^2 > M$. ✅
- Thus, $a_n$ diverges to infinity. 🚀
#only("1")[#voiceover("Let's look at an example. Consider the sequence a_n equals n squared. Here's a plot of the first few terms.")]
#only("2")[#voiceover("To show that this sequence diverges to infinity, let's pick an arbitrary M greater than 0. We need to find an N such that for all n greater than or equal to N, a_n is greater than M.")]
#only("3")[#voiceover("We can choose N to be the ceiling of the square root of M. Then for all n greater than or equal to N, a_n equals n squared, which is greater than or equal to N squared, which in turn is greater than M.")]
#only("4")[#voiceover("Thus, no matter what M we choose, we can always find an N such that all subsequent terms are greater than M. Therefore, the sequence a_n equals n squared diverges to infinity.")]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Recap]
#v(40pt)
- A sequence diverges to infinity if its terms increase without bound. 📈
#v(20pt)
- Formally, for every $M > 0$, there exists an $N$ such that for all $n >= N$, $a_n > M$. 🎓
#v(20pt)
- Examples of sequences that diverge to infinity: 
  - $a_n = n$ 
  - $a_n = n^2$
  - $a_n = 2^n$ 
#only("1")[#voiceover("To recap, a sequence diverges to infinity if its terms increase without bound.")]
#only("2")[#voiceover("Formally, this means that for every M greater than 0, there exists an N such that for all n greater than or equal to N, a_n is greater than M.")]
#only("3")[#voiceover("Some examples of sequences that diverge to infinity are a_n equals n, a_n equals n squared, and a_n equals 2 to the power of n. In each case, the terms keep getting larger without limit as n increases.")]
]