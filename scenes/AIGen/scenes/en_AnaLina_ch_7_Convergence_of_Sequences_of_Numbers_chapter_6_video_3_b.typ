#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[

#only("1")[
#voiceover("That's not quite right. Let's go through the correct solution step by step.")
]

#text(size: 30pt, weight: "bold")[Divergence to Infinity]

#v(40pt)

#only("2-")[- Sequence: $a_n = n$]
// The sequence a_n is shown from slide 2 onward

#only("2")[
#voiceover("We're considering the sequence a_n equals n.")
]

]

#slide()[

#only("1")[
#voiceover("To prove that this sequence diverges to infinity, we need to use the formal definition of divergence to infinity.")
]

#text(size: 30pt, weight: "bold")[Formal Definition]

#v(40pt)

#only("1-")[A sequence $a_n$ diverges to $infinity$ if:]
// The formal definition is introduced from slide 1 onward

#v(20pt)

#only("2-")[For every $M > 0$, there exists an $N$ such that for all $n >= N$, $a_n > M$.]
// The formal definition is completed from slide 2 onward

#only("2")[
#voiceover("The formal definition states that a sequence a_n diverges to infinity if for every real number M greater than 0, there exists a natural number N such that for all n greater than or equal to N, a_n is greater than M.")
]

]

#slide()[

#text(size: 30pt, weight: "bold")[Proof]

#v(40pt)

#only("1-")[Let $M > 0$ be given.]
// The first step of the proof is shown from slide 1 onward

#only("1")[
#voiceover("Let's start the proof. Let M be any real number greater than 0.")
]

#v(20pt)

#only("2-")[Choose $N = M$.]
// The choice of N is shown from slide 2 onward

#only("2")[
#voiceover("We choose N to be equal to M.")
]

#v(20pt)

#only("3-")[Then for all $n >= N$, we have $a_n = n >= N = M$.]
// The inequality is shown from slide 3 onward

#only("3")[
#voiceover("Then for all n greater than or equal to N, we have a_n equals n, which is greater than or equal to N, which is equal to M.")
]

#v(20pt)

#only("4-")[Thus, $a_n > M$ for all $n >= N$.]
// The conclusion is shown from slide 4 onward

#only("4")[
#voiceover("Thus, a_n is greater than M for all n greater than or equal to N.")
]

#v(20pt)

#only("5-")[By the formal definition, $a_n$ diverges to $infinity$. 📈]
// The final conclusion is shown from slide 5 onward

#only("5")[
#voiceover("By the formal definition of divergence to infinity, the sequence a_n equals n diverges to infinity.")
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

n = np.arange(1, 11)  # First 10 terms
a_n = n

plt.figure(figsize=(8, 6))
plt.plot(n, a_n, 'bo-', linewidth=2, markersize=10)
plt.xlabel('n', fontsize=14)
plt.ylabel('a_n', fontsize=14)
plt.title('Sequence a_n = n', fontsize=16)
plt.grid(True)
plt.xticks(n)
plt.show()
```,
width: 360pt),
)
]
]
// The graph of the sequence is visualized using matplotlib

#only("1")[
#voiceover("Here's a visualization of the first 10 terms of the sequence a_n equals n. As you can see, the terms of the sequence increase without bound as n increases, which illustrates the divergence to infinity.")
]

]
]

#slide()[

#text(size: 30pt, weight: "bold")[Summary]

#v(40pt)

#only("1-")[- Sequence: $a_n = n$ 📈]

#v(20pt)

#only("2-")[- Formal definition of divergence to $infinity$ 🎓]

#v(20pt)

#only("3-")[- Proof: For any $M > 0$, choose $N = M$ 🔍]

#v(20pt)

#only("4-")[- Then $a_n > M$ for all $n >= N$ ✅]

#only("1")[
#voiceover("To summarize, we considered the sequence a_n equals n.")
]

#only("2")[
#voiceover("We used the formal definition of divergence to infinity.")
]

#only("3")[
#voiceover("In the proof, for any real number M greater than 0, we chose N to be equal to M.")
]

#only("4")[
#voiceover("Then we showed that a_n is greater than M for all n greater than or equal to N, proving that the sequence diverges to infinity.")
]

]