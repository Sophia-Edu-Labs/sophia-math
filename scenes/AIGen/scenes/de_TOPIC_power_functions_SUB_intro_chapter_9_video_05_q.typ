#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Graphen von Potenzfunktionen]
#v(40pt)

#only("1-")[Welcher Graph gehört zur Funktion $1/x^2$?]
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

#only("3-")[a) Roter Graph]
#v(10pt)
#only("4-")[b) Grüner Graph]
#v(10pt)
#only("5-")[c) Blauer Graph]
#v(10pt)
#only("6-")[d) Oranger Graph]

#only("1")[#voiceover("In dieser Übung testen wir Dein Verständnis von Potenzfunktionen und deren Graphen. Schau Dir die folgende Frage an:")]

#only("2")[#voiceover("Welcher der folgenden Graphen gehört zur Funktion eins durch x Quadrat? Lass uns das Diagramm genau ansehen. Wir haben vier verschiedenfarbige Graphen: rot, blau, grün und orange.")]

#only("3")[#voiceover("Könnte es der rote Graph sein?")]

#only("4")[#voiceover("Oder vielleicht der grüne Graph?")]

#only("5")[#voiceover("Vielleicht ist es der blaue Graph?")]

#only("6")[#voiceover("Oder ist es der orange Graph? Denke an die Eigenschaften der Funktion eins durch x Quadrat und vergleiche sie mit diesen Graphen.")]
]

//Typ: MC 
#questionDef( 
questionText: "Welcher der folgenden Graphen gehört zur Funktion $\frac{1}{x^2}$ (plot, aber beschrifte nicht $x^2$ (rot), $x^3$ (blau), $\frac{1}{x}$ (grün), $\frac{1}{x^2}$ (orange))?", 
answerOptions: ("Roter Graph", "Grüner Graph", "Blauer Graph", "Oranger Graph"),
correctAnswerIndex: 3 
)