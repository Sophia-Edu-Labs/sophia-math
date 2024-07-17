#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Advanced Multiplication of Fractions]
#v(40pt)
#text(size: 24pt, weight: "bold")[Solution: 8/3 or 2 2/3]
#v(20pt)
#only("1-")[- Convert the mixed number to an improper fraction: $4 1/2 = 9/2$]
#v(20pt)
#only("2-")[- Multiply the fractions: $9/2 dot 2/3$]
#v(20pt)
#only("3-")[- Simplify the multiplication: $9 dot 2 / (2 dot 3) = 18/6$]
#v(20pt)
#only("4-")[- Simplify the fraction: $18/6 = 3$]
#v(20pt)
#only("5-")[- Convert the improper fraction to a mixed number: $8/3 = 2 2/3$]
#v(20pt)
#only("6-")[- Correct answer: $8/3$ or $2 2/3$]

#only("1")[#voiceover("Let's go through the correct solution step-by-step. First, we need to convert the mixed number four and a half to an improper fraction. This gives us nine over two.")]
#only("2")[#voiceover("Next, we multiply the fractions nine over two and two over three.")]
#only("3")[#voiceover("We then simplify the multiplication. Nine times two is eighteen, and two times three is six. So we have eighteen over six.")]
#only("4")[#voiceover("Simplifying the fraction eighteen over six gives us three.")]
#only("5")[#voiceover("Finally, we convert the improper fraction eight over three to a mixed number, which is two and two-thirds.")]
#only("6")[#voiceover("Therefore, the correct answer is eight over three or two and two-thirds.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Why Other Options are Incorrect]
#v(40pt)
#only("1-")[- a) $9/6$]
#v(20pt)
#only("2-")[- b) $8/3$]
#v(20pt)
#only("3-")[- c) $6/3$]
#v(20pt)
#only("4-")[- d) $6/4$]

#only("1")[#voiceover("Let's go over why the other options are incorrect.")]
#only("2")[#voiceover("Option a, nine over six, is incorrect because it does not simplify to the correct answer.")]
#only("3")[#voiceover("Option b, eight over three, is actually correct, as we have already discussed.")]
#only("4")[#voiceover("Option c, six over three, simplifies to two, which is incorrect.")]
#only("5")[#voiceover("Option d, six over four, simplifies to one and a half, which is also incorrect.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualizing the Solution]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

# Plotting the fractions
fig, ax = plt.subplots()
fractions = ['4 1/2', '2/3', '9/2', '18/6', '3', '8/3', '2 2/3']
values = [4.5, 2/3, 9/2, 18/6, 3, 8/3, 2 + 2/3]
ax.plot(fractions, values, 'bo-')
ax.set_xlabel('Steps')
ax.set_ylabel('Values')
ax.set_title('Steps to Solve the Fraction Multiplication')
plt.grid(True)
plt.show()

```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[Here's a visual representation of the steps we took to solve the problem.]

#only("1")[#voiceover("Here's a visual representation of the steps we took to solve the problem. Each point on the graph represents a step in our solution process.")]
]