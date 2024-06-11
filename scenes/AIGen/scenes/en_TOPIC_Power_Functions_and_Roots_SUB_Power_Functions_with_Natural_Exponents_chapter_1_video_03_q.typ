#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Power Function]
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
plt.title('Graph of f(x) = x^4')
plt.xlabel('x')
plt.ylabel('f(x)')
plt.tight_layout()
plt.show()
```,
width: 360pt))
]
]
]
// The graph of f(x) = x^4 is shown using matplotlib
#v(40pt)
#only("2-")[
#text(size: 24pt)[What is the shape of the graph of $f(x) = x^4$? 🤔]
]
// The question is posed from slide 2 onward
#only("1")[
#voiceover("Consider the power function f of x equals x to the fourth power.")
]
#only("2")[
#voiceover("What is the shape of the graph of this function?")
]
]#questionDef(
questionText: "What is the shape of the graph of $f(x) = x^4$?",
answerOptions: ("Parabola, but steeper than $f(x) = x^2$", "incorrect answer"),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)