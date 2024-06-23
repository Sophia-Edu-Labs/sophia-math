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
//Antwort des Schülers: $3/12$
#only("2-")[Deine Antwort: $3/12$]
#only("1")[
#voiceover("Wir sollen ein Viertel plus zwei Drittel berechnen.")
]
#only("2")[
#voiceover("Und deine Antwort ist drei Zwölftel. Das ist leider nicht richtig.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Dein Fehler]
#v(40pt)
#only("1-")[Dein Fehler: $1/4 + 2/3 ≠ (1+2)/(4 dot 3)$]
#v(20pt)
#only("2-")[✅ Du hast die Nenner multipliziert!]
#v(20pt)
#only("3-")[🛠️ Du musst aber auch die Zähler anpassen...]
#only("1")[
#voiceover("Denn ein Viertel plus zwei Drittel ist nicht gleich eins plus zwei durch vier mal drei.")
]
#only("2")[
#voiceover("Was richtig ist, ist dass du die Nenner multipliziert hast. Das ist ein guter Anfang.")
]
#only("3")[
#voiceover("Allerdings musst du auch die Zähler anpassen, wenn du die Nenner veränderst! Denn sonst änderst du den Wert der Brüche.")
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
# Zweiten Bruch 2/3 auf der Zahlenlinie plotten
visualize_fraction(axs[1], 2, 3, 'blue', '2/3')

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
#only("4-")[#text()[- Gemeinsamer Nenner: $12$]]
#only("1")[
#voiceover("Hier siehst du die Brüche mit ihren ursprünglichen Nennern. Links haben wir ein Viertel und rechts zwei Drittel.")
]
#only("2")[
#voiceover("Da diese Brüche verschiedene Nenner haben, müssen wir sie zuerst auf einen gemeinsamen Nenner bringen.")
]
#only("3")[
#voiceover("Der gemeinsame Nenner ist zwölf, wie du schon richtig erkannt hast.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zähler anpassen]
// First Plot that covers the first fraction, which is 1/4
#only("-2")[
#box()[
#morphchildren(id: "plot3")[
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

#first subplot: 1/4 to 3/12
visualize_fraction(axs[0], 1, 4, 'red', '1/4')
visualize_fraction(axs[1], 3, 12, 'blue', '3/12')

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]]
// Second Plot that covers the second fraction, which is 2/3
#only("3-")[
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

#second subplot: 2/3 to 8/12
visualize_fraction(axs[0], 2, 3, 'red', '2/3')
visualize_fraction(axs[1], 8, 12, 'blue', '8/12')

plt.tight_layout()
plt.show()
```,
width: 360pt),
)]
]
]
#v(20pt)
#only("2-")[#text()[- $1/4 = 3/12$]]
#v(20pt)
#only("3-")[#text()[- $2/3 = 8/12$]]
#only("1")[
#voiceover("Wir müssen nur aufpassen, dass wir auch die Zähler anpassen, wenn wir die Nenner verändern.")
]
#only("2")[
#voiceover("Aus ein Viertel werden dann drei Zwölftel. Wir haben also sowohl den Zähler, als auch den Nenner mit drei multipliziert. Und wie du siehst bleibt dann der Wert gleich.")
]
#only("3")[
#voiceover("Und aus zwei Drittel werden acht Zwölftel. Auch hier haben wir sowohl den Zähler, als auch den Nenner mit dem selben Wert multipliziert. Und auch hier bleibt der Wert gleich.")
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

fig, axs = plt.subplots(2, 1, figsize=(8, 6))
#first plot the fraction 3/12, which is equivalent to the fraction 1/4
visualize_fraction(axs[0], 3, 12, 'blue', '3/12')
#then plot the fraction 8/12, which is equivalent to the fraction 2/3
visualize_fraction(axs[1], 8, 12, 'red', '8/12')

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
#plot the sum of the two fractions
visualize_fraction(ax, 11, 12, 'purple', '3/12 + 8/12 = 11/12')

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
#voiceover("Jetzt kannst du die Brüche addieren. Du addierst die Zähler und behältst den gemeinsamen Nenner.")
]
#only("2")[
#voiceover("Drei Zwölftel plus acht Zwölftel ist also gleich elf Zwölftel. Und das ist das korrekte Ergebnis.")
]
]