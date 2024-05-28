#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Substitutionseffekt]
#v(40pt)
#only("1-")[- Der Preis von Gut X sinkt von \$10 auf \$8]
#v(20pt)
#only("2-")[- Die nachgefragte Menge steigt von 5 auf 7 Einheiten]
#v(20pt)
#only("3-")[- Der Nutzen bleibt konstant]
#only("1")[
#voiceover("Großartig! Das ist die richtige Antwort. Lass uns Schritt für Schritt sehen, wie wir das lösen können. Uns wird mitgeteilt, dass der Preis von Gut X von 10 Dollar auf 8 Dollar sinkt.")
]
#only("2")[
#voiceover("Infolgedessen steigt die nachgefragte Menge von 5 Einheiten auf 7 Einheiten.")
]
#only("3")[
#voiceover("Wichtig ist, dass uns gesagt wird, dass der Nutzen des Konsumenten konstant bleibt. Dies ist der Schlüssel zur Identifizierung des Substitutionseffekts.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Lösung]
#v(40pt)
#only("1-")[- Substitutionseffekt: Änderung des Konsums aufgrund von Änderungen der relativen Preise bei konstantem Nutzen 🔄]
#v(20pt)
#only("2-")[- Die nachgefragte Menge steigt von 5 auf 7 Einheiten 📈]
#v(20pt)
#only("3-")[- Substitutionseffekt = 7 - 5 = 2 Einheiten 🎯]
#only("1")[
#voiceover("Erinnere dich daran, dass der Substitutionseffekt die Änderung des Konsums ist, die durch eine Änderung der relativen Preise der Güter bei konstantem Nutzen verursacht wird.")
]
#only("2")[
#voiceover("In diesem Fall, da der Preis von Gut X sinkt, steigt die nachgefragte Menge von 5 auf 7 Einheiten, während der Nutzen konstant bleibt.")
]
#only("3")[
#voiceover("Daher ist die gesamte Änderung der nachgefragten Menge, nämlich ein Anstieg um 2 Einheiten von 5 auf 7, dem Substitutionseffekt zuzuschreiben.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Define the initial and final quantity demanded
q0 = 5
q1 = 7

# Create the plot
fig, ax = plt.subplots(figsize=(8, 6))

# Plot the initial and final quantity demanded
ax.plot([q0, q0], [0, 1], color='blue', linestyle='--', linewidth=2, label='Initial Quantity')
ax.plot([q1, q1], [0, 1], color='red', linestyle='--', linewidth=2, label='Final Quantity')

# Fill the area representing the substitution effect
ax.fill_between([q0, q1], [0, 0], [1, 1], color='green', alpha=0.3, label='Substitution Effect')

# Add labels and title
ax.set_xlabel('Quantity')
ax.set_ylabel('Price')
ax.set_title('Substitution Effect')

# Remove top and right spines
ax.spines['top'].set_visible(False)
ax.spines['right'].set_visible(False)

# Add legend
ax.legend()

plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Dieses Diagramm visualisiert den Substitutionseffekt. Die blaue gestrichelte Linie repräsentiert die anfänglich nachgefragte Menge von 5 Einheiten, während die rote gestrichelte Linie die endgültig nachgefragte Menge von 7 Einheiten zeigt. Der grün schattierte Bereich zwischen diesen Linien stellt den Substitutionseffekt von 2 Einheiten dar.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Preisrückgang: \$10 auf \$8 💰]
#v(20pt)
#only("2-")[- Anstieg der nachgefragten Menge: 5 auf 7 Einheiten 📦]
#v(20pt)  
#only("3-")[- Nutzen konstant ⚖]
#v(20pt)
#only("4-")[- Substitutionseffekt = 2 Einheiten 🎉]
#only("1")[
#voiceover("Zusammenfassend haben wir mit einem Preisrückgang für Gut X von 10 Dollar auf 8 Dollar begonnen.")
]
#only("2")[
#voiceover("Dies führte zu einem Anstieg der nachgefragten Menge von 5 Einheiten auf 7 Einheiten.")
]
#only("3")[
#voiceover("Entscheidend ist, dass der Nutzen während dieser Änderung konstant blieb.")
]  
#only("4")[
#voiceover("Daher ist der gesamte Anstieg der nachgefragten Menge um 2 Einheiten dem Substitutionseffekt zuzuschreiben. Großartige Arbeit beim Lösen dieses Problems!")
]
]