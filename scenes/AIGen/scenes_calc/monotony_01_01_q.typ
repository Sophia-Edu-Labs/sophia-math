#import "../sophiatheme.typ": *

//apply theme (and default setup)
#show: sophia-theme

#slide()[
#text(size: 30pt, weight: "bold")[Monotonie]
#v(40pt)

#only("1")[
#voiceover("Betrachte die zwei hier dargestellten Funktionen.")
]

#v(40pt)

#only("1-")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

def f1(x):
    return -0.5*x**3 + 3

def f2(x):
    return -3*x + 1

x = np.linspace(-3, 3, 400)
y1 = f1(x)
y2 = f2(x)

plt.figure(figsize=(8, 6)) 
plt.plot(x, y1, color='red', label='$f(x) = 2x^2 + 3$')
plt.plot(x, y2, color='blue', label='$f(x) = -3x + 1$')

plt.grid(True)
plt.legend()

plt.show()
```,
width: 360pt),
)
]

#v(40pt)

#only("2")[
#voiceover("Ist die rote Funktion monoton steigend oder monoton fallend? Und ist die blaue Funktion monoton steigend oder monoton fallend?")
]

]

#questionDef(
questionText: "Welche Aussage trifft zu?", 
answerOptions: ("Rot: monoton steigend, Blau: monoton fallend", "Rot: monoton fallend, Blau: monoton steigend", "Beide monoton steigend", "Beide monoton fallend"),
correctAnswerIndex: 3,
llmCheckDetails: (
  fallbackOptionIndex: 0
),
)