#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Graphen von Potenzfunktionen]
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

#only("3-")[a) Roter Graph]
#v(10pt)
#only("4-")[b) Grüner Graph]
#v(10pt)
#only("5-")[c) Blauer Graph]
#v(10pt)
#only("6-")[d) Oranger Graph]

#only("1")[#voiceover("Lass uns die Graphen von Potenzfunktionen erkunden. Wir werden eine Multiple-Choice-Frage dazu beantworten, welcher Graph zu $x^2$ gehört.")]

#only("2")[#voiceover("Schau dir diesen Graphen an. Wir haben vier verschiedene Funktionen dargestellt: eine rote, eine blaue, eine grüne und eine orange. Kannst du erkennen, welcher dieser Graphen die Funktion $x^2$ darstellt?")]

#only("3")[#voiceover("Ist es der rote Graph?")]

#only("4")[#voiceover("Oder vielleicht der grüne Graph?")]

#only("5")[#voiceover("Vielleicht ist es der blaue Graph?")]

#only("6")[#voiceover("Oder könnte es der orange Graph sein?")]
]

//Typ: MC 
#questionDef( 
questionText: "Welcher der folgenden Graphen gehört zur Funktion $x^2$ (zeichne, aber beschrifte $x^2$ (rot), $x^3$ (blau), $\frac{1}{x}$ (grün), $\frac{1}{x^2}$ (orange) nicht)?", 
answerOptions: ("Roter Graph", "Grüner Graph", "Blauer Graph", "Oranger Graph"),
correctAnswerIndex: 0 
)