#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Limit of $a_n = 1/n$ as $n$ Approaches ∞]
#v(40pt)
What is the limit of the sequence $a_n = 1/n$ as $n$ approaches infinity?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is incorrect.
#only("-1")[a) 1]#only("2-")[#text(fill:red)[a) 1]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) 0]#only("3-")[#text(fill:green)[b) 0]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is incorrect.
#only("-3")[c) ∞]#only("4-")[#text(fill:red)[c) ∞]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is incorrect.
#only("-4")[d) -1]#only("5-")[#text(fill:red)[d) -1]]
#only("1")[#voiceover("That's right, great job! The correct answer is...")]
#only("2")[#voiceover("b) 0. Let's see why...")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[Consider the sequence $a_n = 1/n$ 🔢]
#v(20pt)
#only("2-")[As $n$ increases ↗, $1/n$ decreases ↘]
#v(20pt)
#only("3-")[Example: $1/1 = 1$, $1/10 = 0.1$, $1/100 = 0.01$, ...]
#v(20pt)
#only("4-")[As $n$ approaches ∞, $1/n$ approaches 0 🎯]
#v(20pt)
#only("5-")[Therefore, $lim_(n->∞) 1/n = 0$ ✅]

#only("1")[#voiceover("We are given the sequence a sub n equals 1 over n.")]
#only("2")[#voiceover("As n increases, the value of 1 over n decreases. This is because as the denominator gets larger, the fraction gets smaller.")]
#only("3")[#voiceover("For example, 1 over 1 equals 1, 1 over 10 equals 0.1, 1 over 100 equals 0.01, and so on.")]
#only("4")[#voiceover("As n approaches infinity, 1 over n gets closer and closer to 0. Imagine dividing 1 by a really, really large number - the result will be very close to 0.")]
#only("5")[#voiceover("Therefore, the limit of 1 over n as n approaches infinity is 0.")]
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

n = np.arange(1, 100)  # Array of n values from 1 to 99
a_n = 1 / n  # Sequence a_n = 1/n

plt.figure(figsize=(8, 6))
plt.plot(n, a_n, 'bo', label='a_n = 1/n')
plt.axhline(y=0, color='r', linestyle='-', label='Limit = 0')
plt.xlabel('n')
plt.ylabel('a_n')
plt.title('Limit of a_n = 1/n as n → ∞')
plt.legend()
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[Here's a graph of $a_n = 1/n$ for different values of $n$ 📈]
#v(20pt)
#only("2-")[As $n$ increases, the points get closer to the red line at $y=0$ 🔴]
#v(20pt)
#only("3-")[This illustrates that $lim_(n->∞) 1/n = 0$ 🎯]

#only("1")[#voiceover("Let's visualize this limit. Here's a graph plotting the values of a sub n equals 1 over n for different values of n.")]
#only("2")[#voiceover("Notice how as n increases, the points on the graph get closer and closer to the red line at y equals 0.")]
#only("3")[#voiceover("This is a visual representation of the fact that the limit of 1 over n as n approaches infinity is 0.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(40pt)
#only("1-")[- Limits describe the behavior of a sequence as $n$ approaches a certain value 📈]
#v(20pt)
#only("2-")[- For $a_n = 1/n$, as $n$ approaches ∞, $a_n$ approaches 0 🎯]
#v(20pt)
#only("3-")[- This is because $1/∞ = 0$ 🔢]
#v(20pt)
#only("4-")[- Visualizing the sequence can help understand the limit 📊]

#only("1")[#voiceover("In summary, limits describe the behavior of a sequence as n approaches a certain value.")]
#only("2")[#voiceover("For the sequence a sub n equals 1 over n, as n approaches infinity, a sub n approaches 0.")]
#only("3")[#voiceover("This makes sense intuitively, because 1 divided by a very large number is close to 0.")]
#only("4")[#voiceover("Visualizing the sequence on a graph can help understand and confirm the limit.")]
]