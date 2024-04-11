#import "../sophiatheme.typ": *
#show: sophia-theme

#slide()[
#text(size: 30pt, weight: "bold")[Krümmung bestimmen]
#v(40pt)

#only("1-")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-3, 3, 100)

def f(x):
    return x**2 + x

plt.figure(figsize=(8, 6))
plt.plot(x, f(x))
plt.grid()
plt.show()
```,
width: 360pt)
)
]

#only("1")[
#voiceover("Betrachte den Graphen dieser Funktion. Ist die Funktion linksgekrümmt, rechtsgekrümmt oder keines von beiden?")
]
]

#questionDef(
questionText: "Ist die Funktion $f(x) = x^2 + x$ linksgekrümmt, rechtsgekrümmt oder keines von beiden?", 
answerOptions: ("Linksgekrümmt", "Rechtsgekrümmt", "Keines von beiden"),
correctAnswerIndex: 0,
)