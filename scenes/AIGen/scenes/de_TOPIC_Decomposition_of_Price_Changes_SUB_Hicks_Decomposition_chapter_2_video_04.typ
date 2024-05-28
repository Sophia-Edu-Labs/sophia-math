#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Einkommenseffekt 💰]
#v(40pt)
#only("1-")[- Zeigt Konsumänderungen aufgrund von Änderungen des Realeinkommens]
#v(20pt)
#only("2-")[- Tritt nach Anpassung an den Substitutionseffekt auf]
#only("1")[
#voiceover("Der Einkommenseffekt zeigt, wie sich der Konsum aufgrund einer Änderung des Realeinkommens verändert.")
]
#only("2")[
#voiceover("Dieser Effekt tritt nach der Anpassung an den Substitutionseffekt auf.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Änderung des Realeinkommens 📈]
#v(40pt)
#only("1-")[- Preisänderung beeinflusst die Kaufkraft des Verbrauchers]
#v(20pt)
#only("2-")[- Beispiel: Preisrückgang $arrow$ Realeinkommensanstieg]
#only("1")[
#voiceover("Eine Preisänderung beeinflusst das Realeinkommen oder die Kaufkraft des Verbrauchers.")
]
#only("2")[
#voiceover("Zum Beispiel, wenn der Preis eines Gutes sinkt, steigt das Realeinkommen des Verbrauchers effektiv an.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Grafische Darstellung 📊]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```python
import matplotlib.pyplot as plt
import numpy as np

# Define the initial budget constraint
p1, p2 = 2, 1
m = 100
x1 = np.linspace(0, m/p1, 100)
x2 = m/p2 - p1/p2 * x1

# Define the new budget constraint (price decrease)
p1_new = 1.5
x1_new = np.linspace(0, m/p1_new, 100)
x2_new = m/p2 - p1_new/p2 * x1_new

# Define the indifference curves
def U(x1, x2):
    return x1**0.5 * x2**0.5

x1_mesh, x2_mesh = np.meshgrid(np.linspace(0, m/p1, 100), np.linspace(0, m/p2, 100))
U_values = U(x1_mesh, x2_mesh)

# Plot the graph
plt.figure(figsize=(8, 6))
plt.plot(x1, x2, label='Initial Budget Constraint')
plt.plot(x1_new, x2_new, label='New Budget Constraint')
plt.contour(x1_mesh, x2_mesh, U_values, levels=[U(m/(2*p1), m/(2*p2)), U(m/(2*p1_new), m/(2*p2))], colors='black', linestyles='--', labels=['Initial Indifference Curve', 'New Indifference Curve'])
plt.xlabel('Good 1')
plt.ylabel('Good 2')
plt.title('Income Effect')
plt.legend()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Hier ist eine grafische Darstellung des Einkommenseffekts. Die anfängliche Budgetbeschränkung und die Indifferenzkurve sind in Blau bzw. Schwarz dargestellt. Nach dem Preisrückgang verschiebt sich die Budgetbeschränkung nach außen, und der Verbraucher erreicht eine höhere Indifferenzkurve, was den Einkommenseffekt darstellt.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung 🎬]
#v(40pt)
#only("1-")[- Einkommenseffekt: Konsumänderungen aufgrund von Änderungen des Realeinkommens 💰]
#v(20pt)
#only("2-")[- Tritt nach Anpassung an den Substitutionseffekt auf 🔄]
#v(20pt)
#only("3-")[- Preisänderung beeinflusst die Kaufkraft des Verbrauchers 📈]
#v(20pt)
#only("4-")[- Grafisch dargestellt durch Verschiebung der Budgetbeschränkung und höhere Indifferenzkurve 📊]
#only("1")[
#voiceover("Zusammenfassend zeigt der Einkommenseffekt, wie sich der Konsum aufgrund einer Änderung des Realeinkommens verändert.")
]
#only("2")[
#voiceover("Dieser Effekt tritt nach der Anpassung an den Substitutionseffekt auf.")
]
#only("3")[
#voiceover("Eine Preisänderung beeinflusst die Kaufkraft des Verbrauchers.")
]
#only("4")[
#voiceover("Der Einkommenseffekt wird grafisch durch eine Verschiebung der Budgetbeschränkung und das Erreichen einer höheren Indifferenzkurve dargestellt.")
]
]