#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#text(size: 30pt, weight: "bold")[Aufgabe]
#v(40pt)
#align(center)[Berechne $1/4 + 2/5$]
#v(40pt)
//Antwort des Schülers: $13/20$
#only("2-")[Deine Antwort: $13/20$]
#only("1")[
#voiceover("Wir sollen ein Viertel plus zwei Fünftel berechnen.")
]
#only("2")[
#voiceover("Und deine Antwort ist dreizehn Zwanzigstel. Das ist richtig!")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Deine Lösung]
#v(40pt)
#only("1-")[Deine Lösung: $1/4 + 2/5 = 13/20$]
#v(20pt)
#only("2-")[👍 Gut gemacht! Du hast die Brüche korrekt addiert]
#v(20pt)
#only("3-")[🔍 Schauen wir uns das noch einmal genauer an]
#only("1")[
#voiceover("Du hast ein Viertel plus zwei Fünftel korrekt berechnet und das Ergebnis ist dreizehn Zwanzigstel.")
]
#only("2")[
#voiceover("Gut gemacht! Du hast die Brüche richtig addiert.")
]
#only("3")[
#voiceover("Schauen wir uns das noch einmal genauer an, um sicherzustellen, dass wir alle Schritte verstehen.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Intuitive Darstellung der Brüche]
#v(40pt)
#box()[
#morphchildren(id: "plot2")[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt
import numpy as np

def visualize_fraction(ax, num, den, color, title):
    # Vertikale Linien zur Unterteilung der Zahlenlinie basierend auf dem Nenner
    for i in range(1, den):
        ax.axvline(i / den, color='black', linestyle='--', linewidth=6)
    
    # Rechteck zum Darstellen des Bruchs auf der Zahlenlinie
    ax.add_patch(plt.Rectangle((0, 0), num / den, 0.3, color=color, alpha=0.8))
    
    # Text zur Anzeige des Bruchs in der Mitte des farbigen Bereichs
    ax.text(num / (2 * den), 0.15, f'{num}/{den}', ha='center', va='center', fontsize=33, color='white')
    
    # Achsenbegrenzungen setzen
    ax.set_xlim(0, 1)
    ax.set_ylim(0, 0.3)
    
    # Berechnung der Tick-Positionen und -Beschriftungen basierend auf dem Nenner
    ticks = np.arange(0, 1 + 1/den, 1/den)
    labels = [f'{i}/{den}' for i in range(len(ticks))]
    
    # Setzen der x-Achsen-Ticks und -Beschriftungen
    ax.set_xticks(ticks)
    ax.set_xticklabels(labels)
    
    # Entfernen der y-Achsen-Ticks für ein saubereres Aussehen
    ax.set_yticks([])
    
    # Titel hinzufügen
    ax.set_title(title)

# Erstellen einer Figur mit zwei Unterplots, vertikal ausgerichtet
fig, axs = plt.subplots(2, 1, figsize=(8, 6))

# Ersten Bruch 1/4 auf der Zahlenlinie plotten
visualize_fraction(axs[0], 1, 4, 'red', '1/4')
# Zweiten Bruch 2/5 auf der Zahlenlinie plotten
visualize_fraction(axs[1], 2, 5, 'blue', '2/5')

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1-")[#text()[- Ursprüngliche Brüche]]
#v(20pt)
#only("2-")[#text()[- Brüche haben verschiedene Nenner]]
#v(20pt)
#only("3-")[#text()[- Man kann sie nicht direkt addieren]]
#only("1")[
#voiceover("Hier siehst du die Brüche mit ihren ursprünglichen Nennern. Oben haben wir ein Viertel und unten zwei Fünftel.")
]
#only("2")[
#voiceover("Diese Brüche haben verschiedene Nenner, also teilen wir sie in Stücke verschiedener Größe ein: Oben haben wir Viertel und unten Fünftel. Das bedeutet, dass wir sie nicht direkt addieren können.")
]
#only("3")[
#voiceover("Du musst die Brüche zuerst auf einen gemeinsamen Nenner bringen, sodass die Stücke gleich groß sind. Und erst dann kannst du sie addieren.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Intuitive Darstellung: Erweiterung]
#box()[
#morphchildren(id: "plot2")[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt
import numpy as np

def visualize_fraction(ax, num, den, color, title):
    for i in range(1, den):
        ax.axvline(i / den, color='black', linestyle='--', linewidth=6)
    ax.add_patch(plt.Rectangle((0, 0), num / den, 0.3, color=color, alpha=0.8))
    ax.text(num / (2 * den), 0.15, f'{num}/{den}', ha='center', va='center', fontsize=33, color='white')
    ax.set_xlim(0, 1)
    ax.set_ylim(0, 0.3)
    ticks = np.arange(0, 1 + 1/den, 1/den)
    labels = [f'{i}/{den}' for i in range(len(ticks))]
    ax.set_xticks(ticks)
    ax.set_xticklabels(labels)
    ax.set_yticks([])
    ax.set_title(title)

fig, axs = plt.subplots(2, 1, figsize=(8, 6))
visualize_fraction(axs[0], 5, 20, 'red', '5/20')
visualize_fraction(axs[1], 8, 20, 'blue', '8/20')

plt.tight_layout()
plt.show()
```,
width: 360pt),
)]
]
#v(20pt)
#only("1-")[#text()[Brüche auf gemeinsamen Nenner bringen:]]
#only("2-")[#text()[- $5/20 = 1/4$]]
#v(20pt)
#only("3-")[#text()[- $8/20 = 2/5$]]
#only("1")[
#voiceover("Hier siehst du die Brüche mit einem gemeinsamen Nenner von zwanzig.")
]
#only("2")[
#voiceover("Also haben wir jetzt fünf Zwanzigstel statt einem Viertel,")
]
#only("3")[
#voiceover("und acht Zwanzigstel statt zwei Fünftel. Du siehst, dass auf jeder Seite der Wert gleich ist, lediglich die Darstellung ist anders.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Korrekte Lösung: Addieren]
#box()[
#morphchildren(id: "plot2")[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt
import numpy as np

def visualize_fraction(ax, num, den, color, title):
    for i in range(1, den):
        ax.axvline(i / den, color='black', linestyle='--', linewidth=6)
    ax.add_patch(plt.Rectangle((0, 0), num / den, 0.3, color=color, alpha=0.8))
    ax.text(num / (2 * den), 0.15, f'{num}/{den}', ha='center', va='center', fontsize=33, color='white')
    ax.set_xlim(0, 1)
    ax.set_ylim(0, 0.3)
    ticks = np.arange(0, 1 + 1/den, 1/den)
    labels = [f'{i}/{den}' for i in range(len(ticks))]
    ax.set_xticks(ticks)
    ax.set_xticklabels(labels)
    ax.set_yticks([])
    ax.set_title(title)

fig, ax = plt.subplots(figsize=(8, 3))
visualize_fraction(ax, 13, 20, 'purple', '5/20 + 8/20 = 13/20')

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[#text(weight: "bold")[Schritt 3:] Addiere die Zähler, behalte den gemeinsamen Nenner]
#v(20pt)
#only("1")[
#voiceover("Jetzt kannst du die Brüche addieren.

 Du addierst die Zähler und behältst den gemeinsamen Nenner.")
]
#only("2")[
#voiceover("Fünf Zwanzigstel plus acht Zwanzigstel ist also gleich dreizehn Zwanzigstel. Und das ist das korrekte Ergebnis.")
]
]