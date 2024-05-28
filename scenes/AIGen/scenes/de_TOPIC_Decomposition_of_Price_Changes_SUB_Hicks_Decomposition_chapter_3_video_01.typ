#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Hicks-Zerlegung: Grafische Darstellung]
#v(40pt)
#only("1-")[- Verwendet Indifferenzkurven und Budgetbeschränkungen 📈]
#v(20pt)
#only("2-")[- Indifferenzkurven: Stellen Nutzenniveaus dar 😊]
#v(20pt)
#only("3-")[- Budgetbeschränkungen: Stellen erschwingliche Kombinationen dar 💰]
#only("1")[
#voiceover("Um die Hicks-Zerlegung grafisch darzustellen, verwenden wir Indifferenzkurven und Budgetbeschränkungen.")
]
#only("2")[
#voiceover("Indifferenzkurven stellen verschiedene Nutzenniveaus oder Zufriedenheitsgrade des Konsumenten dar.")
]
#only("3")[
#voiceover("Budgetbeschränkungen zeigen die Kombinationen von Gütern, die sich der Konsument bei gegebenem Einkommen und den Preisen der Güter leisten kann.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Grafische Darstellung der Hicks-Zerlegung]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt
import numpy as np

# Create a figure and axis
fig, ax = plt.subplots(figsize=(6, 6))

# Define the initial budget constraint
x = np.linspace(0, 10, 100)
y1 = 10 - 0.5 * x

# Define the new budget constraint
y2 = 20 - 1 * x

# Define the initial indifference curve
x_ic1 = np.linspace(0, 20, 100)
y_ic1 = 200 / x_ic1

# Define the new indifference curve
x_ic2 = np.linspace(0, 20, 100)
y_ic2 = 400 / x_ic2

# Plot the initial budget constraint and indifference curve
ax.plot(x, y1, color='blue', linewidth=2, label='Initial Budget')
ax.plot(x_ic1, y_ic1, color='red', linewidth=2, label='Initial IC')

# Plot the new budget constraint and indifference curve
ax.plot(x, y2, color='green', linewidth=2, label='New Budget')
ax.plot(x_ic2, y_ic2, color='purple', linewidth=2, label='New IC')

# Find and plot the initial optimal point
opt1 = np.argmin(np.abs(y1 - y_ic1[:len(y1)]))
ax.scatter(x[opt1], y1[opt1], color='black', s=100, label='Initial Optimum')

# Find and plot the intermediate optimal point
opt2 = np.argmin(np.abs(y2 - y_ic1[:len(y2)]))
ax.scatter(x[opt2], y2[opt2], color='black', s=100, marker='s', label='Intermediate Optimum')

# Find and plot the final optimal point
opt3 = np.argmin(np.abs(y2 - y_ic2[:len(y2)]))
ax.scatter(x[opt3], y2[opt3], color='black', s=100, marker='*', label='Final Optimum')

# Annotate the substitution effect
ax.annotate('Substitution Effect', xy=(x[opt2], y2[opt2]), xytext=(x[opt2]+1, y2[opt2]+1),
            arrowprops=dict(facecolor='black', shrink=0.05))

# Annotate the income effect
ax.annotate('Income Effect', xy=(x[opt3], y2[opt3]), xytext=(x[opt3]+1, y2[opt3]-1),
            arrowprops=dict(facecolor='black', shrink=0.05))

# Add labels and title
ax.set_xlabel('Good X')
ax.set_ylabel('Good Y')
ax.set_title('Hicks Decomposition')

# Add legend
ax.legend()

# Display the plot
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("So stellen wir die Hicks-Zerlegung grafisch dar:")
]
#only("2")[
#voiceover("Wir beginnen mit einer anfänglichen Budgetbeschränkung und einer anfänglichen Indifferenzkurve. Der Punkt, an dem sie sich berühren, ist das anfängliche Optimum.")
]
#only("3")[
#voiceover("Wenn der Preis des Gutes X sinkt, dreht sich die Budgetbeschränkung nach außen. Wir finden das Zwischenoptimum auf der neuen Budgetbeschränkung, wobei die anfängliche Indifferenzkurve beibehalten wird. Diese Bewegung stellt den Substitutionseffekt dar.")
]
#only("4")[
#voiceover("Schließlich finden wir das endgültige Optimum auf der neuen Budgetbeschränkung und der neuen, höheren Indifferenzkurve. Die Bewegung vom Zwischen- zum Endoptimum stellt den Einkommenseffekt dar.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Hicks-Zerlegung: Grafisch dargestellt mit Indifferenzkurven und Budgetbeschränkungen 📊]
#v(20pt)
#only("2-")[- Substitutionseffekt: Bewegung entlang der anfänglichen Indifferenzkurve 🔄]
#v(20pt)
#only("3-")[- Einkommenseffekt: Bewegung zur höheren Indifferenzkurve 📈]
#only("1")[
#voiceover("Zusammenfassend wird die Hicks-Zerlegung grafisch mit Indifferenzkurven und Budgetbeschränkungen dargestellt.")
]
#only("2")[
#voiceover("Der Substitutionseffekt wird durch die Bewegung entlang der anfänglichen Indifferenzkurve gezeigt, wenn sich die Budgetbeschränkung ändert.")
]
#only("3")[
#voiceover("Der Einkommenseffekt wird durch die Bewegung zu einer höheren Indifferenzkurve gezeigt, wobei die neue Budgetbeschränkung beibehalten wird.")
]
]