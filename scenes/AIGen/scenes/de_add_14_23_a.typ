#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#text(size: 30pt, weight: "bold")[Aufgabe]
#v(40pt)
#align(center)[Berechne $1/4 + 2/3$]
#v(40pt)
//Antwort des Schülers: $3/7$
#only("2-")[Deine Antwort: $3/7$]
#only("1")[
#voiceover("Die Aufgabe ist, ein Viertel plus zwei Drittel zu berechnen.")
]
#only("2")[
#voiceover("Und deine Antwort, drei Siebtel, ist leider nicht richtig.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Dein Fehler]
#v(40pt)
#only("1-")[Dein Fehler: $1/4 + 2/3 ≠ (1+2)/(4+3)$]
#v(20pt)
#only("2-")[🛠️ Du kannst die Zähler und Nenner nicht einfach separat addieren]
#v(20pt)
#only("3-")[🛠️ Du musst die Brüche zuerst auf den gemeinsamen Nenner bringen]
#only("1")[
#voiceover("Du hast wohl einfach die Zähler addiert, und die Nenner addiert. Also eins plus zwei geteilt durch vier plus drei. Das stimmt aber leider nicht.")
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
#morphchildren(id: "plot1")[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt
import numpy as np

def visualize_fraction(ax, num, den, color, title):
    # Vertikale Linien zur Unterteilung der Zahlenlinie basierend auf dem Nenner
    for i in range(1, den):
        ax.axvline(i / den, color='black', linestyle='--', linewidth=1)
    
    # Rechteck zum Darstellen des Bruchs auf der Zahlenlinie
    ax.add_patch(plt.Rectangle((0, 0), num / den, 0.3, color=color, alpha=0.8))
    
    # Text zur Anzeige des Bruchs in der Mitte des farbigen Bereichs
    ax.text(num / (2 * den), 0.15, f'{num}/{den}', ha='center', va='center', fontsize=44, color='white')
    
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
# Zweiten Bruch 2/3 auf der Zahlenlinie plotten
visualize_fraction(axs[1], 2, 3, 'blue', '2/3')

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
#voiceover("Suchen wir also den gemeinsamen Nenner. Hier siehst du die Brüche mit ihren ursprünglichen Nennern. Links haben wir ein Viertel und rechts zwei Drittel.")
]
#only("2")[
#voiceover("Diese Brüche haben verschiedene Nenner, also teilen wir sie in Stücke verschiedener Größe ein: Links haben wir Viertel und rechts Drittel. Deswegen können wir auch nicht einfach die Zähler addieren.")
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

def visualize_equivalent_fractions(frac1, frac2):
    num1, den1 = frac1
    num2, den2 = frac2

    fig, (ax1, ax2) = plt.subplots(2, 1, figsize=(8, 6))

    for i in range(1, 12):
        ax1.axvline(i / 12, color='black', linestyle='--', linewidth=3)
    ax1.add_patch(plt.Rectangle((0, 0), num1 / 12, 1, color='red', alpha=0.8))
    ax1.text(num1 / (2 * 12), 0.5, f'{num1}/{12}', ha='center', va='center', fontsize=44, color='white')
    ax1.set_xlim(0, 1)
    ax1.set_ylim(0, 1)
    ax1.set_xticks(np.arange(0, 1 + 1/12, 1/12))
    ax1.set_xticklabels([f'{i}/{12}' for i in range(12 + 1)])
    ax1.set_yticks([])

    for i in range(1, 12):
        ax2.axvline(i / 12, color='black', linestyle='--', linewidth=3)
    ax2.add_patch(plt.Rectangle((0, 0), num2 / 12, 1, color='blue', alpha=0.8))
    ax2.text(num2 / (2 * 12), 0.5, f'{num2}/{12}', ha='center', va='center', fontsize=44, color='white')
    ax2.set_xlim(0, 1)
    ax2.set_ylim(0, 1)
    ax2.set_xticks(np.arange(0, 1 + 1/12, 1/12))
    ax2.set_xticklabels([f'{i}/{12}' for i in range(12 + 1)])
    ax2.set_yticks([])

    plt.tight_layout()
    plt.show()

frac1 = (3, 12) 
frac2 = (8, 12)

