#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Einkommenseffekt in der Hicks-Dekomposition 💰]
#v(40pt)
#only("1-")[- Zeigt, wie sich der Konsum aufgrund einer Änderung des Realeinkommens verändert]
#v(20pt)
#only("2-")[- Angepasst für den Substitutionseffekt]
#v(20pt)
#only("3-")[- Formel: $I E = x(p, m) - h(p, u)$]
#v(20pt)
#only("4-")[- $x(p, m)$: Marshall'sche Nachfrage (tatsächlicher Konsum)]
#v(20pt)
#only("5-")[- $h(p, u)$: Hicks'sche Nachfrage (für Substitutionseffekt angepasster Konsum)]
#only("1")[
#voiceover("Der Einkommenseffekt in der Hicks-Dekomposition zeigt, wie sich der Konsum aufgrund einer Änderung des Realeinkommens verändert.")
]
#only("2")[
#voiceover("Diese Änderung des Konsums wird für den Substitutionseffekt angepasst, was bedeutet, dass wir den Einfluss der Änderung des Realeinkommens isolieren.")
]
#only("3")[
#voiceover("Der Einkommenseffekt kann mit der Formel berechnet werden: Einkommenseffekt gleich x von p, m minus h von p, u.")
]
#only("4")[
#voiceover("Hierbei steht x von p, m für die Marshall'sche Nachfrage, also den tatsächlichen Konsum bei Preisen p und Einkommen m.")
]
#only("5")[
#voiceover("Hingegen steht h von p, u für die Hicks'sche Nachfrage, also den für den Substitutionseffekt angepassten Konsum bei Preisen p und Nutzenniveau u.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Grafische Darstellung 📈]
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

# Plot the initial budget constraint
x = np.linspace(0, 10, 100)
y1 = 10 - x
ax.plot(x, y1, color='blue', label='Initial Budget Constraint')

# Plot the new budget constraint after price change
y2 = 12 - 1.2 * x
ax.plot(x, y2, color='red', label='New Budget Constraint')

# Plot the indifference curves
x = np.linspace(0, 10, 100)
y3 = 8 / x
ax.plot(x, y3, color='green', label='Initial Indifference Curve')
y4 = 9.6 / x
ax.plot(x, y4, color='purple', label='New Indifference Curve')

# Mark the initial and final consumption points
ax.scatter(4, 6, color='blue', label='Initial Consumption')
ax.scatter(5, 6, color='red', label='Final Consumption')

# Add labels and legend
ax.set_xlabel('Good 1')
ax.set_ylabel('Good 2')
ax.set_title('Income Effect')
ax.legend()

# Display the plot
plt.show()
```,
width: 360pt),
)
]
]
#v(20pt)
#only("2-")[- Anfangsbudgetbeschränkung (blau) und Indifferenzkurve (grün)]
#v(20pt)
#only("3-")[- Neue Budgetbeschränkung (rot) nach Preisänderung]
#v(20pt)
#only("4-")[- Neue Indifferenzkurve (lila) auf gleichem Nutzenniveau]
#v(20pt)
#only("5-")[- Einkommenseffekt: Bewegung vom anfänglichen (blau) zum endgültigen (rot) Konsum]
#only("1")[
#voiceover("Schauen wir uns die grafische Darstellung des Einkommenseffekts an.")
]
#only("2")[
#voiceover("Wir beginnen mit der anfänglichen Budgetbeschränkung in Blau und der anfänglichen Indifferenzkurve in Grün.")
]
#only("3")[
#voiceover("Nach einer Preisänderung haben wir eine neue Budgetbeschränkung, dargestellt in Rot.")
]
#only("4")[
#voiceover("Um den Einkommenseffekt zu isolieren, zeichnen wir eine neue Indifferenzkurve in Lila auf dem gleichen Nutzenniveau wie die anfängliche.")
]
#only("5")[
#voiceover("Der Einkommenseffekt ist die Bewegung vom anfänglichen Konsumpunkt in Blau zum endgültigen Konsumpunkt in Rot entlang der neuen Indifferenzkurve.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung 🎬]
#v(40pt)
#only("1-")[- Der Einkommenseffekt zeigt die Änderung des Konsums aufgrund einer Änderung des Realeinkommens]
#v(20pt)
#only("2-")[- Angepasst für den Substitutionseffekt]
#v(20pt)
#only("3-")[- Berechnet als Differenz zwischen Marshall'scher und Hicks'scher Nachfrage]
#v(20pt)
#only("4-")[- Grafisch ist es die Bewegung entlang der neuen Indifferenzkurve]
#only("1")[
#voiceover("Zusammenfassend zeigt der Einkommenseffekt in der Hicks-Dekomposition die Änderung des Konsums aufgrund einer Änderung des Realeinkommens.")
]
#only("2")[
#voiceover("Diese Änderung wird für den Substitutionseffekt angepasst, um den Einfluss der Änderung des Realeinkommens zu isolieren.")
]
#only("3")[
#voiceover("Der Einkommenseffekt wird als Differenz zwischen der Marshall'schen Nachfrage und der Hicks'schen Nachfrage berechnet.")
]
#only("4")[
#voiceover("Grafisch wird der Einkommenseffekt durch die Bewegung entlang der neuen Indifferenzkurve vom anfänglichen zum endgültigen Konsumpunkt dargestellt.")
]
]