#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Wasserdruck in Gebäuden 🏠💧]

#v(40pt)

#only("1-")[- Variiert mit der Höhe aufgrund der Schwerkraft 🌍]
#only("1")[#voiceover("Der Wasserdruck in Gebäuden variiert mit der Höhe aufgrund der Gravitationskraft, die auf die Wassersäule wirkt.")]

#v(20pt)

#only("2-")[- Berechnet mit $P = P_("Erdgeschoss") + rho dot g dot h$]
#only("2")[#voiceover("Der Überdruck in einer bestimmten Höhe kann mit der Formel P gleich P Erdgeschoss plus rho mal g mal h berechnet werden, wobei rho die Dichte des Wassers, g die Erdbeschleunigung und h der Höhenunterschied ist.")]

#v(20pt)

#only("3-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt
import numpy as np

# Definiere Gebäudeparameter
erdgeschossdruck = 4.0  # bar
wasserdichte = 1000  # kg/m^3
g = 9.81  # m/s^2
höhe = np.linspace(0, 20, 100)  # m

# Berechne den Druck in verschiedenen Höhen
druck = erdgeschossdruck + wasserdichte * g * höhe / 100000  # Umrechnung von Pa in bar

# Erstelle das Diagramm
plt.figure(figsize=(6, 8))
plt.plot(druck, höhe, linewidth=2, color='blue')
plt.xlabel('Druck (bar)')
plt.ylabel('Höhe (m)')
plt.title('Wasserdruck vs. Höhe in einem Gebäude')
plt.grid(True)
plt.xlim(3.5, 6.5)
plt.ylim(0, 20)

# Annotiere Erdgeschossdruck
plt.annotate(f'Erdgeschoss\n{erdgeschossdruck} bar', xy=(erdgeschossdruck, 0), 
             xytext=(erdgeschossdruck+0.1, 2), arrowprops=dict(facecolor='black', shrink=0.05))

# Annotiere Druck in einer bestimmten Höhe
spezifische_höhe = 14
spezifischer_druck = erdgeschossdruck + wasserdichte * g * spezifische_höhe / 100000
plt.plot(spezifischer_druck, spezifische_höhe, 'ro')
plt.annotate(f'{spezifischer_druck:.1f} bar', xy=(spezifischer_druck, spezifische_höhe),
             xytext=(spezifischer_druck+0.1, spezifische_höhe-1), arrowprops=dict(facecolor='black', shrink=0.05))

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
]
#only("3")[#voiceover("Dieses Diagramm zeigt, wie sich der Wasserdruck mit der Höhe in einem Gebäude ändert. Der Erdgeschossdruck ist markiert, und Du kannst sehen, wie der Druck linear zunimmt, wenn wir das Gebäude hinaufsteigen, aufgrund des zunehmenden Gewichts der Wassersäule.")]

#v(20pt)

#only("4-")[- Der Druck sinkt um $rho dot g dot Delta h$, wenn der Wasserspiegel im Reservoir fällt]
#only("4")[#voiceover("Wenn der Wasserspiegel im Reservoir um einen bestimmten Betrag sinkt, wird der Druck an jedem Wasserhahn im Gebäude um rho mal g mal die Änderung der Reservoirhöhe abnehmen. Dies liegt daran, dass die Höhe der Wassersäule über jedem Wasserhahn reduziert wird.")]

]

#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse 🔑]

#v(40pt)

#only("1-")[- Wasserdruck variiert mit der Höhe in Gebäuden 📏]
#only("1")[#voiceover("Zusammenfassend sind die wichtigsten Punkte: Der Wasserdruck variiert mit der Höhe in Gebäuden aufgrund der Schwerkraft, die auf die Wassersäule wirkt.")]

#v(20pt)

#only("2-")[- Berechenbar mit den Prinzipien der Fluidstatik 🧮]
#only("2")[#voiceover("Diese Druckvariation kann mit den Prinzipien der Fluidstatik berechnet werden, insbesondere mit der Formel, die Druck, Dichte, Schwerkraft und Höhe in Beziehung setzt.")]

#v(20pt)

#only("3-")[- Änderungen des Wasserspiegels im Reservoir beeinflussen den Druck im gesamten System 🆙🔽]
#only("3")[#voiceover("Und Änderungen des Wasserspiegels im Reservoir beeinflussen den Druck an allen Punkten im Wassersystem des Gebäudes um einen Betrag, der proportional zur Änderung der Reservoirhöhe ist.")]

#v(20pt)

#only("4-")[- Das Verständnis dieser Prinzipien ist entscheidend für die Gebäudeplanung 🏗️]
#only("4")[#voiceover("Das Verständnis dieser Prinzipien ist entscheidend für die Planung sicherer und funktionaler Wassersysteme in mehrstöckigen Gebäuden.")]
]