visualize_equivalent_fractions(frac1, frac2)
```,
width: 360pt),
)]
]
#v(20pt)
#only("1-")[#text()[Brüche auf gemeinsamen Nenner bringen:]]
#only("2-")[#text()[- $3/12 = 1/4$]]
#v(20pt)
#only("3-")[#text()[- $8/12 = 2/3$]]
#only("1")[
#voiceover("Ein gemeinsamer Nenner wäre ja 12, denn 12 ist ein Vielfaches von 4 und 3.")
]
#only("2")[
#voiceover("Dann wandeln wir die Brüche um: Drei Zwölftel ist gleich einem Viertel.")
]
#only("3")[
#voiceover("und acht Zwölftel statt zwei Drittel. Du siehst, dass auf jeder Seite der Wert gleich ist, wie davor. Lediglich die Darstellung ist anders.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Korrekte Lösung: Addieren]
#box()[
#morphchildren(id: "plot3")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

def visualize_sum_fraction(frac1, frac2):
    num1, den1 = frac1
    num2, den2 = frac2

    fig, ax = plt.subplots(figsize=(8, 3))

    for i in range(1, 12):
        ax.axvline(i / 12, color='black', linestyle='--', linewidth=3)
    ax.add_patch(plt.Rectangle((0, 0), (num1 + num2) / 12, 1, color='purple', alpha=0.8))
    ax.text((num1 + num2) / (2 * 12), 0.5, f'{num1 + num2}/{12}', ha='center', va='center', fontsize=44, color='white')
    ax.set_xlim(0, 1)
    ax.set_ylim(0, 1)
    ax.set_xticks(np.arange(0, 1 + 1/12, 1/12))
    ax.set_xticklabels([f'{i}/{12}' for i in range(12 + 1)])
    ax.set_yticks([])
    plt.tight_layout()
    plt.show()

frac1 = (3, 12) 
frac2 = (8, 12)

visualize_sum_fraction(frac1, frac2)
```,
width: 360pt),
)]
]
#v(40pt)
#only("1-")[#text(weight: "bold")[Schritt 3:] Addiere die Zähler, behalte den gemeinsamen Nenner]
#v(20pt)
#only("1")[
#voiceover("Jetzt haben beide Brücher den gleichen Nenner - und du kannst du die Brüche addieren. Du addierst die Zähler und behältst den gemeinsamen Nenner.")
]
#only("2")[
#voiceover("Drei Zwölftel plus acht Zwölftel ist also gleich elf Zwölftel. Und das ist das korrekte Ergebnis.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung der Brüche: Kreisdiagramme]
#box()[
#morphchildren(id: "plot4")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
from matplotlib.patches import Wedge

def plot_fraction_circle(ax, num_parts, shaded_parts, title):
    for i in range(num_parts):
        angle_start = (360 / num_parts) * i
        angle_end = (360 / num_parts) * (i + 1)
        color = 'blue' if i < shaded_parts else 'lightgray'
        wedge = Wedge(center=(0.5, 0.5), r=0.4, theta1=angle_start, theta2=angle_end, facecolor=color, edgecolor='black', linewidth=max(4, 10-num_parts/3))
        ax.add_patch(wedge)
    ax.set_xlim(0, 1)
    ax.set_ylim(0, 1)
    ax.set_aspect('equal')
    ax.set_title(title, fontsize=50)
    ax.axis('off')

fig, axs = plt.subplots(1, 2, figsize=(12, 5))

plot_fraction_circle(axs[0], 4, 1, '1/4')
plot_fraction_circle(axs[1], 3, 2, '2/3')

plt.tight_layout()
plt.show()
```,
width: 360pt),
)]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung der Brüche: Zahlenstrahl]
#box()[
#morphchildren(id: "plot5")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

def visualize_fraction(ax, num, den, color, title):
    for i in range(1, den):
        ax.axvline(i / den, color='black', linestyle='--', linewidth=1)
    ax.add_patch(plt.Rectangle((0, 0), num / den, 0.3, color=color, alpha=0.8))
    ax.text(num / (2 * den), 0.15, f'{num}/{den}', ha='center', va='center', fontsize=44, color='white')
    ax.set_xlim(0, 1)
    ax.set_ylim(0, 0.3)
    ticks = np.arange(0, 1 + 1/den, 1/den)
    labels = [f'{i}/{den}' for i in range(len(ticks))]
    ax.set_xticks(ticks)
    ax.set_xticklabels(labels)
    ax.set_yticks([])
    ax.set_title(title)

fig, axs = plt.subplots(2, 1, figsize=(8, 6))

visualize_fraction(axs[0], 1, 4, 'red', '1/4')
visualize_fraction(axs[1], 2, 3, 'blue', '2/3')

plt.tight_layout()
plt.show()
```,
width: 360pt),
)]
]
]