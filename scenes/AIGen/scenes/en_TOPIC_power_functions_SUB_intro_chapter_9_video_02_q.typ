#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Graphs of Power Functions]
#v(40pt)

#only("1-")[Which of the following graphs belongs to the function $x^2$?]
#v(20pt)

#only("2-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-3, 3, 100)
y1 = x**2
y2 = x**3
y3 = 1/x
y4 = 1/(x**2)

plt.figure(figsize=(10, 6))
plt.plot(x, y1, 'r', label='Red')
plt.plot(x, y2, 'b', label='Blue')
plt.plot(x, y3, 'g', label='Green')
plt.plot(x, y4, 'orange', label='Orange')
plt.ylim(-5, 5)
plt.axhline(y=0, color='k', linestyle='--')
plt.axvline(x=0, color='k', linestyle='--')
plt.legend()
plt.title('Power Functions')
plt.xlabel('x')
plt.ylabel('y')
plt.grid(True)
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

#only("1")[#voiceover("Let's explore the graphs of power functions. We're going to look at a multiple choice question about identifying the graph of x squared.")]

#only("2")[#voiceover("Take a look at this graph. We have four different functions plotted here: a red one, a blue one, a green one, and an orange one. Can you identify which of these represents the function x squared?")]

#only("3")[#voiceover("Is it the red graph?")]

#only("4")[#voiceover("Or perhaps the green graph?")]

#only("5")[#voiceover("Maybe it's the blue graph?")]

#only("6")[#voiceover("Or could it be the orange graph?")]
]

//Type: MC 
#questionDef( 
questionText: "Which of the following graphs belongs to the function $x^2$ (plot, but do not label $x^2$ (red), $x^3$ (blue), $\frac{1}{x}$ (Green), $\frac{1}{x^2}$ (Orange))?", 
answerOptions: ("Red Graph", "Green Graph", "Blue Graph", "Orange Graph"),
correctAnswerIndex: 0 
)