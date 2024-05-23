#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Exercise 1]
#v(40pt)
Which of the following sequences diverges to infinity? 
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it does not diverge to infinity.
#only("-1")[a) $a_n = 1/n$]#only("2-")[#text(fill:red)[a) $a_n = 1/n$]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it does diverge to infinity.
#only("-2")[b) $b_n = n$]#only("3-")[#text(fill:green)[b) $b_n = n$]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it does not diverge to infinity.
#only("-3")[c) $c_n = (-1)^n$]#only("4-")[#text(fill:red)[c) $c_n = (-1)^n$]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it does not diverge to infinity.
#only("-4")[d) $d_n = 1/(n^2)$]#only("5-")[#text(fill:red)[d) $d_n = 1/(n^2)$]]
#only("1")[#voiceover("Not quite, but let's take a look at the correct solution.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Solution]
#v(40pt)
Let's examine each sequence:
#v(20pt)
#only("2-")[- $a_n = 1/n$: As $n$ increases, $1/n$ approaches 0. ❌]
#v(10pt)
#only("3-")[- $b_n = n$: As $n$ increases, $b_n$ increases without bound. ✅]
#v(10pt) 
#only("4-")[- $c_n = (-1)^n$: Oscillates between -1 and 1. ❌]
#v(10pt)
#only("5-")[- $d_n = 1/(n^2)$: As $n$ increases, $1/(n^2)$ approaches 0 even faster than $1/n$. ❌]
#v(40pt)
#only("6-")[Therefore, the sequence that diverges to infinity is $b_n = n$. 🚀]

#only("2")[#voiceover("a) The sequence a sub n equals 1 over n does not diverge to infinity. As n increases, 1 over n approaches 0.")]
#only("3")[#voiceover("b) The sequence b sub n equals n does diverge to infinity. As n increases, b sub n increases without bound.")]
#only("4")[#voiceover("c) The sequence c sub n equals negative 1 to the power of n does not diverge to infinity. It oscillates between negative 1 and 1.")]
#only("5")[#voiceover("d) The sequence d sub n equals 1 over n squared does not diverge to infinity. As n increases, 1 over n squared approaches 0 even faster than 1 over n.")]
#only("6")[#voiceover("Therefore, the only sequence among the given options that diverges to infinity is b sub n equals n.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualization]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

n = np.arange(1, 11)

plt.figure(figsize=(10, 8))

plt.subplot(2, 2, 1)
plt.plot(n, 1/n, 'bo-')
plt.title('a) $a_n = 1/n$')
plt.ylim(0, 1)

plt.subplot(2, 2, 2)
plt.plot(n, n, 'ro-')
plt.title('b) $b_n = n$')

plt.subplot(2, 2, 3)
plt.plot(n, (-1)**n, 'go-')
plt.title('c) $c_n = (-1)^n$')
plt.ylim(-1.5, 1.5)

plt.subplot(2, 2, 4)
plt.plot(n, 1/(n**2), 'mo-')
plt.title('d) $d_n = 1/(n^2)$')
plt.ylim(0, 1)

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[Here's a plot of the first 10 terms of each sequence:]
#v(20pt)
#only("2-")[- Only $b_n = n$ clearly diverges to infinity. 📈]

#only("1")[#voiceover("Let's visualize the first 10 terms of each sequence in a plot.")]
#only("2")[#voiceover("As you can see, only the sequence b sub n equals n clearly diverges to infinity, while the others either approach a finite value or oscillate.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(40pt)
- A sequence diverges to infinity if its terms increase without bound. 🚀
#v(20pt)
- Sequences like $1/n$ and $1/(n^2)$ converge to 0. 🎯
#v(20pt)
- Oscillating sequences like $(-1)^n$ do not diverge to infinity. 🔄
#v(20pt)
- Always consider the long-term behavior of a sequence. ♾️

#only("1")[#voiceover("Remember, a sequence diverges to infinity if its terms increase without bound.")]
#only("2")[#voiceover("Sequences like 1 over n and 1 over n squared converge to 0, not infinity.")]
#only("3")[#voiceover("Oscillating sequences like negative 1 to the power of n do not diverge to infinity.")]
#only("4")[#voiceover("Always consider the long-term behavior of a sequence when determining if it diverges to infinity.")]
]