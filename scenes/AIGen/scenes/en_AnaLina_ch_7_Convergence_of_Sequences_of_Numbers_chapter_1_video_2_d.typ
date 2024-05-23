#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Sequence Convergence]
#v(40pt)
#only("1-")[A sequence converges if its terms approach a specific value as...]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false. 
#only("-1")[a) n decreases]#only("2-")[#text(fill:red)[a) n decreases]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) n stays constant]#only("3-")[#text(fill:red)[b) n stays constant]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned green, because it is correct.
#only("-3")[c) n goes to infinity]#only("4-")[#text(fill:green)[c) n goes to infinity]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) n oscillates]#only("5-")[#text(fill:red)[d) n oscillates]]
#only("1")[#voiceover("Not quite. Let's review the correct solution.")]
#only("2")[#voiceover("Option a) n decreases is incorrect. If n decreases, the sequence terms are moving further from a specific value, not approaching it.")]
#only("3")[#voiceover("Option b) n stays constant is also incorrect. If n stays constant, the sequence is not progressing at all and thus not converging to any value.")]
#only("4")[#voiceover("Option c) n goes to infinity is the correct answer. As n grows larger and larger, the sequence terms get closer and closer to a specific limit value if the sequence converges.")]
#only("5")[#voiceover("Finally, option d) n oscillates is incorrect. If n oscillates, the sequence terms are jumping back and forth, not steadily approaching a limit.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example of Convergence]
#v(40pt)
#only("1-")[Consider the sequence: $a_n = 1/n$]
#v(20pt)
#only("2-")[- As $n$ increases, $1/n$ gets smaller]
#only("3-")[- $lim_(n->infinity) 1/n = 0$]
#only("4-")[- So $a_n = 1/n$ converges to 0 as $n->infinity$ 🎯]

#only("1")[#voiceover("Let's look at an example to understand this better.")]
#only("2")[#voiceover("Consider the sequence a sub n equals 1 over n. As n increases, 1 over n gets smaller and smaller.")]
#only("3")[#voiceover("In fact, the limit of 1 over n as n goes to infinity is 0.")]
#only("4")[#voiceover("Therefore, the sequence a sub n equals 1 over n converges to 0 as n approaches infinity.")]
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

n = np.arange(1, 21)
a_n = 1/n

plt.figure(figsize=(8, 6))
plt.plot(n, a_n, 'bo-', label='$a_n = 1/n$')
plt.axhline(y=0, color='r', linestyle='-', label='Limit')
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
#v(40pt)
#only("1-")[Here's a graph of $a_n = 1/n$:]
#v(20pt)
#only("2-")[- As $n$ increases, $a_n$ approaches the red line (limit of 0) 📉]
#only("3-")[- This is what convergence looks like visually 👀]

#only("1")[#voiceover("Here's a graph of the sequence a sub n equals 1 over n.")]
#only("2")[#voiceover("As n increases, you can see the sequence terms, represented by the blue dots, getting closer and closer to the red line, which represents the limit of 0.")]
#only("3")[#voiceover("This is what convergence looks like visually. The sequence terms approach a specific limit value as n grows larger and larger.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(40pt)
#only("1-")[- Convergence means approaching a specific limit value 🎯]
#only("2-")[- This happens as $n$ goes to infinity ∞]
#only("3-")[- If terms don't approach a limit or oscillate, it's not convergence ❌]
#only("4-")[- Graphically, terms get closer to the limit line as $n$ increases 📈]

#only("1")[#voiceover("To summarize, convergence of a sequence means the terms are approaching a specific limit value.")]
#only("2")[#voiceover("This happens as n, the index, goes to infinity.")]
#only("3")[#voiceover("If the terms don't approach a limit, or if they oscillate, then the sequence is not converging.")]
#only("4")[#voiceover("Graphically, you can see convergence when the sequence terms get closer and closer to the limit line as n increases.")]
]