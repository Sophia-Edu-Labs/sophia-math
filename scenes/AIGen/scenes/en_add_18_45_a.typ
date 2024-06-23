#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#text(size: 30pt, weight: "bold")[Aufgabe]
#v(40pt)
#align(center)[Berechne $1/8 + 4/5$]
#v(40pt)
//Antwort des Schülers: $5/13$
#only("2-")[Deine Antwort: $5/13$]
#only("1")[
#voiceover("Die Aufgabe ist, ein Achtel plus vier Fünftel zu berechnen.")
]
#only("2")[
#voiceover("Und deine Antwort, fünf Dreizehntel, ist leider nicht richtig.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Dein Fehler]
#v(40pt)
#only("1-")[Dein Fehler: $1/8 + 4/5 ≠ (1+4)/(8+5)$]
#v(20pt)
#only("2-")[🛠️ Du kannst die Zähler und Nenner nicht einfach separat addieren]
#v(20pt)
#only("3-")[🛠️ Du musst die Brüche zuerst auf den gemeinsamen Nenner bringen]
#only("1")[
#voiceover("Du hast wohl einfach die Zähler addiert, und die Nenner addiert. Also eins plus vier geteilt durch acht plus fünf. Das stimmt aber leider nicht.")
]
#only("2")[
#voiceover("Denn du darfst die Zähler und Nenner nicht einfach separat addieren.")
]
#only("3")[
#voiceover("Stattdessen musst du die Brüche zuerst auf den gemeinsamen Nenner bringen, also dass sie den gleichen Nenner haben. Erst dann kannst du die Zähler addieren.")
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

# Ersten Bruch 1/8 auf der Zahlenlinie plotten
visualize_fraction(axs[0], 1, 8, 'red', '1/8')
# Zweiten Bruch 4/5 auf der Zahlenlinie plotten
visualize_fraction(axs[1], 4, 5, 'blue', '4/5')

plt.tight_layout()
plt.show()
```,
width: 360pt),
)]
]
#only("1-")[#text()[- Ursprüngliche Brüche]]
#v(20pt)
#only("2-")[#text()[- Brüche haben verschiedene Nenner]]
#v(20pt)
#only("3-")[#text()[- Man kann nur bei gleichen Nennern addieren]]
#only("1")[
#voiceover("Suchen wir also den gemeinsamen Nenner. Hier siehst du die Brüche mit ihren ursprünglichen Nennern. Links haben wir ein Achtel und rechts vier Fünftel.")
]
#only("2")[
#voiceover("Diese Brüche haben verschiedene Nenner, also teilen wir sie in Stücke verschiedener Größe ein: Links haben wir Achtel und rechts Fünftel. Deswegen können wir auch nicht einfach die Zähler addieren.")
]
#only("3")[
#voiceover("Denn das geht erst, wenn sie den gleichen Nenner haben. Denn nur dann sind die Stücke gleich groß und wir können sie addieren.")
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
visualize_fraction(axs[0], 5, 40, 'red', '5/40')
visualize_fraction(axs[1], 32, 40, 'blue', '32/40')

plt.tight_layout()
plt.show()
```,
width: 360pt),
)]
]
#v(20pt)
#only("1-")[#text()[Brüche auf gemeinsamen Nenner bringen:]]
#only("2-")[#text()[- $5/40 = 1/8$]]
#v(20pt)
#only("3-")[#text()[- $32/40 = 4/5$]]
#only("1")[
#voiceover("Ein gemeinsamer Nenner wäre ja 40, denn 40 ist ein Vielfaches von 8 und 5.")
]
#only("2")[
#voiceover("Dann wandeln wir die Brüche um: Fünf Vierzigstel ist gleich einem Achtel.")
]
#only("3")[
#voiceover("und zweiunddreißig Vierzigstel statt vier Fünftel. Du siehst, dass auf jeder Seite der Wert gleich ist, wie davor. Lediglich die Darstellung ist anders.")
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
visualize_fraction(ax, 37, 40, 'purple', '5/40 + 32/40 = 37/40')

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
$ #sym.arrow.b $
#box()[
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
visualize_fraction(ax, 37, 40, 'purple', '37/40')

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
#v(40pt)
#only("1-")[#text(weight: "bold")[Schritt 3:] Addiere die Zähler, behalte den gemeinsamen Nenner]
#v(20pt)
#only("1")[
#voiceover("Jetzt haben beide Brücher den gleichen Nenner - und du kannst du die Brüche addieren. Du addierst die Zähler und behältst den gemeinsamen Nenner.")
]
#only("2")[
#voiceover("Fünf Vierzigstel plus zweiunddreißig Vierzigstel ist also gleich siebenunddreißig Vierzigstel. Und das ist das korrekte Ergebnis.")
]
]