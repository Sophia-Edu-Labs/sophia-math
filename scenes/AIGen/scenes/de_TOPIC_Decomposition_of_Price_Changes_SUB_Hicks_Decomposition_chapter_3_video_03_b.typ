#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Substitutionseffekt in der Hicks-Dekomposition]
#v(40pt)
Was stellt der Substitutionseffekt in einem Hicks-Dekompositionsdiagramm dar?
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-1")[a) Änderung des Konsums aufgrund einer Änderung des Realeinkommens]#only("2-")[#text(fill:red)[a) Änderung des Konsums aufgrund einer Änderung des Realeinkommens]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann grün, weil sie richtig ist.
#only("-2")[b) Änderung des Konsums bei konstantem Nutzen]#only("3-")[#text(fill:green)[b) Änderung des Konsums bei konstantem Nutzen]]
#v(10pt)  
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-3")[c) Änderung des Konsums aufgrund einer Änderung der Präferenzen]#only("4-")[#text(fill:red)[c) Änderung des Konsums aufgrund einer Änderung der Präferenzen]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-4")[d) Änderung des Konsums aufgrund einer Änderung der nachgefragten Menge]#only("5-")[#text(fill:red)[d) Änderung des Konsums aufgrund einer Änderung der nachgefragten Menge]]

#only("1")[#voiceover("Großartig! Das ist die richtige Antwort.")]
#only("2")[#voiceover("Option a) ist falsch. Die Änderung des Konsums aufgrund einer Änderung des Realeinkommens wird durch den Einkommenseffekt dargestellt, nicht durch den Substitutionseffekt.")]
#only("3")[#voiceover("Option b) ist richtig. Der Substitutionseffekt zeigt tatsächlich die Änderung des Konsums bei konstantem Nutzen.")]
#only("4")[#voiceover("Option c) ist falsch. Änderungen der Präferenzen werden in der Hicks-Dekomposition nicht berücksichtigt, da davon ausgegangen wird, dass die Präferenzen konstant bleiben.")]
#only("5")[#voiceover("Option d) ist ebenfalls falsch. Der Substitutionseffekt zeigt nicht direkt Änderungen der nachgefragten Menge, sondern Änderungen des Konsums aufgrund von Preisänderungen bei konstantem Nutzen.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung des Substitutionseffekts 📊]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create a new figure and axis
fig, ax = plt.subplots(figsize=(8, 6))

# Define the budget constraint lines
x = np.linspace(0, 10, 100)
y1 = 10 - 0.5 * x  # Original budget line
y2 = 20 - 1.5 * x  # New budget line

# Plot the budget constraint lines
ax.plot(x, y1, color='blue', linestyle='-', label='Original Budget Line')
ax.plot(x, y2, color='red', linestyle='-', label='New Budget Line')

# Define the indifference curves
x = np.linspace(0.1, 10, 100)
y1 = 20 / x  # Original indifference curve
y2 = 40 / x  # New indifference curve

# Plot the indifference curves
ax.plot(x, y1, color='green', linestyle='--', label='Original Indifference Curve')
ax.plot(x, y2, color='purple', linestyle='--', label='New Indifference Curve')

# Highlight the substitution effect
ax.annotate('Substitution Effect', xy=(4, 4), xytext=(5, 5),
            arrowprops=dict(facecolor='black', shrink=0.05))

# Add labels and title
ax.set_xlabel('Good X')
ax.set_ylabel('Good Y')
ax.set_title('Hicks Decomposition - Substitution Effect')

# Add legend
ax.legend()

# Display the plot
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[- Der Substitutionseffekt ist die Bewegung entlang der Indifferenzkurve. 🚶]
#only("2-")[- Er zeigt die Änderung des Konsums aufgrund der Änderung der relativen Preise. 💰]
#only("3-")[- Der Nutzen bleibt entlang der Indifferenzkurve konstant. 😊]

#only("1")[#voiceover("Lass uns den Substitutionseffekt in einem Hicks-Dekompositionsdiagramm visualisieren. Der Substitutionseffekt wird durch die Bewegung entlang der Indifferenzkurve vom ursprünglichen optimalen Bündel zum neuen optimalen Bündel dargestellt.")]
#only("2")[#voiceover("Diese Bewegung erfasst die Änderung des Konsums, die aufgrund der Änderung der relativen Preise auftritt, während der Nutzen konstant bleibt.")]
#only("3")[#voiceover("Denke daran, dass entlang einer Indifferenzkurve der Konsument gleichermaßen zufrieden ist, was bedeutet, dass der Nutzen konstant bleibt. Der Substitutionseffekt isoliert die Auswirkung der Preisänderung auf den Konsum, unter der Annahme, dass der Konsument das gleiche Zufriedenheitsniveau beibehält.")]
]