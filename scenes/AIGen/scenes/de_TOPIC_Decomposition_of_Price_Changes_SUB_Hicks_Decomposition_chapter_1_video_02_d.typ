#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Substitutionseffekt]
#v(40pt)
Der Substitutionseffekt zeigt Änderungen im Konsum aufgrund einer Änderung von \_\_\_\_\_.
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-1")[a) Einkommen]#only("2-")[#text(fill:red)[a) Einkommen]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann grün, weil sie richtig ist.
#only("-2")[b) Preis]#only("3-")[#text(fill:green)[b) Preis]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-3")[c) Nutzen]#only("4-")[#text(fill:red)[c) Nutzen]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-4")[d) Menge]#only("5-")[#text(fill:red)[d) Menge]]

#only("1")[#voiceover("Das war leider nicht korrekt. Die richtige Antwort ist...")]
// Sehr kurz über b sprechen und warum es richtig ist
#only("2")[#voiceover("b) Preis. Der Substitutionseffekt zeigt tatsächlich Änderungen im Konsum aufgrund einer Preisänderung, während der Nutzen konstant gehalten wird.")]
// Sehr kurz über a sprechen und warum es falsch ist
#only("3")[#voiceover("a) Einkommen ist falsch. Änderungen im Konsum aufgrund von Einkommensänderungen werden durch den Einkommenseffekt erfasst, nicht durch den Substitutionseffekt.")]
// Sehr kurz über c sprechen und warum es falsch ist
#only("4")[#voiceover("c) Nutzen ist ebenfalls falsch. Tatsächlich wird der Nutzen bei der Analyse des Substitutionseffekts konstant gehalten.")]
// Sehr kurz über d sprechen und warum es falsch ist
#only("5")[#voiceover("Und d) Menge ist ebenfalls falsch. Die nachgefragte Menge ändert sich aufgrund des Substitutionseffekts, aber sie ist nicht die Ursache des Substitutionseffekts selbst.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Grafische Darstellung]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create a figure and axis
fig, ax = plt.subplots(figsize=(8, 6))

# Define the budget lines
x = np.linspace(0, 10, 100)
y1 = 10 - x
y2 = 15 - 1.5*x

# Plot the budget lines
ax.plot(x, y1, color='blue', label='Original Budget Line')
ax.plot(x, y2, color='red', label='New Budget Line')

# Add indifference curves
x = np.linspace(0, 10, 100)
y1 = 10 / x
y2 = 15 / x
ax.plot(x, y1, color='gray', linestyle='--', label='Indifference Curve')
ax.plot(x, y2, color='gray', linestyle='--')

# Find and plot the optimal points
opt1 = np.argmin((x - 5)**2 + (y1 - 5)**2)
opt2 = np.argmin((x - 7.5)**2 + (y2 - 5)**2)
ax.scatter(x[opt1], y1[opt1], color='blue', label='Original Optimum')
ax.scatter(x[opt2], y2[opt2], color='red', label='New Optimum')

# Add labels and legend
ax.set_xlabel('Good X')
ax.set_ylabel('Good Y')
ax.set_title('Substitution Effect')
ax.legend()

# Show the plot
plt.show()
```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[Hier ist eine grafische Darstellung: 📈]
#v(20pt)
#only("2-")[- Das #text(fill:blue)[ursprüngliche Optimum] ist dort, wo die ursprüngliche Budgetlinie tangential zur Indifferenzkurve verläuft.]
#only("3-")[- Wenn der Preis von Gut X sinkt, dreht sich die Budgetlinie nach außen zur #text(fill:red)[neuen Budgetlinie].]
#only("4-")[- Das #text(fill:red)[neue Optimum] ist dort, wo die neue Budgetlinie tangential zu einer höheren Indifferenzkurve verläuft.]
#only("5-")[- Die Bewegung vom ursprünglichen zum neuen Optimum, bei konstantem Nutzen, ist der #text(weight: "bold")[Substitutionseffekt]. 🔄]

#only("1")[#voiceover("Schauen wir uns eine grafische Darstellung an, um den Substitutionseffekt besser zu verstehen.")]
#only("2")[#voiceover("Der blaue Punkt zeigt das ursprüngliche Optimum, das dort liegt, wo die ursprüngliche Budgetlinie tangential zur Indifferenzkurve verläuft.")]
#only("3")[#voiceover("Wenn der Preis von Gut X sinkt, dreht sich die Budgetlinie nach außen zur neuen roten Budgetlinie.")]
#only("4")[#voiceover("Das neue Optimum, dargestellt durch den roten Punkt, ist dort, wo die neue Budgetlinie tangential zu einer höheren Indifferenzkurve verläuft.")]
#only("5")[#voiceover("Die Bewegung vom ursprünglichen blauen Optimum zum neuen roten Optimum, bei konstantem Nutzen auf der ursprünglichen Indifferenzkurve, stellt den Substitutionseffekt dar. Er zeigt, wie sich der Konsum aufgrund der Änderung der relativen Preise ändert, unabhängig vom Einkommenseffekt.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse]
#v(40pt)
#only("1-")[- Der Substitutionseffekt ist die Änderung im Konsum aufgrund einer Änderung der #text(weight: "bold")[relativen Preise]. 💰]
#v(20pt)
#only("2-")[- Er wird analysiert, indem der #text(weight: "bold")[Nutzen] konstant gehalten wird. 📊]
#v(20pt)
#only("3-")[- Grafisch ist es die Bewegung entlang einer #text(weight: "bold")[Indifferenzkurve]. 📈]
#v(20pt)
#only("4-")[- Es ist ein wesentlicher Bestandteil der #text(weight: "bold")[Hicks-Dekomposition], zusammen mit dem Einkommenseffekt. 🔍]

#only("1")[#voiceover("Zusammenfassend ist der Substitutionseffekt die Änderung im Konsum aufgrund einer Änderung der relativen Preise, bei konstantem Nutzen.")]
#only("2")[#voiceover("Bei der Analyse des Substitutionseffekts halten wir den Konsumenten auf derselben Indifferenzkurve, was bedeutet, dass sich ihr Nutzenniveau nicht ändert.")]
#only("3")[#voiceover("In einem Diagramm wird der Substitutionseffekt durch eine Bewegung entlang einer Indifferenzkurve von einem Optimum zum anderen dargestellt.")]
#only("4")[#voiceover("Der Substitutionseffekt ist ein wesentlicher Bestandteil der Hicks-Dekomposition, die die Wirkung einer Preisänderung in Substitutions- und Einkommenseffekte aufteilt. Das Verständnis des Substitutionseffekts ist entscheidend, um zu verstehen, wie Konsumenten auf Preisänderungen reagieren.")]
]