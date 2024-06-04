#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Heißluftballon 🎈]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Define the density function
def rho_air(h, a=1.247, b=0.000104):
    return a * np.exp(-b * h)

# Generate height values
h = np.linspace(0, 2000, 100)

# Calculate density values
rho = rho_air(h)

# Create the plot
plt.figure(figsize=(8, 6))
plt.plot(h, rho, color='blue', label='Luftdichte')

# Improve aesthetics
plt.grid(True, linestyle='--', linewidth=0.5)
plt.legend()
plt.title('Luftdichte vs. Höhe')
plt.xlabel('Höhe (m)')
plt.ylabel('Luftdichte (kg/m³)')

# Show the plot
plt.show()

```,
width: 360pt),
)
]
]
// Das Diagramm zeigt die Beziehung zwischen Luftdichte und Höhe anhand der gegebenen Exponentialfunktion.
#only("1")[
#voiceover("Betrachte einen Heißluftballon, der eine maximale Höhe von 2000 Metern erreichen kann.")
]
#only("2")[
#voiceover("Die Dichte der Luft in einer bestimmten Höhe h wird durch die Formel rho sub air von h gleich a mal e hoch minus b mal h gegeben.")
]
#only("3")[
#voiceover("Hierbei ist a gleich 1,247 Kilogramm pro Kubikmeter und b gleich 0,000104.")
]
#v(40pt)
#only("4-")[
#text(weight: "bold")[Frage 🤔]
]
#v(20pt)
#only("5-")[
Bestimme die Dichte der Luft in der maximalen Höhe, die der Ballon erreichen kann.
]
// Die Frage wird ab Folie 5 gestellt
#only("4")[
#voiceover("Nun, hier ist eine Frage für Dich:")
]
#only("5")[
#voiceover("Bestimme die Dichte der Luft in der maximalen Höhe, die der Ballon erreichen kann.")
]
]

]#questionDef(
questionText: "Was ist die Dichte der Luft (in kg/m³) in der maximalen Höhe von 2000 m, die der Ballon erreichen kann? Verwende $ \\rho_{air}(h) = a \cdot e^{-b \cdot h} $ mit $ a = 1.247 $ kg/m³ und $ b = 0.000104 $.",
answerOptions: ("$1.013$", "$0$"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 3,
tolerance: none
)
),
answerOptionMatcher:("$\\key{a}$"),
answerOptionsTypes: (
"a": "number"
)
),
)