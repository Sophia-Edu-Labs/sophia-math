#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Quadratic Function Graphs]
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

plt.figure(figsize=(10, 6))
plt.plot(x, x**3, 'r', label='$x^3$')
plt.plot(x, x**2, 'b', label='$x^2$')
plt.plot(x, 1/x, 'g', label='$1/x$')
plt.plot(x, 1/(x**2), 'orange', label='$1/x^2$')

plt.axhline(y=0, color='k', linestyle='--')
plt.axvline(x=0, color='k', linestyle='--')

plt.legend()
plt.title('Comparison of Functions')
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

  #only("1")[#voiceover("In this exercise, we'll test your understanding of quadratic functions. Specifically, we're looking at the graph of x squared.")]

  #only("2")[#voiceover("Take a look at this graph. We have four different functions plotted here: a red curve, a blue curve, a green curve, and an orange curve. One of these represents the function x squared.")]

  #only("3")[#voiceover("Could it be the red graph?")]

  #only("4")[#voiceover("Or perhaps it's the green graph?")]

  #only("5")[#voiceover("Maybe it's the blue graph?")]

  #only("6")[#voiceover("Or could it be the orange graph? Think carefully about the shape of x squared and compare it to these curves.")]
]

//Type: MC 
#questionDef( 
questionText: "Which of the following graphs belongs to the function $x^2$ (plot, but do not label $x^3$ (red), $x^2$ (blue), $\frac{1}{x}$ (Green), $\frac{1}{x^2}$ (Orange))?", 
answerOptions: ("Red Graph", "Green Graph", "Blue Graph", "Orange Graph"),
correctAnswerIndex: 2 
)