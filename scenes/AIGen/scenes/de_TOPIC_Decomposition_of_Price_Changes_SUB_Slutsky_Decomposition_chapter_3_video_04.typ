#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung der Slutsky-Zerlegung]

#only("1")[
#voiceover("Lass uns die wichtigsten Punkte der Slutsky-Zerlegung und wie sie die Gesamtauswirkung einer Preisänderung aufschlüsselt, rekapitulieren.")
]

#v(40pt)

#only("2-")[- Gesamteffekt = Substitutionseffekt + Einkommenseffekt]

#only("2")[
#voiceover("Der Gesamteffekt einer Preisänderung ist die Summe aus Substitutionseffekt und Einkommenseffekt.")
]

#v(20pt)

#only("3-")[- Substitutionseffekt: Änderung des Konsums aufgrund relativer Preisänderungen 📈]

#only("3")[
#voiceover("Der Substitutionseffekt ist die Änderung des Konsums, die sich aus einer Änderung der relativen Preise der Güter ergibt, wobei der Nutzen konstant bleibt.")
]

#v(20pt)

#only("4-")[- Einkommenseffekt: Änderung des Konsums aufgrund einer Änderung des Realeinkommens 💰]

#only("4")[
#voiceover("Der Einkommenseffekt ist die Änderung des Konsums aufgrund der Änderung des Realeinkommens des Konsumenten, die durch die Preisänderung verursacht wird.")
]

#v(40pt)

#only("5-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt
import numpy as np

# Create a figure and axis
fig, ax = plt.subplots(figsize=(6, 6))

# Set the limits of the plot
ax.set_xlim(0, 10)
ax.set_ylim(0, 10)

# Add labels and title
ax.set_xlabel('Gut X')
ax.set_ylabel('Gut Y')
ax.set_title('Slutsky-Zerlegung')

# Plot the initial budget line
x = np.linspace(0, 10, 100)
y = 10 - x
ax.plot(x, y, color='blue', label='Ursprüngliche Budgetlinie')

# Plot the new budget line after price change
y_new = 12.5 - 1.25 * x
ax.plot(x, y_new, color='red', label='Neue Budgetlinie')

# Plot the initial optimal bundle
ax.scatter(5, 5, color='blue', label='Ursprüngliches Bündel')

# Plot the substitution effect
ax.scatter(6, 4, color='green', label='Substitutionseffekt')

# Plot the income effect
ax.scatter(7, 5, color='orange', label='Einkommenseffekt')

# Plot the new optimal bundle
ax.scatter(7, 5, color='red', label='Neues Bündel')

# Add arrows for substitution and income effects
ax.annotate('', xy=(6, 4), xytext=(5, 5), arrowprops=dict(facecolor='green', shrink=0.05))
ax.annotate('', xy=(7, 5), xytext=(6, 4), arrowprops=dict(facecolor='orange', shrink=0.05))

# Add a legend
ax.legend()

plt.show()
```,
width: 360pt),
)
]
]

#only("5")[
#voiceover("Dieses Diagramm veranschaulicht die Slutsky-Zerlegung. Der blaue Punkt stellt das ursprüngliche Bündel dar. Wenn sich der Preis ändert, verschiebt sich die Budgetlinie von blau nach rot. Der grüne Punkt zeigt den Substitutionseffekt, der sich entlang der gleichen Indifferenzkurve bewegt. Der orange Punkt stellt den Einkommenseffekt dar, der sich zu einer neuen Indifferenzkurve bewegt. Der rote Punkt ist das neue optimale Bündel nach der Preisänderung.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse]

#only("1-")[- Die Slutsky-Zerlegung trennt die Wirkung einer Preisänderung in Substitutions- und Einkommenseffekte 🔍]

#only("1")[
#voiceover("Denke daran, die Slutsky-Zerlegung trennt die Wirkung einer Preisänderung in Substitutions- und Einkommenseffekte.")
]

#v(20pt)

#only("2-")[- Substitutionseffekt: Änderung der relativen Preise bei konstantem Nutzen 📈]

#only("2")[
#voiceover("Der Substitutionseffekt erfasst die Änderung des Konsums aufgrund der Änderung der relativen Preise, wobei der Nutzen konstant bleibt.")
]

#v(20pt)

#only("3-")[- Einkommenseffekt: Änderung des Realeinkommens 💰]

#only("3")[
#voiceover("Der Einkommenseffekt erfasst die Änderung des Konsums aufgrund der Änderung des Realeinkommens des Konsumenten.")
]

#v(20pt)

#only("4-")[- Gesamteffekt = Substitutionseffekt + Einkommenseffekt ➕]

#only("4")[
#voiceover("Und schließlich ist der Gesamteffekt der Preisänderung die Summe aus Substitutionseffekt und Einkommenseffekt.")
]

#v(40pt)

#only("5-")[
#text(size: 24pt)[Das Verständnis der Slutsky-Zerlegung ist entscheidend für die Analyse des Konsumentenverhaltens bei Preisänderungen. 📊👥]]

#only("5")[
#voiceover("Das Verständnis der Slutsky-Zerlegung ist entscheidend für die Analyse des Konsumentenverhaltens bei Preisänderungen.")
]
]
]