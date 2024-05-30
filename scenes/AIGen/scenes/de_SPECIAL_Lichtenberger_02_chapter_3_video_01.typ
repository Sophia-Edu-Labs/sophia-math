#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Warum steigen Ballons? 🎈]
#v(40pt)
#only("1-")[- Ballons steigen aufgrund der Auftriebskraft 🍃]
#v(20pt)
#only("2-")[- Die Auftriebskraft hängt von der Dichteunterschied ab 🪁]
#v(20pt)
#only("3-")[- Das Gas im Ballon hat eine geringere Dichte als Luft 💨]
#only("1")[
#voiceover("Ballons steigen in den Himmel aufgrund einer Kraft, die als Auftrieb bezeichnet wird. Diese Kraft lässt auch Objekte im Wasser schwimmen.")
]
#only("2")[
#voiceover("Die Stärke der Auftriebskraft hängt vom Dichteunterschied zwischen dem Gas im Ballon und der umgebenden Luft ab.")
]
#only("3")[
#voiceover("Das im Ballon verwendete Gas, wie Helium, hat eine viel geringere Dichte im Vergleich zur umgebenden Luft.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Auftriebskraft]
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

# Draw the balloon
balloon = plt.Circle((0.5, 0.7), 0.2, color='red', alpha=0.7)
ax.add_artist(balloon)

# Draw the buoyancy force arrow
ax.arrow(0.5, 0.7, 0, 0.2, head_width=0.05, head_length=0.1, fc='green', ec='green', alpha=0.7)
ax.text(0.52, 0.85, 'Buoyancy Force', color='green', fontsize=12, alpha=0.7)

# Draw the density difference
ax.text(0.1, 0.3, 'Air (Higher Density)', color='blue', fontsize=12, alpha=0.7)
ax.text(0.32, 0.6, 'Helium\n(Lower Density)', color='red', fontsize=12, alpha=0.7)

# Set the limits and remove the ticks
ax.set_xlim(0, 1)
ax.set_ylim(0, 1)
ax.set_xticks([])
ax.set_yticks([])

plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Dies erzeugt eine Auftriebskraft nach oben auf den Ballon. Die Größe dieser Kraft entspricht dem Gewicht der vom Ballon verdrängten Luft.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Archimedes' Prinzip]
#v(40pt)
#only("1-")[$ "Auftriebskraft" = "Gewicht der verdrängten Flüssigkeit" $]
#v(20pt)
#only("2-")[$ F_B = rho_("Luft") g V_("Ballon") $]
#v(20pt)
#only("3-")[wobei $rho_("Luft")$ die Luftdichte, $g$ die Schwerkraft und $V_("Ballon")$ das Volumen des Ballons ist]
#only("1")[
#voiceover("Dies ist als Archimedes' Prinzip bekannt. Es besagt, dass die Auftriebskraft auf ein Objekt gleich dem Gewicht der vom Objekt verdrängten Flüssigkeit ist.")
]
#only("2")[
#voiceover("Mathematisch entspricht die Auftriebskraft F B der Dichte der Luft rho Luft, multipliziert mit der Beschleunigung durch die Schwerkraft g, multipliziert mit dem Volumen des Ballons V Ballon.")
]
#only("3")[
#voiceover("Hierbei ist rho Luft die Dichte der umgebenden Luft, g die Beschleunigung durch die Schwerkraft und V Ballon das Volumen des Ballons.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Bedingung zum Steigen]
#v(40pt)
#only("1-")[Der Ballon steigt, wenn:]
#v(20pt)
#only("2-")[$ "Auftriebskraft" > "Gewicht des Ballons" $]
#v(20pt)
#only("3-")[$ rho_("Luft") g V_("Ballon") > (rho_("Gas") V_("Ballon") + m_("Ballon")) g $]
#v(20pt)
#only("4-")[wobei $rho_("Gas")$ die Gasdichte und $m_("Ballon")$ die Masse des Ballonmaterials ist]
#only("1")[
#voiceover("Der Ballon beginnt zu steigen, wenn die Auftriebskraft größer ist als das Gesamtgewicht des Ballons, einschließlich des Gewichts des Gases und des Ballonmaterials.")
]
#only("2")[
#voiceover("Mit anderen Worten, der Ballon steigt, wenn die Auftriebskraft das Gewicht des Ballons übersteigt.")
]
#only("3")[
#voiceover("Diese Bedingung kann ausgedrückt werden als: die Dichte der Luft mal Schwerkraft mal das Volumen des Ballons ist größer als die Dichte des Gases mal das Volumen des Ballons plus die Masse des Ballonmaterials, alles multipliziert mit der Schwerkraft.")
]
#only("4")[
#voiceover("Hierbei ist rho Gas die Dichte des Gases im Ballon und m Ballon die Masse des Ballonmaterials selbst.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Ballons steigen aufgrund der Auftriebskraft 🎈🍃]
#v(20pt)
#only("2-")[- Die Auftriebskraft hängt von der Dichteunterschied ab 🪁]
#v(20pt)
#only("3-")[- Der Ballon steigt, wenn die Auftriebskraft > Gewicht ist 📈]
#only("1")[
#voiceover("Zusammenfassend lässt sich sagen, dass Ballons aufgrund der Auftriebskraft steigen, die eine nach oben gerichtete Kraft ist, die von der umgebenden Luft ausgeübt wird.")
]
#only("2")[
#voiceover("Die Stärke dieser Auftriebskraft hängt vom Dichteunterschied zwischen dem Gas im Ballon und der Luft außerhalb ab.")
]
#only("3")[
#voiceover("Der Ballon steigt, wenn die Auftriebskraft größer ist als das Gesamtgewicht des Ballons, einschließlich des Gases und des Ballonmaterials.")
]
]