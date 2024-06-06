#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Potenzfunktion]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Generate x values
x = np.linspace(-2, 2, 100)

# Calculate y values for x^4
y = x**4

# Create the plot
plt.figure(figsize=(6, 6))
plt.plot(x, y, color='blue', label='f(x) = x^4')
plt.grid(True)
plt.axhline(0, color='black', lw=0.5)
plt.axvline(0, color='black', lw=0.5)
plt.legend()
plt.title('Graph von f(x) = x^4')
plt.xlabel('x')
plt.ylabel('f(x)')
plt.tight_layout()
plt.show()
```,
width: 360pt))
]
]
]
// Der Graph von f(x) = x^4 wird mit matplotlib gezeigt
#v(40pt)
#only("2-")[
#text(size: 24pt)[Wie sieht der Graph von $f(x) = x^4$ aus? 🤔]
]
// Die Frage wird ab Folie 2 gestellt
#only("1")[
#voiceover("Betrachte die Potenzfunktion f von x gleich x hoch vier.")
]
#only("2")[
#voiceover("Wie sieht der Graph dieser Funktion aus?")
]
]#questionDef(
questionText: "Wie sieht der Graph von $f(x) = x^4$ aus?",
answerOptions: ("Parabel, aber steiler als $f(x) = x^2$", "Gerade Linie"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("Die Form ist eine \key{a}, steiler als $f(x) = x^2$."),
answerOptionsTypes: (
"a": "text"
)
),
)