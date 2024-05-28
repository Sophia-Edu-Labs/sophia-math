#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Einkommenseffekt]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Define the budget lines
m1 = 100 # Initial income
m2 = 120 # New income after price decrease
p1 = 10 # Initial price of good X
p2 = 8 # New price of good X
py = 5 # Price of good Y

x1 = np.linspace(0, m1/p1, 100)
y1 = (m1 - p1*x1) / py

x2 = np.linspace(0, m2/p2, 100)
y2 = (m2 - p2*x2) / py

# Create the plot
plt.figure(figsize=(8, 6))
plt.plot(x1, y1, color='blue', label='Initial Budget Line')
plt.plot(x2, y2, color='red', label='New Budget Line')

# Add labels and title
plt.xlabel('Good X')
plt.ylabel('Good Y')
plt.title('Income Effect of a Price Decrease')

# Add legend
plt.legend()

# Show the plot
plt.show()
```,
width: 360pt),
caption: [],
)
]
]
#only("1")[
#voiceover("Betrachte dieses Diagramm, das die Budgetlinien eines Konsumenten zeigt. Die blaue Linie stellt das anfängliche Budget dar, und die rote Linie repräsentiert das neue Budget nach einer Preissenkung von Gut X.")
]
#v(40pt)
#only("2-")[- Wenn der Preis von Gut X sinkt, verschiebt sich die Budgetlinie nach außen 📈]
#only("2")[
#voiceover("Wenn der Preis von Gut X sinkt, verschiebt sich die Budgetlinie nach außen. Das bedeutet, dass der Konsument bei jedem Preisniveau nun mehr von beiden Gütern kaufen kann.")
]
#v(20pt)
#only("3-")[- Die Kaufkraft des Konsumenten, also das reale Einkommen, hat sich erhöht 💰]
#only("3")[
#voiceover("Mit anderen Worten, die Kaufkraft des Konsumenten, also das reale Einkommen, hat sich erhöht. Er kann mit dem gleichen nominalen Einkommen mehr Güter kaufen.")
]
#v(20pt)
#only("4")[
#voiceover("Nun bist Du dran: Was passiert mit dem realen Einkommen des Konsumenten, wenn der Preis von Gut X sinkt? Erhöht es sich oder verringert es sich?")
]
]
]#questionDef(
questionText: "Was passiert mit dem realen Einkommen des Konsumenten, wenn der Preis von Gut $X$ sinkt?",
answerOptions: ("Erhöht sich", "Verringert sich"),
correctAnswerIndex: 0,
)