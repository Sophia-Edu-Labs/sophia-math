#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Potentielle Energie 🌊]
#v(40pt)
#only("1-")[- Gegeben: Höhe $h = 25$ m, Massenstrom $dot(m) = 1000$ kg/s]
#v(20pt)
#only("2-")[- Formel: $E = m dot g dot h$]
#v(20pt)
#only("3-")[- Lösung: $E = 1000 dot 9.81 dot 25 = 245250$ J]
#only("1")[
#voiceover("Leider ist das nicht korrekt. Lass uns dennoch Schritt für Schritt sehen, wie wir das lösen können. Gegeben sind eine Höhe von 25 Metern und ein Massenstrom von 1000 Kilogramm pro Sekunde.")
]
#only("2")[
#voiceover("Die Formel für potenzielle Energie lautet E gleich m mal g mal h, wobei m die Masse, g die Erdbeschleunigung und h die Höhe ist.")
]
#only("3")[
#voiceover("Setzen wir die Werte ein, erhalten wir E gleich 1000 mal 9.81 mal 25, was 245.250 Joule ergibt. Die potenzielle Energie des Wassers beträgt also 245.250 Joule.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung 📊]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```python
import matplotlib.pyplot as plt
import numpy as np

# Set up the figure
fig, ax = plt.subplots(figsize=(8, 6))

# Define the data
height = 25
mass_flow_rate = 1000
gravity = 9.81
potential_energy = mass_flow_rate * gravity * height

# Create the bar chart
ax.bar(1, potential_energy, width=0.4, color='skyblue', label='Potential Energy')

# Add labels and title
ax.set_ylabel('Energy (Joules)')
ax.set_title('Potential Energy of Water')
ax.set_xticks([])

# Add the calculated value as text
ax.text(1, potential_energy + 5000, f'{potential_energy:,.0f} J', ha='center')

# Add legend
ax.legend()

# Display the plot
plt.show()
```,
width: 360pt),
)
]
]
// Das Balkendiagramm visualisiert die berechnete potenzielle Energie
#only("1")[
#voiceover("Hier ist eine visuelle Darstellung der potenziellen Energie, die wir gerade berechnet haben. Der Balken zeigt die 245.250 Joule potenzielle Energie, die das Wasser in einer Höhe von 25 Metern mit einem Massenstrom von 1000 Kilogramm pro Sekunde hat.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse 🔑]
#v(40pt)
#only("1-")[- Potenzielle Energie hängt von Masse, Höhe und Schwerkraft ab]
#v(20pt)
#only("2-")[- Formel: $E = m dot g dot h$ 📜]
#v(20pt)
#only("3-")[- Einheiten: Joule (J) ⚡]
// Die wichtigsten Erkenntnisse werden nacheinander angezeigt
#only("1")[
#voiceover("Die wichtigsten Dinge, die Du Dir merken solltest, sind, dass die potenzielle Energie von der Masse, der Höhe und der Erdbeschleunigung abhängt.")
]
#only("2")[
#voiceover("Die Formel zur Berechnung der potenziellen Energie lautet E gleich m mal g mal h.")
]
#only("3")[
#voiceover("Und die Einheit der potenziellen Energie ist Joule, symbolisiert durch den Buchstaben J.")
]
]