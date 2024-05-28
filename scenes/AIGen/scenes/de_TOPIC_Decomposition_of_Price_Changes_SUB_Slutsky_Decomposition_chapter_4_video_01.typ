#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Slutsky-Zerlegung]
#v(40pt)
#only("1-")[- Trennt die Wirkung einer Preisänderung in:]
#v(20pt)
#only("2-")[  - Substitutionseffekt 🔄]
#v(10pt)
#only("3-")[  - Einkommenseffekt 💰]
#only("1")[
#voiceover("Die Slutsky-Zerlegung ist eine Methode, die die Wirkung einer Preisänderung in zwei Komponenten trennt:")
]
#only("2")[
#voiceover("Der Substitutionseffekt, der erfasst, wie Konsumenten zwischen Gütern wechseln, wenn sich ihre relativen Preise ändern,")
]
#only("3")[
#voiceover("und der Einkommenseffekt, der widerspiegelt, wie eine Preisänderung die Kaufkraft eines Konsumenten beeinflusst.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Mathematische Darstellung]
#v(40pt)
#only("1-")[$ "Gesamteffekt" = "Substitutionseffekt" + "Einkommenseffekt" $]
#v(20pt)
#only("2-")[$ dif x/dif p = (dif x/dif p)_"U konst." + (dif x/dif p)_"Reales Einkommen konst." $]
#only("1")[
#voiceover("Mathematisch besagt die Slutsky-Zerlegung, dass der Gesamteffekt einer Preisänderung die Summe aus Substitutionseffekt und Einkommenseffekt ist.")
]
#only("2")[
#voiceover("In der Differentialrechnung wird dies als Ableitung der Nachfrage nach dem Preis geschrieben, gleich der Ableitung der Nachfrage nach dem Preis bei konstantem Nutzen, plus der Ableitung der Nachfrage nach dem Preis bei konstantem realen Einkommen.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Grafische Darstellung]
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

# Plot the original budget line
x = np.linspace(0, 10, 100)
y = 10 - x
ax.plot(x, y, color='blue', label='Original Budget Line')

# Plot the new budget line after price change
y_new = 20 - 2*x
ax.plot(x, y_new, color='red', label='New Budget Line')

# Plot the intermediate budget line (substitution effect)
y_int = 15 - 1.5*x
ax.plot(x, y_int, color='green', linestyle='--', label='Intermediate Budget Line')

# Add labels and legend
ax.set_xlabel('Good 1')
ax.set_ylabel('Good 2')
ax.legend()

# Show the plot
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Grafisch kann die Slutsky-Zerlegung mit Budgetgeraden und Indifferenzkurven dargestellt werden. Die ursprüngliche Budgetgerade ist blau. Nach einer Preisänderung ist die neue Budgetgerade rot. Die Zwischenbudgetgerade, grün dargestellt, repräsentiert den Substitutionseffekt bei konstantem Nutzen.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Slutsky-Zerlegung: Gesamteffekt = Substitutionseffekt + Einkommenseffekt]
#v(20pt)
#only("2-")[- Trennt die Auswirkungen einer Preisänderung auf das Konsumentenverhalten]
#v(20pt)
#only("3-")[- Wichtiges Werkzeug in der Konsumtheorie und Nachfrageanalyse 🔑📈]
#only("1")[
#voiceover("Zusammenfassend besagt die Slutsky-Zerlegung, dass der Gesamteffekt einer Preisänderung gleich dem Substitutionseffekt plus dem Einkommenseffekt ist.")
]
#only("2")[
#voiceover("Sie trennt die Auswirkungen einer Preisänderung auf das Konsumentenverhalten in eine Substitutionskomponente und eine Einkommenskomponente.")
]
#only("3")[
#voiceover("Die Slutsky-Zerlegung ist ein wichtiges Werkzeug in der Konsumtheorie und Nachfrageanalyse und hilft Ökonomen zu verstehen, wie Konsumenten auf Preisänderungen reagieren.")
]
]