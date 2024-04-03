#import "../sophiatheme.typ": *
#show: sophia-theme

#slide()[
#text(size: 30pt, weight: "bold")[Monotonie bestimmen]
#v(40pt)

#only("1")[
#voiceover("Betrachte nun diese Funktion.")
]

#v(40pt)
#only("1-")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

def f(x):
    return 0.5*x**3 + x

x = np.linspace(-3, 3, 400)
y = f(x)

plt.figure(figsize=(8, 6))
plt.plot(x, y)
plt.grid(True)
plt.title("$f(x) = 0.5x^3 + x$")
plt.show()
```,
width: 360pt)
)
]

#v(40pt)
#only("2")[
#voiceover("Ist die Funktion monoton wachsend oder monoton fallend? Oder ist sie streng monoton wachsend oder streng monoton fallend? Oder keines davon?")
]
]

#questionDef(
questionText: "Was trifft auf die Funktion $f(x) = 0.5x^3 + x$ zu?", 
answerOptions: ("Monoton wachsend", "Monoton fallend", "Streng monoton wachsend", "Streng monoton fallend", "Keins davon"),
correctAnswerIndex: 2,
llmCheckDetails: (
  fallbackOptionIndex: 0
),
)