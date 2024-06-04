#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Heißluftballon-Prinzip 🎈]
#v(40pt)
#only("1-")[- Der Ballon steigt aufgrund von Dichteunterschieden]
#v(20pt)
#only("2-")[- Erhitzte Luft im Ballon hat eine geringere Dichte]
#v(20pt)
#only("3-")[- Kühler Luft außerhalb hat eine höhere Dichte]
#only("1")[
#voiceover("Das Prinzip eines Heißluftballons besteht darin, dass er aufgrund des Dichteunterschieds zwischen der Luft im Inneren und der Luft außerhalb des Ballons steigt.")
]
#only("2")[
#voiceover("Die Luft im Inneren des Ballons wird erhitzt, wodurch sie sich ausdehnt und ihre Dichte abnimmt.")
]
#only("3")[
#voiceover("Die Luft außerhalb des Ballons ist kühler und hat daher eine höhere Dichte im Vergleich zur erhitzten Luft im Inneren.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Dichte und Auftrieb 🌡️]
#v(40pt)
#only("1-")[- Dichte: $ rho = m / V $]
#v(20pt)
#only("2-")[- Auftriebskraft: $ F_"B" = rho_"fluid" V_"displaced" g $]
#v(20pt)
#only("3-")[- Der Ballon steigt, wenn $ F_"B" > F_"gravity" $]
#only("1")[
#voiceover("Die Dichte, dargestellt durch den griechischen Buchstaben rho, ist definiert als Masse pro Volumeneinheit. Sie wird berechnet als Masse geteilt durch Volumen.")
]
#only("2")[
#voiceover("Die Auftriebskraft, F sub B, ist die nach oben gerichtete Kraft, die von einer Flüssigkeit auf ein Objekt ausgeübt wird. Sie ist gleich der Dichte der Flüssigkeit mal dem verdrängten Volumen der Flüssigkeit mal der Erdbeschleunigung.")
]
#only("3")[
#voiceover("Der Ballon steigt, wenn die Auftriebskraft, die auf ihn wirkt, größer ist als die Schwerkraft, die ihn nach unten zieht.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung 📊]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create the figure and axes
fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(10, 4))

# Plot the density difference
x = np.linspace(0, 1, 100)
y1 = 1.225 * np.ones_like(x)  # Density of cool air (kg/m^3)
y2 = 0.9 * np.ones_like(x)    # Density of heated air (kg/m^3)

ax1.plot(x, y1, 'b-', label='Cool Air')
ax1.plot(x, y2, 'r-', label='Heated Air')
ax1.set_xlabel('Position')
ax1.set_ylabel('Density (kg/m³)')
ax1.set_title('Density Difference')
ax1.legend()

# Plot the forces
labels = ['Buoyant Force', 'Gravity']
sizes = [60, 40]  # Adjust sizes to show buoyant force > gravity

ax2.pie(sizes, labels=labels, autopct='%1.1f%%', startangle=90)
ax2.axis('equal')
ax2.set_title('Forces Acting on Balloon')

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Diese Visualisierung zeigt den Dichteunterschied und die Kräfte, die auf den Heißluftballon wirken.")
]
#only("2")[
#voiceover("Das linke Diagramm zeigt die Dichte der kühlen Luft außerhalb des Ballons in Blau und die geringere Dichte der erhitzten Luft im Inneren des Ballons in Rot.")
]
#only("3")[
#voiceover("Das rechte Diagramm zeigt, dass die nach oben gerichtete Auftriebskraft größer ist als die Schwerkraft, die den Ballon nach unten zieht, wodurch er aufsteigen kann.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung 🎡]
#v(40pt)
#only("1-")[- Ein Heißluftballon steigt aufgrund von Dichteunterschieden 🎈]
#v(20pt)
#only("2-")[- Erhitzte Luft im Inneren hat eine geringere Dichte als kühlere Luft außen 🌡️]
#v(20pt)
#only("3-")[- Die Auftriebskraft übersteigt die Schwerkraft, wodurch der Ballon aufsteigt ⬆️]
#only("1")[
#voiceover("Zusammenfassend lässt sich sagen, dass ein Heißluftballon aufgrund des Dichteunterschieds zwischen der erhitzten Luft im Inneren des Ballons und der kühleren Luft außen steigt.")
]
#only("2")[
#voiceover("Das Erhitzen der Luft im Inneren des Ballons verringert deren Dichte im Vergleich zur umgebenden Luft.")
]
#only("3")[
#voiceover("Wenn die Auftriebskraft, die auf den Ballon wirkt, größer ist als die Schwerkraft, beginnt der Ballon zu steigen.")
]
]