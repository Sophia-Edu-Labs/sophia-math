#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#only("1")[
#voiceover("Großartige Arbeit! Das ist die richtige Antwort. Lass uns die Lösung Schritt für Schritt durchgehen.")
]

#text(size: 30pt, weight: "bold")[Szenario]
#v(40pt)
#only("2-")[- Holzbrett schwimmt im Wasser 🌊]
#only("3-")[- Stein auf dem Brett 🪨]
#only("4-")[- Stein rutscht ab und sinkt ⬇]

#only("2")[
#voiceover("Wir haben ein Holzbrett, das in einem mit Wasser gefüllten Behälter schwimmt.")
]
#only("3")[
#voiceover("Es gibt einen Stein auf dem Brett.")
]
#only("4")[
#voiceover("Der Stein rutscht vom Brett und sinkt auf den Boden des Behälters.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Auftriebsprinzipien]
#v(40pt)
#only("1-")[- Auftriebskraft entspricht dem Gewicht des verdrängten Wassers 🎈=💧]
#only("2-")[- Brett verdrängt Wasser entsprechend seinem Gewicht 🌊=🪵]
#only("3-")[- Gewicht des Steins wird vom Brett getragen, nicht vom Wasser 🪨➡🪵]

#only("1")[
#voiceover("Die Auftriebskraft, die auf ein Objekt wirkt, entspricht dem Gewicht des verdrängten Wassers.")
]
#only("2")[
#voiceover("Das schwimmende Brett verdrängt ein Wasservolumen, das seinem eigenen Gewicht entspricht.")
]
#only("3")[
#voiceover("Wenn der Stein auf dem Brett liegt, wird sein Gewicht vom Brett getragen, nicht vom Wasser.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Was Passiert]
#v(40pt)
#only("1-")[- Stein sinkt, verdrängt kein Wasser mehr über das Brett 🪨⬇]
#only("2-")[- Brett steigt, verdrängt weniger Wasser 🪵⬆]
#only("3-")[- Wasserspiegel bleibt gleich oder sinkt leicht 🌊➡]

#only("1")[
#voiceover("Wenn der Stein sinkt, verdrängt er kein Wasser mehr über das Brett.")
]
#only("2")[
#voiceover("Das Brett steigt, da es nun nur noch ein Wasservolumen verdrängt, das seinem eigenen Gewicht entspricht.")
]
#only("3")[
#voiceover("Infolgedessen bleibt der Wasserspiegel gleich oder sinkt leicht, abhängig von den relativen Dichten des Steins und des Wassers.")
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

fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(10, 4))

# Scenario 1: Stone on the board
ax1.fill_between([0, 10], [2, 2], color='blue', alpha=0.5)
ax1.fill_between([3, 7], [2, 2], [2.5, 2.5], color='brown')
ax1.scatter(5, 2.6, s=100, color='gray', marker='o')
ax1.set_title('Stein auf dem Brett')
ax1.set_xlim(0, 10)
ax1.set_ylim(0, 5)
ax1.set_aspect('equal')

# Scenario 2: Stone sunk
ax2.fill_between([0, 10], [2, 2], color='blue', alpha=0.5)
ax2.fill_between([4, 6], [2, 2], [2.3, 2.3], color='brown')
ax2.scatter(5, 0.5, s=100, color='gray', marker='o')
ax2.set_title('Stein gesunken')
ax2.set_xlim(0, 10)
ax2.set_ylim(0, 5)
ax2.set_aspect('equal')

plt.tight_layout()
plt.show()
```, width: 360pt))
]
]

#only("1")[
#voiceover("Hier ist eine Visualisierung dessen, was passiert. Links sehen wir den Stein auf dem Brett, der Wasser verdrängt. Rechts, nachdem der Stein gesunken ist, steigt das Brett und verdrängt weniger Wasser, und der Wasserspiegel bleibt etwa gleich.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Fazit]
#v(40pt)
#only("1-")[- Gewicht des Steins wird vom Brett auf das Wasser übertragen 🪨➡🌊]
#only("2-")[- Brett verdrängt weniger Wasser, steigt 🪵⬆]
#only("3-")[- Wasserspiegel bleibt konstant oder sinkt leicht 🌊➡]

#only("1")[
#voiceover("Zusammenfassend lässt sich sagen, dass das Gewicht des Steins, wenn er sinkt, vom Brett auf das Wasser übertragen wird.")
]
#only("2")[
#voiceover("Das Brett verdrängt nun weniger Wasser und steigt.")
]
#only("3")[
#voiceover("Der Wasserspiegel bleibt konstant oder sinkt leicht, abhängig von der Dichte des Steins im Vergleich zu Wasser.")
]
]