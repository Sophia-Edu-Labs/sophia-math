#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Zukünftiger Wert]
#v(40pt)
#only("1-")[
- Gegeben:
  - Gegenwärtiger Wert (P V) = €100
  - Jährlicher Zinssatz (r) = 5% = 0,05
  - Anzahl der Perioden (n) = 1 Jahr
]
#only("2-")[
- Formel: $F V = P V dot (1 + r)^n$
]
#only("3-")[
- Berechnung: $F V = 100 dot (1 + 0.05)^1$
]
#only("4-")[
- Ergebnis: $F V = €105$ 💰
]

#only("1")[
#voiceover("Leider nicht ganz richtig. Lass uns die richtige Lösung Schritt für Schritt durchgehen. Gegeben sind der Gegenwärtige Wert von €100, ein jährlicher Zinssatz von 5%, und wir wollen den zukünftigen Wert nach einem Jahr wissen.")
]
#only("2")[
#voiceover("Um den zukünftigen Wert zu berechnen, verwenden wir die Formel: Zukünftiger Wert ist gleich Gegenwärtiger Wert mal die Größe 1 plus Zinssatz, hoch die Anzahl der Perioden.")
]
#only("3")[
#voiceover("Setzen wir unsere Werte ein, haben wir: Zukünftiger Wert ist gleich 100 mal die Größe 1 plus 0,05, hoch 1.")
]
#only("4")[
#voiceover("Berechnen wir dies, erhalten wir einen zukünftigen Wert von €105. Wenn Du also heute €100 zu einem jährlichen Zinssatz von 5% investierst, wird es in einem Jahr €105 wert sein.")
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

# Definiere die Daten
labels = ['Gegenwärtiger Wert', 'Zukünftiger Wert']
values = [100, 105]

# Erstelle das Diagramm
fig, ax = plt.subplots(figsize=(6, 4))
ax.bar(labels, values, color=['blue', 'green'])

# Füge Wertetiketten oben auf den Balken hinzu
for i, v in enumerate(values):
    ax.text(i, v + 0.5, '€' + str(v), ha='center')

# Füge Titel und Beschriftungen hinzu
ax.set_title('Gegenwärtiger Wert vs Zukünftiger Wert')
ax.set_ylabel('Wert (€)')

plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Hier ist eine Visualisierung, die den gegenwärtigen Wert und den zukünftigen Wert vergleicht. Der blaue Balken repräsentiert die €100, die Du heute hast, und der grüne Balken zeigt die €105, die es in einem Jahr bei einem Zinssatz von 5% wert sein wird.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse]
#v(40pt)
#only("1-")[
- Der zukünftige Wert hängt ab von:
  - Gegenwärtiger Wert 💰
  - Zinssatz 📈
  - Zeit ⏳
]
#only("2-")[
- Formel: $F V = P V dot (1 + r)^n$ 🧮
]
#only("3-")[
- Zinseszinsen lassen Geld im Laufe der Zeit wachsen 🌱➡🌳
]

#only("1")[
#voiceover("Die wichtigsten Dinge, die Du dir merken solltest, sind, dass der zukünftige Wert vom gegenwärtigen Wert, dem Zinssatz und der Zeit, die das Geld zum Wachsen hat, abhängt.")
]
#only("2")[
#voiceover("Wir können den zukünftigen Wert mit der Formel berechnen: Zukünftiger Wert ist gleich Gegenwärtiger Wert mal die Größe 1 plus Zinssatz, hoch die Anzahl der Perioden.")
]
#only("3")[
#voiceover("Dank der Kraft der Zinseszinsen kann selbst eine relativ kleine Geldsumme im Laufe der Zeit erheblich wachsen, wenn sie zu einem vernünftigen Zinssatz investiert wird.")
]
]]