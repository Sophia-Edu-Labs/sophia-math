#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Graph der kubischen Funktion]
#v(40pt)

#only("1-")[Welcher der folgenden Graphen gehört zur Funktion $x^3$?]
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

#only("3-")[a) Roter Graph]
#v(10pt)
#only("4-")[b) Grüner Graph]
#v(10pt)
#only("5-")[c) Blauer Graph]
#v(10pt)
#only("6-")[d) Oranger Graph]

#only("1")[#voiceover("In dieser Übung testen wir Dein Verständnis von kubischen Funktionen. Insbesondere möchten wir herausfinden, welcher Graph die Funktion x hoch drei darstellt.")]

#only("2")[#voiceover("Schau Dir dieses Diagramm an. Wir haben vier verschiedenfarbige Graphen: rot, blau, grün und orange. Jeder dieser Graphen stellt eine andere Funktion dar. Deine Aufgabe ist es, herauszufinden, welcher Graph zu x hoch drei gehört.")]

#only("3")[#voiceover("Ist es der rote Graph?")]

#only("4")[#voiceover("Oder vielleicht der grüne Graph?")]

#only("5")[#voiceover("Vielleicht ist es der blaue Graph?")]

#only("6")[#voiceover("Oder könnte es der orange Graph sein? Denke sorgfältig über die Eigenschaften einer kubischen Funktion nach und wie sie im Diagramm aussehen sollte.")]
]

//Typ: MC 
#questionDef( 
questionText: "Welcher der folgenden Graphen gehört zur Funktion $x^3$ (Diagramm, aber beschrifte $x^3$ nicht (rosa), $x^2$ (blau), $1/x$ (grün), $1/x^2$ (orange))?", 
answerOptions: ("Roter Graph", "Grüner Graph", "Blauer Graph", "Oranger Graph"),
correctAnswerIndex: 1 
)