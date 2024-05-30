#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Ballonphysik 🎈]

#v(40pt)

#only("1-")[- Ballons steigen aufgrund der Auftriebskraft]
#only("1")[#voiceover("Ballons steigen aufgrund der Auftriebskraft. Diese Kraft entsteht durch den Dichteunterschied zwischen dem Ballongas und der umgebenden Luft.")]

#v(20pt)

#only("2-")[- Dichteunterschied: Ballongas vs. Luft]
#only("2")[#voiceover("Die Auftriebskraft hängt vom Dichteunterschied zwischen dem Gas im Ballon und der Luft außen ab. Je leichter das Gas im Vergleich zur Luft ist, desto größer ist die Auftriebskraft.")]

#v(20pt)

#only("3-")[- Bedingungen für das Schweben auf konstanter Höhe]
#only("3")[#voiceover("Damit ein Ballon auf konstanter Höhe schwebt, müssen bestimmte Bedingungen erfüllt sein. Die Auftriebskraft muss gleich dem Gewicht des Ballons sein. Dieses Gleichgewicht hält den Ballon in einer stabilen Höhe.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Ballonverhalten 📈]

#v(40pt)

#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt
import numpy as np

# Create data for the balloon's altitude over time
time = np.linspace(0, 10, 100)
altitude_rise = time**2 / 10
altitude_hover = np.full_like(time, 5)
altitude_fall = 5 - (time - 5)**2 / 10

# Plot the balloon's behavior
plt.figure(figsize=(8, 6))
plt.plot(time[:50], altitude_rise[:50], label='Rising')
plt.plot(time[50:], altitude_hover[50:], label='Hovering')
plt.plot(time[50:], altitude_fall[50:], label='Falling')

# Add labels and legend
plt.xlabel('Time')
plt.ylabel('Altitude')
plt.title("Balloon's Behavior")
plt.legend()
plt.grid(True)

plt.show()
```,
width: 360pt),
)
]
]
#only("1")[#voiceover("Dieses Diagramm zeigt das typische Verhalten eines Ballons über die Zeit. Zunächst steigt der Ballon aufgrund der Auftriebskraft. Wenn die Auftriebskraft dem Gewicht entspricht, schwebt der Ballon auf konstanter Höhe. Wenn die Auftriebskraft abnimmt, zum Beispiel durch ein Leck, beginnt der Ballon zu fallen.")]

#v(20pt)

#only("2-")[$ F_("buoyant") = F_("weight") $  ⇒  Schweben]
#only("2")[#voiceover("Denke daran, dass für das Schweben die Auftriebskraft gleich der Gewichtskraft sein muss. Dies ist die entscheidende Bedingung, damit ein Ballon eine stabile Höhe beibehält.")]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung 🎯]

#v(40pt)

#only("1-")[- Auftriebskraft hebt Ballons 🆙]
#only("1")[#voiceover("Zusammenfassend hebt die Auftriebskraft, die durch den Dichteunterschied zwischen dem Ballongas und der Luft entsteht, die Ballons.")]

#v(20pt)

#only("2-")[- Dichteunterschied: Schlüsselfaktor 🔑]
#only("2")[#voiceover("Der Dichteunterschied zwischen dem Gas und der Luft ist der Schlüsselfaktor, der die Stärke der Auftriebskraft bestimmt.")]

#v(20pt)

#only("3-")[- Schweben: $F_("buoyant") = F_("weight")$ ⚖️]
#only("3")[#voiceover("Damit ein Ballon auf konstanter Höhe schwebt, muss die Auftriebskraft gleich dem Gewicht des Ballons sein. Dieses Gleichgewicht ist entscheidend für einen stabilen Flug.")]
]