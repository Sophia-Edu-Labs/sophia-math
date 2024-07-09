#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Graphen quadratischer Funktionen]
  #v(40pt)

  #only("1-")[Welcher der folgenden Graphen gehört zur Funktion $x^2$?]
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
y2 = 1/x
y3 = x**2
y4 = 1/(x**2)

plt.figure(figsize=(10, 7))
plt.plot(x, y1, 'r-', label='$y = x^3$')
plt.plot(x, y2, 'g-', label='$y = 1/x$')
plt.plot(x, y3, 'b-', label='$y = x^2$')
plt.plot(x, y4, 'orange', label='$y = 1/x^2$')
plt.axhline(y=0, color='k', linestyle='--')
plt.axvline(x=0, color='k', linestyle='--')
plt.xlabel('x')
plt.ylabel('y')
plt.title('Vergleich verschiedener Funktionen')
plt.grid(True)
plt.ylim(-5, 5)
plt.show()
          ```,
          width: 360pt),
        )
      ]
    ]
  ]

  #v(20pt)

  #only("3-")[a) Roter Graph]
  #v(10pt)
  #only("4-")[b) Grüner Graph]
  #v(10pt)
  #only("5-")[c) Blauer Graph]
  #v(10pt)
  #only("6-")[d) Oranger Graph]

  #only("1")[#voiceover("In dieser Übung testen wir dein Verständnis von quadratischen Funktionen. Insbesondere betrachten wir den Graphen von x Quadrat.")]

  #only("2")[#voiceover("Schau dir diesen Graphen an. Wir haben hier vier verschiedene Funktionen dargestellt: eine rote Kurve, eine blaue Kurve, eine grüne Kurve und eine orange Kurve. Eine davon stellt die Funktion x Quadrat dar.")]

  #only("3")[#voiceover("Könnte es der rote Graph sein?")]

  #only("4")[#voiceover("Oder vielleicht ist es der grüne Graph?")]

  #only("5")[#voiceover("Vielleicht ist es der blaue Graph?")]

  #only("6")[#voiceover("Oder könnte es der orange Graph sein? Denke sorgfältig über die Form von x Quadrat nach und vergleiche sie mit diesen Kurven.")]
]

//Type: MC 
#questionDef( 
questionText: "Welcher der folgenden Graphen gehört zur Funktion $x^2$ (plot, aber beschrifte nicht $x^3$ (rot), $x^2$ (blau), $\frac{1}{x}$ (grün), $\frac{1}{x^2}$ (orange))?", 
answerOptions: ("Roter Graph", "Grüner Graph", "Blauer Graph", "Oranger Graph"),
correctAnswerIndex: 2 
)