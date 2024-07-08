#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Cubic Function Graph]
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

x = np.linspace(-3, 3, 100)
y1 = x**3
y2 = x**2
y3 = 1/x
y4 = 1/(x**2)

plt.figure(figsize=(10, 6))
plt.plot(x, y1, 'r', label='Red')
plt.plot(x, y2, 'b', label='Blue')
plt.plot(x, y3, 'g', label='Green')
plt.plot(x, y4, 'orange', label='Orange')

plt.axhline(y=0, color='k', linestyle='--')
plt.axvline(x=0, color='k', linestyle='--')

plt.legend()
plt.title('Function Graphs')
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

#only("1")[#voiceover("In this exercise, we're going to test your understanding of cubic functions. Specifically, we want to identify which graph represents the function x cubed.")]

#only("2")[#voiceover("Take a look at this plot. We have four different colored graphs: red, blue, green, and orange. Each of these represents a different function. Your task is to identify which one corresponds to x cubed.")]

#only("3")[#voiceover("Is it the red graph?")]

#only("4")[#voiceover("Or perhaps the green graph?")]

#only("5")[#voiceover("Maybe it's the blue graph?")]

#only("6")[#voiceover("Or could it be the orange graph? Think carefully about the characteristics of a cubic function and how it should look when graphed.")]
]

//Type: MC 
#questionDef( 
questionText: "Which of the following graphs belongs to the function $x^3$ (plot, but do not label $x^3$ (pink), $x^2$ (blue), $1/x$ (green), $1/x^2$ (orange))?", 
answerOptions: ("Red Graph", "Green Graph", "Blue Graph", "Orange Graph"),
correctAnswerIndex: 1 
)