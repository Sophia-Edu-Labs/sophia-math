#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Hicks-Dekomposition]
#v(40pt)
#only("1-")[- Trennt den Effekt einer Preisänderung in:]
#v(20pt)
#only("2-")[  - Substitutionseffekt]
#v(20pt)
#only("3-")[  - Einkommenseffekt]
#only("1")[
#voiceover("Großartig! Das ist die richtige Antwort. Die Hicks-Dekomposition trennt den Effekt einer Preisänderung in zwei Komponenten:")
]
#only("2")[
#voiceover("Den Substitutionseffekt und")
]
#only("3")[
#voiceover("den Einkommenseffekt.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Substitutionseffekt]
#v(40pt)
#only("1-")[- Änderung des Konsums aufgrund einer Änderung der relativen Preise 🔄]
#v(20pt)
#only("2-")[- Hält den Nutzen konstant 📈]
#v(20pt)
#only("3-")[- Wird zuerst in der Hicks-Dekomposition isoliert ✅]
#only("1")[
#voiceover("Der Substitutionseffekt erfasst die Änderung des Konsums aufgrund der Änderung der relativen Preise, während der Nutzen konstant gehalten wird.")
]
#only("2")[
#voiceover("Das bedeutet, wir betrachten, wie der Konsument sein Konsumbündel als Reaktion auf die Preisänderung anpassen würde, wenn er entschädigt würde, um das gleiche Zufriedenheits- oder Nutzenniveau beizubehalten.")
]
#only("3")[
#voiceover("In der Hicks-Dekomposition wird der Substitutionseffekt zuerst isoliert. Wenn also der Preis von Gut X steigt,")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Isolierung des Substitutionseffekts]
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

# Define the budget lines
x = np.linspace(0, 10, 100)
y1 = 10 - x
y2 = 5 - 0.5*x

# Plot the budget lines
ax.plot(x, y1, color='blue', label='Original Budget Line')
ax.plot(x, y2, color='red', label='New Budget Line')

# Define the indifference curve
x_ic = np.linspace(0, 10, 100)
y_ic = 10 / x_ic

# Plot the indifference curve
ax.plot(x_ic, y_ic, color='green', label='Indifference Curve')

# Find and plot the original optimal point
x_opt1 = 5
y_opt1 = 5
ax.scatter(x_opt1, y_opt1, color='blue', label='Original Optimal Point')

# Find and plot the new optimal point after substitution effect
x_opt2 = 10/3
y_opt2 = 10/3
ax.scatter(x_opt2, y_opt2, color='purple', label='New Optimal Point (Substitution Effect)')

# Annotate the substitution effect arrow
ax.annotate('Substitution Effect', xy=(x_opt2, y_opt2), xytext=(x_opt2+1, y_opt2-1),
            arrowprops=dict(facecolor='purple', shrink=0.05))

# Add labels and title
ax.set_xlabel('Good X')
ax.set_ylabel('Good Y')
ax.set_title('Hicks Decomposition - Substitution Effect')

# Add legend
ax.legend()

# Show the plot
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("isolieren wir zuerst den Substitutionseffekt, indem wir das neue optimale Konsumbündel auf der gleichen Indifferenzkurve finden. Dies wird durch den violetten Punkt und Pfeil im Diagramm gezeigt.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Einkommenseffekt]
#v(40pt)
#only("1-")[- Änderung des Konsums aufgrund einer Änderung der Kaufkraft 💰]
#v(20pt)
#only("2-")[- Tritt nach dem Substitutionseffekt auf 🕒]
#only("1")[
#voiceover("Nach der Isolierung des Substitutionseffekts betrachten wir den Einkommenseffekt. Der Einkommenseffekt erfasst die Änderung des Konsums aufgrund der Änderung der Kaufkraft.")
]
#only("2")[
#voiceover("In der Hicks-Dekomposition wird der Einkommenseffekt betrachtet, nachdem der Substitutionseffekt isoliert wurde.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Die Hicks-Dekomposition trennt den Effekt einer Preisänderung in Substitutions- und Einkommenseffekte]
#v(20pt)
#only("2-")[- Der Substitutionseffekt wird zuerst isoliert, wobei der Nutzen konstant gehalten wird]
#v(20pt) 
#only("3-")[- Der Einkommenseffekt tritt nach dem Substitutionseffekt auf]
#only("1")[
#voiceover("Zusammenfassend trennt die Hicks-Dekomposition den Effekt einer Preisänderung in Substitutions- und Einkommenseffekte.")
]
#only("2")[
#voiceover("Der Substitutionseffekt wird zuerst isoliert, indem das neue optimale Konsumbündel auf der gleichen Indifferenzkurve gefunden wird, wobei der Nutzen konstant gehalten wird.")
]
#only("3")[
#voiceover("Der Einkommenseffekt wird dann betrachtet, der die Änderung des Konsums aufgrund der Änderung der Kaufkraft erfasst.")
]
]