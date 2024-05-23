#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Convergent Sequences]
#v(40pt)
#only("1-")[- Sequence $a_n = 1/n$]
#v(20pt)
#only("2-")[- Sequence $b_n = 2n/(n+1)$]
#only("1")[
#voiceover("Let's recap two examples of convergent sequences. The first one is the sequence a_n equals 1 over n.")
]
#only("2")[
#voiceover("The second example is the sequence b_n equals 2n over n plus 1.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Sequence $a_n = 1/n$]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

n = np.arange(1, 11)
a_n = 1 / n

plt.figure(figsize=(8, 6))
plt.plot(n, a_n, 'bo-', label='$a_n = 1/n$')
plt.axhline(y=0, color='r', linestyle='--', label='Limit: 0')
plt.xlabel('n')
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
#voiceover("The sequence a_n equals 1 over n converges to 0 as n goes to infinity. As you can see in the graph, the terms of the sequence get closer and closer to 0 as n increases.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Sequence $b_n = 2n/(n+1)$]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

n = np.arange(1, 11)
b_n = 2 * n / (n + 1)

plt.figure(figsize=(8, 6))
plt.plot(n, b_n, 'bo-', label='$b_n = 2n/(n+1)$')
plt.axhline(y=2, color='r', linestyle='--', label='Limit: 2')
plt.xlabel('n')
plt.ylabel('$b_n$')
plt.title('Convergence of $b_n = 2n/(n+1)$')
plt.legend()
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("The sequence b_n equals 2n over n plus 1 converges to 2 as n goes to infinity. The graph shows how the terms of the sequence approach 2 as n gets larger.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Convergent sequences approach a specific value as $n$ goes to $infinity$ 📈]
#v(20pt)
#only("2-")[- $a_n = 1/n$ converges to 0]
#v(20pt)
#only("3-")[- $b_n = 2n/(n+1)$ converges to 2]
#only("1")[
#voiceover("In summary, convergent sequences are sequences whose terms approach a specific value as n goes to infinity.")
]
#only("2")[
#voiceover("The sequence a_n equals 1 over n is an example of a convergent sequence that converges to 0.")
]
#only("3")[
#voiceover("And the sequence b_n equals 2n over n plus 1 is another example of a convergent sequence, which converges to 2.")
]
]