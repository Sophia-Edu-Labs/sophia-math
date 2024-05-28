#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Übung]
#v(40pt)
#align(center)[
Wenn der Preis von Gut X sinkt, was passiert mit dem Realeinkommen des Konsumenten?
]
#v(20pt)
#align(center)[
a) Steigt
]
#v(10pt)
#align(center)[  
b) Sinkt
]
#only("1")[
#voiceover("Leider ist das nicht korrekt. Lass uns sehen, warum.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 1: Realeinkommen verstehen]
#v(40pt)
#only("1-")[- Realeinkommen ist die Kaufkraft des Nominaleinkommens 💰]
#v(20pt)
#only("2-")[- Es hängt sowohl vom Einkommen als auch von den Preisen ab 📈📉]
#only("1")[
#voiceover("Zuerst lass uns verstehen, was Realeinkommen ist. Realeinkommen bezieht sich auf die Kaufkraft des Nominaleinkommens eines Konsumenten.")
]
#only("2")[
#voiceover("Es hängt sowohl vom Einkommen des Konsumenten als auch von den Preisen der Güter ab, die er kauft.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 2: Preisänderung analysieren]
#v(40pt)
#only("1-")[- Preis von Gut X sinkt ⬇]
#v(20pt)
#only("2-")[- Konsument kann mehr von Gut X mit dem gleichen Einkommen kaufen 🛒]
#only("1")[
#voiceover("Nun lass uns das gegebene Szenario analysieren. Der Preis von Gut X sinkt.")
]
#only("2")[
#voiceover("Das bedeutet, dass der Konsument jetzt mehr von Gut X mit dem gleichen Einkommen kaufen kann.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 3: Schlussfolgerung]
#v(40pt)
#only("1-")[- Kaufkraft (Realeinkommen) steigt ⬆]
#v(20pt)
#only("2-")[- Die richtige Antwort ist a) Steigt ✅]
#only("1")[
#voiceover("Als Ergebnis steigt die Kaufkraft des Konsumenten, also das Realeinkommen.")
]
#only("2")[
#voiceover("Daher ist die richtige Antwort a) Steigt.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Set up the figure
fig, ax = plt.subplots(figsize=(6, 6))

# Define the budget line before price decrease
income = 100
price_x_before = 10
price_y = 5
x_max_before = income / price_x_before
y_max = income / price_y
x_before = np.linspace(0, x_max_before, 100)
y_before = (income - price_x_before * x_before) / price_y

# Define the budget line after price decrease
price_x_after = 5
x_max_after = income / price_x_after
x_after = np.linspace(0, x_max_after, 100)
y_after = (income - price_x_after * x_after) / price_y

# Plot the budget lines
ax.plot(x_before, y_before, color='blue', label='Before price decrease')
ax.plot(x_after, y_after, color='green', label='After price decrease')

# Add labels and legend
ax.set_xlabel('Good X')
ax.set_ylabel('Good Y')
ax.set_title('Budget Line: Price Decrease of Good X')
ax.legend()

# Show the plot
plt.show()
```, width: 360pt),
)
]
]
#only("1")[
#voiceover("Dieses Diagramm zeigt die Budgetlinien des Konsumenten vor und nach der Preissenkung von Gut X. Die grüne Linie, die das Budget nach der Preissenkung darstellt, ermöglicht es dem Konsumenten, mehr von beiden Gütern zu kaufen, was eine Erhöhung des Realeinkommens widerspiegelt.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse]
#v(40pt)
#only("1-")[- Realeinkommen bezieht sich auf die Kaufkraft 🛍]
#v(20pt)
#only("2-")[- Niedrigere Preise bedeuten höheres Realeinkommen 📉⬆]
#v(20pt)
#only("3-")[- Preise sind wichtig, nicht nur das Nominaleinkommen 💲]
#only("1")[
#voiceover("Denke daran, Realeinkommen bezieht sich auf die Kaufkraft deines Geldes.")
]
#only("2")[
#voiceover("Wenn die Preise sinken, steigt dein Realeinkommen, auch wenn dein Nominaleinkommen gleich bleibt.")
]
#only("3")[
#voiceover("Berücksichtige also immer die Preise und nicht nur die Zahl auf deinem Gehaltszettel, wenn du über dein wirtschaftliches Wohlbefinden nachdenkst.")
]
]