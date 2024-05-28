#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Grafische Darstellung der Slutsky-Dekomposition]
#v(40pt)
#only("1-")[Die Slutsky-Dekomposition kann grafisch dargestellt werden mit \_\_\_\_\_.]
#v(40pt)
#only("-1")[a) Angebots- und Nachfragekurven]#only("2-")[#text(fill:red)[a) Angebots- und Nachfragekurven]]
#v(10pt)
#only("-2")[b) Produktionsmöglichkeitenkurven]#only("3-")[#text(fill:red)[b) Produktionsmöglichkeitenkurven]]
#v(10pt)
#only("-3")[c) Indifferenzkurven und Budgetbeschränkungen]#only("4-")[#text(fill:green)[c) Indifferenzkurven und Budgetbeschränkungen]]
#v(10pt)
#only("-4")[d) Grenzkostenkurven]#only("5-")[#text(fill:red)[d) Grenzkostenkurven]]

#only("1")[#voiceover("Gut gemacht! Das ist die richtige Antwort.")]
#only("2")[#voiceover("Angebots- und Nachfragekurven werden nicht verwendet, um die Slutsky-Dekomposition grafisch darzustellen.")]
#only("3")[#voiceover("Produktionsmöglichkeitenkurven sind auch nicht das richtige Werkzeug zur Darstellung der Slutsky-Dekomposition.")]
#only("4")[#voiceover("Indifferenzkurven und Budgetbeschränkungen werden tatsächlich verwendet, um die Slutsky-Dekomposition grafisch darzustellen. Gut gemacht!")]
#only("5")[#voiceover("Grenzkostenkurven haben nichts mit der Slutsky-Dekomposition zu tun.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt-für-Schritt-Lösung]
#v(40pt)
#only("1-")[1. Die Slutsky-Dekomposition trennt die Wirkung einer Preisänderung in:]
#v(20pt)
#only("2-")[   - Substitutionseffekt 🔄]
#only("3-")[   - Einkommenseffekt 💰]
#v(40pt)
#only("4-")[2. Diese Effekte können dargestellt werden mit:]
#v(20pt)
#only("5-")[   - Indifferenzkurven 📈]
#only("6-")[   - Budgetbeschränkungen 💸]

#only("1")[#voiceover("Lass uns das Schritt für Schritt aufschlüsseln.")]
#only("2")[#voiceover("Zuerst erinnere Dich daran, dass die Slutsky-Dekomposition die Wirkung einer Preisänderung in den Substitutionseffekt...")]
#only("3")[#voiceover("...und den Einkommenseffekt trennt.")]
#only("4")[#voiceover("Diese Effekte können grafisch dargestellt werden mit...")]
#only("5")[#voiceover("...Indifferenzkurven, die die Präferenzen der Konsumenten darstellen...")]
#only("6")[#voiceover("...und Budgetbeschränkungen, die die Kaufkraft des Konsumenten darstellen.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt-für-Schritt-Lösung]
#v(40pt)
#only("1-")[1. Eine Preisänderung wird durch eine Drehung der Budgetbeschränkung dargestellt.]
#v(20pt)
#only("2-")[2. Der Substitutionseffekt ist die Bewegung entlang der ursprünglichen Indifferenzkurve.]
#v(20pt)
#only("3-")[3. Der Einkommenseffekt ist die Verschiebung zu einer neuen Indifferenzkurve.]

#only("1")[#voiceover("Wenn sich ein Preis ändert, wird dies durch eine Drehung der Budgetbeschränkung dargestellt.")]
#only("2")[#voiceover("Der Substitutionseffekt wird durch die Bewegung entlang der ursprünglichen Indifferenzkurve gezeigt.")]
#only("3")[#voiceover("Und der Einkommenseffekt ist die Verschiebung zu einer neuen Indifferenzkurve.")]
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

# Define utility function
def utility(x, y):
    return x**(0.5) * y**(0.5)

# Generate points on the indifference curve
x = np.linspace(0.1, 10, 100)
y = (utility(5, 5) / x)**2

# Plot the indifference curves
ax.plot(x, y, 'b', label='Original IC')
ax.plot(x, 2*y, 'g', label='New IC')

# Plot the budget constraints
ax.plot([0, 10], [10, 0], 'r', label='Original BC')
ax.plot([0, 20], [5, 0], 'purple', label='New BC')

# Plot the optimal choices
ax.scatter(5, 5, s=100, c='b', label='Original Choice')
ax.scatter(10, 2.5, s=100, c='g', label='New Choice')

# Add arrows for substitution and income effects
ax.annotate('Substitution Effect', xy=(7.5, 3.75), xytext=(6, 6), 
            arrowprops=dict(facecolor='black', shrink=0.05))
ax.annotate('Income Effect', xy=(8.75, 3.125), xytext=(12, 1), 
            arrowprops=dict(facecolor='black', shrink=0.05))

# Add labels and legend
ax.set_xlabel('Good X')
ax.set_ylabel('Good Y')
ax.set_title('Slutsky Decomposition')
ax.legend()

plt.show()
```,
width: 360pt),
)
]
]

#only("1")[#voiceover("Hier ist eine grafische Darstellung der Slutsky-Dekomposition.")]
#only("2")[#voiceover("Die blaue Kurve ist die ursprüngliche Indifferenzkurve, und die rote Linie ist die ursprüngliche Budgetbeschränkung.")]
#only("3")[#voiceover("Wenn der Preis von Gut X sinkt, dreht sich die Budgetbeschränkung nach außen zur violetten Linie.")]
#only("4")[#voiceover("Der Substitutionseffekt ist die Bewegung entlang der ursprünglichen Indifferenzkurve vom blauen Punkt zum Punkt auf der violetten Linie.")]
#only("5")[#voiceover("Der Einkommenseffekt ist die Verschiebung von diesem Punkt zum grünen Punkt auf der neuen, höheren Indifferenzkurve.")]
#only("6")[#voiceover("Dies veranschaulicht, wie die Slutsky-Dekomposition die Gesamtauswirkung einer Preisänderung in den Substitutions- und Einkommenseffekt aufteilt.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Slutsky-Dekomposition: Substitutionseffekt + Einkommenseffekt]
#v(20pt)
#only("2-")[- Grafische Darstellung verwendet Indifferenzkurven und Budgetbeschränkungen]
#v(20pt)
#only("3-")[- Preisänderung wird durch Drehung der Budgetbeschränkung dargestellt]
#v(20pt)
#only("4-")[- Substitutionseffekt: Bewegung entlang der ursprünglichen IC]
#v(20pt)
#only("5-")[- Einkommenseffekt: Verschiebung zu neuer IC]

#only("1")[#voiceover("Zusammenfassend trennt die Slutsky-Dekomposition die Wirkung einer Preisänderung in Substitutions- und Einkommenseffekte.")]
#only("2")[#voiceover("Dies wird grafisch mit Indifferenzkurven und Budgetbeschränkungen dargestellt.")]
#only("3")[#voiceover("Eine Preisänderung wird durch eine Drehung der Budgetbeschränkung dargestellt.")]
#only("4")[#voiceover("Der Substitutionseffekt ist die Bewegung entlang der ursprünglichen Indifferenzkurve.")]
#only("5")[#voiceover("Und der Einkommenseffekt ist die Verschiebung zu einer neuen Indifferenzkurve.")]
]