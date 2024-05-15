#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Konvergenz in der Physik]
#v(40pt)
#only("1-")[Wenn eine Zahlenfolge in der Physik die Geschwindigkeit eines Objekts beschreibt und konvergiert, was bedeutet das für das Objekt? 🤔]
#v(20pt)
#only("2-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Generate data
x = np.linspace(0, 10, 100)
y = 1 - np.exp(-x)

# Create the plot
plt.figure(figsize=(8, 6))
plt.plot(x, y, color='blue', linewidth=2, label='Geschwindigkeit')
plt.axhline(y=1, color='red', linestyle='--', linewidth=1, label='Grenzwert')

# Add labels and legend
plt.xlabel('Zeit', fontsize=14)
plt.ylabel('Geschwindigkeit', fontsize=14)
plt.title('Konvergenz der Geschwindigkeit', fontsize=16)
plt.legend(fontsize=12)

# Display the plot
plt.tight_layout()
plt.show()
```,
width: 360pt),
caption: [Die Geschwindigkeit nähert sich einem Grenzwert an.],
)
]
]
]
#only("1")[
#voiceover("Stellen Sie sich vor, eine Zahlenfolge in der Physik beschreibt die Geschwindigkeit eines Objekts über die Zeit. Wenn diese Zahlenfolge konvergiert, was bedeutet das für das Objekt?")
]
#only("2")[
#voiceover("Hier sehen Sie eine Grafik, die die Geschwindigkeit eines Objekts über die Zeit darstellt. Beachten Sie, wie sich die Geschwindigkeit einem bestimmten Wert annähert - dem Grenzwert. Was könnte dieser Grenzwert in der Realität bedeuten?")
]
]#questionDef(
// use latex Notation instead of Typst Notation here
questionText: "Wenn eine Zahlenfolge in der Physik die Geschwindigkeit eines Objekts beschreibt und konvergiert, was bedeutet das für das Objekt?",
answerOptions: ("Das Objekt erreicht eine konstante Geschwindigkeit.", "Das Objekt beschleunigt unendlich."),
correctAnswerIndex: 0,  
)