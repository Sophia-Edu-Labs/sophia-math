#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Recap: Limits of Sequences 📈]

#v(40pt)

#only("1-")[- Limit: value terms approach as index $n$ goes to $∞$]

#v(20pt)

#only("2-")[- Example: $lim_(n -> ∞) 1/n = 0$]

#v(20pt)

#only("3-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

n = np.arange(1, 100)
a_n = 1 / n

plt.figure(figsize=(8, 6))
plt.plot(n, a_n, 'bo-', label='$a_n = 1/n$')
plt.axhline(y=0, color='r', linestyle='--', label='Limit = 0')
plt.xlabel('$n$')
plt.ylabel('$a_n$')
plt.title('Sequence $a_n = 1/n$')
plt.legend()
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
]

#only("1")[
#voiceover("In this recap, we revisit the concept of limits of sequences. The limit of a sequence is the value that the terms of the sequence approach as the index n goes to infinity.")
]

#only("2")[
#voiceover("For example, consider the sequence a_n equals 1 over n. As n approaches infinity, the terms of this sequence get closer and closer to 0. Therefore, we say that the limit of this sequence is 0.")
]

#only("3")[
#voiceover("We can visualize this with a plot. The blue dots represent the terms of the sequence for different values of n. As n increases, the dots get closer to the red dashed line, which represents the limit value of 0.")
]

]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways 🔑]

#v(40pt)

#only("1-")[- Limit describes long-term behavior of sequence]

#v(20pt)

#only("2-")[- Terms get arbitrarily close to limit as $n$ increases]

#v(20pt)

#only("3-")[- Understanding limits is crucial for advanced math concepts 🧮]

#only("1")[
#voiceover("The key takeaway is that the limit of a sequence describes the long-term behavior of the sequence.")
]

#only("2")[
#voiceover("As n increases, the terms of the sequence get arbitrarily close to the limit value.")
]

#only("3")[
#voiceover("Understanding the concept of limits is crucial for more advanced mathematical concepts, such as series, continuity, and derivatives.")
]

]