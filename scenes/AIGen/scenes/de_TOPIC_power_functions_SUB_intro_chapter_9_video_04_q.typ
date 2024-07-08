#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Graphen von Potenzfunktionen]
#v(40pt)

#only("1-")[Welcher der folgenden Graphen gehört zur Funktion $1/x$?]
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

#only("3-")[a) Roter Graph]
#v(10pt)
#only("4-")[b) Grüner Graph]
#v(10pt)
#only("5-")[c) Blauer Graph]
#v(10pt)
#only("6-")[d) Oranger Graph]

#only("1")[#voiceover("In dieser Übung testen wir Dein Verständnis von Potenzfunktion-Graphen. Schau Dir die folgende Frage an:")]

#only("2")[#voiceover("Welcher der folgenden Graphen gehört zur Funktion eins durch x? Untersuche das Diagramm sorgfältig. Wir haben vier verschiedene Graphen: einen roten, einen blauen, einen grünen und einen orangenen. Jeder repräsentiert eine andere Potenzfunktion.")]

#only("3")[#voiceover("Könnte es der rote Graph sein?")]

#only("4")[#voiceover("Oder vielleicht der grüne Graph?")]

#only("5")[#voiceover("Vielleicht ist es der blaue Graph?")]

#only("6")[#voiceover("Oder zuletzt, könnte es der orangene Graph sein? Nimm Dir Zeit, jede Kurve zu analysieren und denke über die Eigenschaften der Funktion eins durch x nach, bevor Du Deine Wahl triffst.")]
]

//Typ: MC 
#questionDef( 
questionText: "Welcher der folgenden Graphen gehört zur Funktion $\frac{1}{x}$ (Diagramm, aber beschrifte nicht $x^2$ (rot), $x^3$ (blau), $\frac{1}{x}$ (grün), $\frac{1}{x^2}$ (orange))", 
answerOptions: ("Roter Graph", "Grüner Graph", "Blauer Graph", "Oranger Graph"),
correctAnswerIndex: 1 
)