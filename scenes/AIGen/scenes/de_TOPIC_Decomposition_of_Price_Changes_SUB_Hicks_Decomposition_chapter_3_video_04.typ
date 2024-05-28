#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#only("1")[
#voiceover("Lass uns rekapitulieren, wie man die Hicks-Dekomposition grafisch darstellt.")
]
#text(size: 30pt, weight: "bold")[Rückblick auf die Hicks-Dekomposition]
#v(40pt)
#only("2-")[
- Grafische Darstellung 📈
]
#only("2")[
#voiceover("Die Hicks-Dekomposition kann grafisch mit Hilfe von Indifferenzkurven und Budgetbeschränkungen dargestellt werden.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Indifferenzkurven und Budgetbeschränkungen]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt
import numpy as np

# Generate data for indifference curves
x = np.linspace(0, 10, 100)
y1 = 10 / x
y2 = 20 / x

# Generate data for budget constraints
x_budget = np.linspace(0, 10, 100)
y_budget1 = 50 / x_budget
y_budget2 = 100 / x_budget

# Create the plot
fig, ax = plt.subplots(figsize=(8, 6))

# Plot indifference curves
ax.plot(x, y1, color='blue', label='Indifferenzkurve 1')
ax.plot(x, y2, color='blue', label='Indifferenzkurve 2')

# Plot budget constraints
ax.plot(x_budget, y_budget1, color='red', linestyle='--', label='Budgetbeschränkung 1')
ax.plot(x_budget, y_budget2, color='red', linestyle='--', label='Budgetbeschränkung 2')

# Add labels and legend
ax.set_xlabel('Gut X')
ax.set_ylabel('Gut Y')
ax.set_title('Indifferenzkurven und Budgetbeschränkungen')
ax.legend()

# Show the plot
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Indifferenzkurven repräsentieren Nutzenniveaus, während Budgetbeschränkungen die erschwinglichen Kombinationen von Gütern des Konsumenten zeigen.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Substitutions- und Einkommenseffekte]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt
import numpy as np

# Generate data for indifference curves
x = np.linspace(0, 10, 100)
y1 = 10 / x
y2 = 20 / x

# Generate data for budget constraints
x_budget = np.linspace(0, 10, 100)
y_budget1 = 50 / x_budget
y_budget2 = 100 / x_budget

# Create the plot
fig, ax = plt.subplots(figsize=(8, 6))

# Plot indifference curves
ax.plot(x, y1, color='blue', label='Indifferenzkurve 1')
ax.plot(x, y2, color='blue', label='Indifferenzkurve 2')

# Plot budget constraints
ax.plot(x_budget, y_budget1, color='red', linestyle='--', label='Ursprüngliche Budgetbeschränkung')
ax.plot(x_budget, y_budget2, color='red', linestyle='--', label='Neue Budgetbeschränkung')

# Plot initial and new consumption bundles
ax.scatter(5, 2, color='black', label='Ursprüngliches Bündel')
ax.scatter(6.67, 3, color='green', label='Substitutionseffekt')
ax.scatter(8, 2.5, color='purple', label='Einkommenseffekt')

# Add labels and legend
ax.set_xlabel('Gut X')
ax.set_ylabel('Gut Y')
ax.set_title('Substitutions- und Einkommenseffekte')
ax.legend()

# Show the plot
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Die Bewegung vom ursprünglichen zum neuen Konsumbündel kann in Substitutions- und Einkommenseffekte unterteilt werden.")
]
#only("2-")[
- Substitutionseffekt: Bewegung entlang der gleichen Indifferenzkurve 🔄
]
#only("2")[
#voiceover("Der Substitutionseffekt ist die Bewegung entlang der gleichen Indifferenzkurve, wenn sich der Preis ändert und der Nutzen konstant bleibt.")
]
#only("3-")[
- Einkommenseffekt: Bewegung zu einer höheren Indifferenzkurve aufgrund erhöhter Kaufkraft 💰
]
#only("3")[
#voiceover("Der Einkommenseffekt ist die Bewegung zu einer höheren Indifferenzkurve aufgrund erhöhter Kaufkraft nach der Preisänderung.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[
- Die Hicks-Dekomposition kann grafisch dargestellt werden 📊
]
#only("1")[
#voiceover("Zusammenfassend lässt sich sagen, dass die Hicks-Dekomposition grafisch dargestellt werden kann...")
]
#only("2-")[
- Indifferenzkurven repräsentieren Nutzenniveaus 📈
]
#only("2")[
#voiceover("...mit Indifferenzkurven, die Nutzenniveaus repräsentieren...")
]
#only("3-")[
- Budgetbeschränkungen zeigen erschwingliche Kombinationen 💸
]
#only("3")[
#voiceover("...und Budgetbeschränkungen, die erschwingliche Kombinationen von Gütern zeigen.")
]
#only("4-")[
- Substitutions- und Einkommenseffekte sind getrennt 🔍
]
#only("4")[
#voiceover("Die Substitutions- und Einkommenseffekte einer Preisänderung können getrennt und auf dem Graphen visualisiert werden.")
]
]