#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Graphs of Power Functions]
#v(40pt)

#only("1-")[Which of the following graphs belongs to the function $x^3$?]
#v(20pt)

#only("2-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-2, 2, 100)
y1 = x**2
y2 = x**3
y3 = 1/x
y4 = 1/(x**2)

plt.figure(figsize=(8, 6))
plt.plot(x, y1, 'r', label='Red')
plt.plot(x, y2, 'b', label='Blue')
plt.plot(x, y3, 'g', label='Green')
plt.plot(x, y4, 'orange', label='Orange')
plt.axhline(y=0, color='k', linestyle='-')
plt.axvline(x=0, color='k', linestyle='-')
plt.legend()
plt.title('Power Functions')
plt.xlabel('x')
plt.ylabel('y')
plt.ylim(-2, 2)
plt.show()

```,
width: 360pt),
)
]
]
]
#v(20pt)

#only("3-")[a) Red Graph]
#v(10pt)
#only("4-")[b) Green Graph]
#v(10pt)
#only("5-")[c) Blue Graph]
#v(10pt)
#only("6-")[d) Orange Graph]

#only("1")[#voiceover("In this exercise, we'll test your understanding of power functions. Which of the following graphs belongs to the function x cubed?")]

#only("2")[#voiceover("Take a look at the graph. We have four different colored curves: red, blue, green, and orange. Each represents a different power function.")]

#only("3")[#voiceover("Is it the red graph?")]

#only("4")[#voiceover("Or perhaps the green graph?")]

#only("5")[#voiceover("Maybe it's the blue graph?")]

#only("6")[#voiceover("Or could it be the orange graph? Think carefully about the shape of an x cubed function before you decide.")]
]

//Type: MC 
#questionDef( 
questionText: "Which of the following graphs belongs to the function $x^3$ (plot, but do not label $x^2$ (red), $x^3$ (blue), $1/x$ (Green), $1/x^2$ (Orange))", 
answerOptions: ("Red Graph", "Green Graph", "Blue Graph", "Orange Graph"),
correctAnswerIndex: 2 
)