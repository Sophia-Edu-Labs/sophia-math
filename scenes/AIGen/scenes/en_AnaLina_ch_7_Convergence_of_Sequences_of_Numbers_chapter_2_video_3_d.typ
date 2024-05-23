#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Great Job! 🎉]
#v(40pt)
#only("1-")[That's the correct answer! Let's see how we can solve this step by step.]
#only("1")[
#voiceover("That's not quite right. Let's review the correct solution step by step.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Given Sequence]
#v(40pt)
#only("1-")[- $b_n = 2n/(n+1)$]
#only("1")[
#voiceover("We are given the sequence b sub n equals 2n over n plus 1.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Intuition 🤔]
#v(40pt)
#only("1-")[- As $n$ gets larger, what happens to $b_n$?]
#v(20pt)
#only("2-")[- Numerator grows faster than denominator]
#only("1")[
#voiceover("First, let's think about what happens to b sub n as n gets larger.")
]
#only("2")[
#voiceover("We can see that the numerator, 2n, grows faster than the denominator, n plus 1.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 2: Divide 🧮]
#v(40pt)
#only("1-")[- Divide numerator and denominator by $n$]
#v(20pt)
#only("2-")[$ lim_(n->infinity) b_n = lim_(n->infinity) (2n)/(n+1) $]
#v(10pt)
#only("3-")[$ = lim_(n->infinity) (2)/(1+1/n) $]
#only("1")[
#voiceover("To see this more clearly, let's divide both the numerator and denominator by n.")
]
#only("2")[
#voiceover("So the limit of b sub n as n goes to infinity is equal to the limit of 2n over n plus 1 as n goes to infinity.")
]
#only("3")[
#voiceover("This simplifies to the limit of 2 over 1 plus 1 over n as n goes to infinity.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 3: Evaluate Limit 📈]
#v(40pt)
#only("1-")[- As $n -> infinity$, $1/n -> 0$]
#v(20pt)
#only("2-")[$ lim_(n->infinity) b_n = lim_(n->infinity) (2)/(1+1/n) $]
#v(10pt)
#only("3-")[$ = 2/1 = 2 $]
#only("1")[
#voiceover("Now, as n goes to infinity, 1 over n goes to 0.")
]
#only("2")[
#voiceover("So the limit becomes 2 over 1 plus 0.")
]
#only("3")[
#voiceover("Which is equal to 2 over 1, or simply 2.")
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
b_n = 2*n / (n+1)

plt.figure(figsize=(8, 6))
plt.plot(n, b_n, 'b-', label='$b_n$')
plt.axhline(y=2, color='r', linestyle='--', label='Limit')
plt.xlabel('$n$', fontsize=14)
plt.ylabel('$b_n$', fontsize=14)
plt.title('Convergence of $b_n$ to 2', fontsize=16)
plt.legend(fontsize=12)
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's a visualization of the sequence b sub n. As n gets larger, you can see that b sub n, shown in blue, gets closer and closer to its limit of 2, shown by the red dashed line.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Conclusion ✅]
#v(40pt)
#only("1-")[- $lim_(n->infinity) b_n = 2$]
#v(20pt)
#only("2-")[Great work on solving this! 👍]
#only("1")[
#voiceover("So in conclusion, the limit of the sequence b sub n equals 2n over n plus 1 as n goes to infinity is equal to 2.")
]
#only("2")[
#voiceover("Great work on solving this problem! Keep it up!")
]
]