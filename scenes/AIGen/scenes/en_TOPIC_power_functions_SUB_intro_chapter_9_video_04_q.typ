#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Graphs of Power Functions]
#v(40pt)

#only("1-")[Which of the following graphs belongs to the function $1/x$?]
#v(20pt)

#only("2-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-5, 5, 1000)
x = x[x != 0]  # Remove 0 to avoid division by zero

plt.figure(figsize=(10, 6))
plt.plot(x, x**2, 'r', label='$x^2$')
plt.plot(x, x**3, 'b', label='$x^3$')
plt.plot(x, 1/x, 'g', label='$1/x$')
plt.plot(x, 1/x**2, 'orange', label='$1/x^2$')

plt.axhline(y=0, color='k', linestyle='--')
plt.axvline(x=0, color='k', linestyle='--')

plt.xlim(-5, 5)
plt.ylim(-5, 5)
plt.legend()
plt.grid(True)
plt.title('Graphs of Power Functions')
plt.xlabel('x')
plt.ylabel('y')

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

#only("1")[#voiceover("In this exercise, we'll test your understanding of power function graphs. Take a look at the following question:")]

#only("2")[#voiceover("Which of the following graphs belongs to the function one over x? Let's examine the plot carefully. We have four different graphs: a red one, a blue one, a green one, and an orange one. Each represents a different power function.")]

#only("3")[#voiceover("Could it be the red graph?")]

#only("4")[#voiceover("Or perhaps it's the green graph?")]

#only("5")[#voiceover("Maybe it's the blue graph?")]

#only("6")[#voiceover("Or lastly, could it be the orange graph? Take your time to analyze each curve and think about the characteristics of the function one over x before making your choice.")]
]

//Type: MC 
#questionDef( 
questionText: "Which of the following graphs belongs to the function $\frac{1}{x}$ (plot, but do not label $x^2$ (red), $x^3$ (blue), $\frac{1}{x}$ (Green), $\frac{1}{x^2}$ (Orange))", 
answerOptions: ("Red Graph", "Green Graph", "Blue Graph", "Orange Graph"),
correctAnswerIndex: 1 
)