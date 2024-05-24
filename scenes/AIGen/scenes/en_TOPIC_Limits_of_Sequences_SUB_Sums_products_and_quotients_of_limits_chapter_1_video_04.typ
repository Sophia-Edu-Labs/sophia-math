#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Limits of Sums of Sequences 🧮]
#v(40pt)
#only("1-")[
- $lim_(n -> infinity) (a_n + b_n) = lim_(n -> infinity) a_n + lim_(n -> infinity) b_n$
]
#only("1")[
#voiceover("The limit of the sum of two sequences is equal to the sum of their individual limits.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example]
#v(40pt)
#only("1-")[
- Given: $a_n = 1/n$ and $b_n = 2/n$
]
#only("2-")[
- $lim_(n -> infinity) a_n = 0$ and $lim_(n -> infinity) b_n = 0$
]
#only("3-")[
- $lim_(n -> infinity) (a_n + b_n) = lim_(n -> infinity) (1/n + 2/n)$
]
#only("4-")[
  $= lim_(n -> infinity) (3/n) = 0$
]
#only("1")[
#voiceover("Let's consider an example. Given two sequences a_n equals 1 over n and b_n equals 2 over n.")
]
#only("2")[
#voiceover("We know that the limit of a_n as n approaches infinity is 0, and similarly, the limit of b_n as n approaches infinity is also 0.")
]
#only("3")[
#voiceover("Now, let's find the limit of the sum of these sequences. The limit of a_n plus b_n as n approaches infinity is equal to the limit of 1 over n plus 2 over n as n approaches infinity.")
]
#only("4")[
#voiceover("This simplifies to the limit of 3 over n as n approaches infinity, which is equal to 0.")
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

n = np.arange(1, 100)
a_n = 1/n
b_n = 2/n
sum_n = a_n + b_n

plt.figure(figsize=(8, 6))
plt.plot(n, a_n, label='$a_n$')
plt.plot(n, b_n, label='$b_n$')
plt.plot(n, sum_n, label='$a_n + b_n$')
plt.legend(fontsize=14)
plt.xlabel('n', fontsize=14)
plt.ylabel('Value', fontsize=14)
plt.title('Sequences and their Sum', fontsize=16)
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
]
#only("1")[
#voiceover("Here's a visualization of the sequences a_n, b_n, and their sum a_n plus b_n. As n increases, all these sequences approach 0, illustrating the concept that the limit of the sum is the sum of the limits.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways 🔑]
#v(40pt)
#only("1-")[
- Limit of sum = Sum of limits
]
#only("2-")[
- Useful for finding limits of complex sequences
]
#only("3-")[
- Extends to differences, products, and quotients of sequences
]
#only("1")[
#voiceover("The key takeaway is that the limit of the sum of two sequences is equal to the sum of their individual limits.")
]
#only("2")[
#voiceover("This property is extremely useful for finding the limits of more complex sequences that can be broken down into simpler components.")
]
#only("3")[
#voiceover("This concept extends to differences, products, and quotients of sequences as well, providing a powerful tool for evaluating limits.")
]
]