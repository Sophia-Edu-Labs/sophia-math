#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Graphs of Power Functions]
#v(40pt)

#only("1-")[Which graph belongs to the function $1/x^2$?]
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
plt.xlim(-5, 5)
plt.axhline(y=0, color='k', linestyle='--')
plt.axvline(x=0, color='k', linestyle='--')
plt.legend()
plt.grid(True)
plt.title('Power Functions')
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

#only("1")[#voiceover("In this exercise, we'll test your understanding of power functions and their graphs. Take a look at the following question:")]

#only("2")[#voiceover("Which of the following graphs belongs to the function one over x squared? Let's examine the plot carefully. We have four different colored graphs: red, blue, green, and orange.")]

#only("3")[#voiceover("Could it be the red graph?")]

#only("4")[#voiceover("Or perhaps the green graph?")]

#only("5")[#voiceover("Maybe it's the blue graph?")]

#only("6")[#voiceover("Or is it the orange graph? Think about the characteristics of the function one over x squared and compare them with these graphs.")]
]

//Type: MC 
#questionDef( 
questionText: "Which of the following graphs belongs to the function $\frac{1}{x^2}$ (plot, but do not label $x^2$ (red), $x^3$ (blue), $\frac{1}{x}$ (green), $\frac{1}{x^2}$ (orange))?", 
answerOptions: ("Red Graph", "Green Graph", "Blue Graph", "Orange Graph"),
correctAnswerIndex: 3 
)