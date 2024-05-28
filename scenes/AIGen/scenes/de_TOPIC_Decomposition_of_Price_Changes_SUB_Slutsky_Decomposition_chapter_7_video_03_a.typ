#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#only("1")[
#voiceover("Ausgezeichnetes Beispiel! Du hast klar verstanden, wie die Slutsky-Zerlegung auf reale Situationen angewendet werden kann. Lass uns Deine Antwort Schritt für Schritt durchgehen. 👍")
]

#text(size: 30pt, weight: "bold")[Reales Beispiel]

#v(40pt)

#only("2-")[- Analyse der Auswirkung einer Preisänderung im öffentlichen Verkehr auf die Nachfrage nach privater Autonutzung 🚌 🚗]
// Das reale Beispiel wird ab Folie 2 gezeigt

#only("2")[
#voiceover("Das von Dir gegebene Beispiel analysiert, wie eine Senkung des Preises für öffentliche Verkehrsmittel die Nachfrage nach privater Autonutzung beeinflusst.")
]
]

#slide()[
#only("1")[
#voiceover("Um dies mit der Slutsky-Zerlegung zu verstehen, müssen wir die Auswirkungen der Preisänderung in Substitutions- und Einkommenseffekte aufteilen.")
]

#text(size: 30pt, weight: "bold")[Zerlegung]

#v(40pt)

#only("1-")[- Aufteilung der Auswirkungen der Preisänderung in Substitutions- und Einkommenseffekte]
// Der Zerlegungsansatz wird ab Folie 1 gezeigt

#v(20pt)

#only("2-")[- Substitutionseffekt: Wechsel von privaten Autos zu öffentlichen Verkehrsmitteln aufgrund der relativen Preisänderung 🔄]
// Der Substitutionseffekt wird ab Folie 2 gezeigt

#v(20pt)

#only("3-")[- Einkommenseffekt: Erhöhte Kaufkraft ermöglicht insgesamt mehr Reisen 💰]
// Der Einkommenseffekt wird ab Folie 3 gezeigt

#only("2")[
#voiceover("Der Substitutionseffekt wäre, dass Menschen vom privaten Auto auf öffentliche Verkehrsmittel umsteigen, weil diese relativ günstiger geworden sind.")
]

#only("3")[
#voiceover("Der Einkommenseffekt wäre, dass die Senkung des Preises für öffentliche Verkehrsmittel die Kaufkraft der Menschen effektiv erhöht und ihnen ermöglicht, insgesamt mehr zu reisen.")
]
]

#slide()[
#only("1")[
#voiceover("Wir können diese Effekte in einem Diagramm visualisieren.")
]

#text(size: 30pt, weight: "bold")[Visualisierung]

#v(40pt)

#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt
import numpy as np

# Create the plot
fig, ax = plt.subplots(figsize=(6, 6))

# Draw the initial budget line
x = np.linspace(0, 10, 100)
y = 10 - x
ax.plot(x, y, color='blue', label='Initial Budget Line')

# Draw the new budget line after the price decrease
y_new = 12 - x
ax.plot(x, y_new, color='red', label='New Budget Line')

# Draw the indifference curves
x = np.linspace(0, 10, 100)
y1 = 10 / x
y2 = 20 / x
ax.plot(x, y1, color='green', label='Indifference Curve 1')
ax.plot(x, y2, color='purple', label='Indifference Curve 2')

# Label the axes
ax.set_xlabel('Private Car Usage')
ax.set_ylabel('Public Transportation Usage')

# Add a legend
ax.legend()

plt.show()
```,
width: 360pt),
)
]
]
// Das Diagramm visualisiert die Substitutions- und Einkommenseffekte mithilfe von Indifferenzkurven und Budgetgeraden

#only("1")[
#voiceover("Dieses Diagramm zeigt die anfängliche Budgetgerade in Blau und die neue Budgetgerade nach der Preissenkung in Rot. Die grünen und violetten Kurven sind Indifferenzkurven, die unterschiedliche Nutzenniveaus darstellen.")
]
]
]

#slide()[
#only("1")[
#voiceover("Der Substitutionseffekt wird durch die Bewegung entlang der anfänglichen Indifferenzkurve gezeigt, während der Einkommenseffekt durch den Wechsel zu einer höheren Indifferenzkurve dargestellt wird.")
]

#text(size: 30pt, weight: "bold")[Zusammenfassung]

#v(40pt)

#only("1-")[- Die Slutsky-Zerlegung kann angewendet werden, um die Auswirkung einer Preisänderung im öffentlichen Verkehr auf die Nachfrage nach privater Autonutzung zu analysieren 🚌 🚗]

#v(20pt)

#only("2-")[- Der Substitutionseffekt führt zum Wechsel von privaten Autos zu öffentlichen Verkehrsmitteln 🔄]

#v(20pt)

#only("3-")[- Der Einkommenseffekt ermöglicht insgesamt mehr Reisen aufgrund der erhöhten Kaufkraft 💰]

#only("1")[
#voiceover("Zusammenfassend lässt sich sagen, dass die Slutsky-Zerlegung angewendet werden kann, um zu analysieren, wie eine Senkung des Preises für öffentliche Verkehrsmittel die Nachfrage nach privater Autonutzung beeinflusst.")
]

#only("2")[
#voiceover("Der Substitutionseffekt führt dazu, dass Menschen von privaten Autos auf öffentliche Verkehrsmittel umsteigen.")
]

#only("3")[
#voiceover("Der Einkommenseffekt ermöglicht insgesamt mehr Reisen aufgrund der erhöhten Kaufkraft. Großartige Arbeit bei der Bereitstellung dieses aufschlussreichen Beispiels! 🌟")
]
]