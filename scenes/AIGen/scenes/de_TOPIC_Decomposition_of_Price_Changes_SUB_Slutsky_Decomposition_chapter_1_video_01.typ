#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Substitutionseffekt]
#v(40pt)
#only("1-")[- Tritt auf, wenn eine Preisänderung ein Gut relativ billiger oder teurer macht 💰]
#v(20pt)
#only("2-")[- Führt zu einer Veränderung im Konsum 🛒]
#only("1")[
#voiceover("Der Substitutionseffekt tritt auf, wenn eine Preisänderung ein Gut im Vergleich zu anderen Gütern relativ billiger oder teurer macht.")
]
#only("2")[
#voiceover("Diese relative Preisänderung führt dazu, dass die Konsumenten ihren Konsum des Gutes ändern.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel]
#v(40pt)
#only("1-")[- Betrachte zwei Güter: 🍎 Äpfel und 🍐 Birnen]
#v(20pt)
#only("2-")[- Wenn der Preis von 🍎 sinkt, werden sie relativ billiger als 🍐]
#v(20pt)
#only("3-")[- Konsumenten werden mehr 🍎 und weniger 🍐 kaufen]
#only("1")[
#voiceover("Betrachten wir ein Beispiel mit zwei Gütern: Äpfel und Birnen.")
]
#only("2")[
#voiceover("Wenn der Preis von Äpfeln sinkt, werden Äpfel relativ billiger als Birnen.")
]
#only("3")[
#voiceover("Infolgedessen werden die Konsumenten dazu tendieren, mehr Äpfel und weniger Birnen zu kaufen.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Grafische Darstellung]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt
import numpy as np

# Create a figure and axis
fig, ax = plt.subplots()

# Plot the initial budget line
x = np.linspace(0, 10, 100)
y = 10 - x
ax.plot(x, y, color='blue', label='Initial Budget Line')

# Plot the new budget line after the price change
y_new = 15 - 1.5*x
ax.plot(x, y_new, color='red', label='New Budget Line')

# Add labels and legend
ax.set_xlabel('Quantity of Apples')
ax.set_ylabel('Quantity of Pears')
ax.set_title('Substitution Effect')
ax.legend()

# Show the plot
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Dieses Diagramm zeigt den Substitutionseffekt. Die blaue Linie stellt die anfängliche Budgetbeschränkung des Konsumenten dar. Nach der Preissenkung der Äpfel dreht sich die Budgetlinie nach außen, wie durch die rote Linie gezeigt.")
]
#only("2")[
#voiceover("Der Konsument kann sich jetzt mehr Äpfel für jede Birne leisten, die er aufgibt. Dies führt zu einer Veränderung im optimalen Konsumbündel, wobei mehr Äpfel und weniger Birnen konsumiert werden.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Substitutionseffekt: Veränderung im Konsum aufgrund relativer Preisänderungen 📉]
#v(20pt)
#only("2-")[- Tritt auf, wenn ein Gut relativ billiger oder teurer wird 💸]
#v(20pt)
#only("3-")[- Führt dazu, dass Konsumenten zum relativ billigeren Gut substituieren 🔄]
#only("1")[
#voiceover("Zusammenfassend ist der Substitutionseffekt die Veränderung im Konsum, die aufgrund relativer Preisänderungen auftritt.")
]
#only("2")[
#voiceover("Er tritt auf, wenn ein Gut im Vergleich zu anderen Gütern relativ billiger oder teurer wird.")
]
#only("3")[
#voiceover("Dies führt dazu, dass Konsumenten zum relativ billigeren Gut und weg vom relativ teureren Gut substituieren.")
]
]