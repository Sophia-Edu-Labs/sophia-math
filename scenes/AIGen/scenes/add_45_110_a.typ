#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#text(size: 30pt, weight: "bold")[Aufgabe]
#v(40pt)
#align(center)[Berechne $4/5 + 1/10$]
#v(40pt)
//Antwort des Schülers: $5/15$
#only("2-")[Deine Antwort: $5/15$]
#only("1")[
#voiceover("Die Aufgabe ist ja vier Fünftel plus ein Zehntel zu berechnen.")
]
#only("2")[
#voiceover("Und deine Antwort, fünf Fünfzehntel, ist leider nicht richtig.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Dein Fehler]
#v(40pt)
#only("1-")[Dein Fehler: $4/5 + 1/10 ≠ (4+1)/(5+10)$]
#v(20pt)
#only("2-")[🛠️ Du kannst die Zähler und Nenner nicht einfach separat addieren]
#v(20pt)
#only("3-")[🛠️ Du musst die Brüche zuerst auf den gemeinsamen Nenner bringen]
#only("1")[
#voiceover("Du hast wohl einfach die Zähler addiert, und die Nenner addiert. Also vier plus eins geteilt durch fünf plus zehn. Das stimmt aber leider nicht.")
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

#first plot the fraction 4/5
plot_fraction_circle(axs[0], 5, 4, '4/5')
#then plot the fraction 1/10
plot_fraction_circle(axs[1], 10, 1, '1/10')

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
#only("3-")[#text()[- Man kann nur bei gleichen Nennern addieren]]
#only("1")[
#voiceover("Suchen wir also den gemeinsamen Nenner. Hier siehst du die Brüche mit ihren ursprünglichen Nennern. Links haben wir vier Fünftel und rechts ein Zehntel.")
]
#only("2")[
#voiceover("Diese Brüche haben verschiedene Nenner, also teilen wir sie in Stücke verschiedener Größe ein: Links haben wir Fünftel und rechts Zehntel. Deswegen können wir auch nicht einfach die Zähler addieren.")
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
#first plot the fraction 8/10, which is equivalent to the fraction 4/5
plot_fraction_circle(axs[0], 10, 8, '8/10')
#then plot the fraction 1/10, which is equivalent to the fraction 1/10
plot_fraction_circle(axs[1], 10, 1, '1/10')

plt.tight_layout()
plt.show()
```,
width: 360pt),
)]
]
#v(20pt)
#only("1-")[#text()[Brüche auf gemeinsamen Nenner bringen:]]
#only("2-")[#text()[- $8/10 = 4/5$]]
#v(20pt)
#only("3-")[#text()[- $1/10 = 1/10$]]
#only("1")[
#voiceover("Ein gemeinsamer Nenner wäre ja 10, denn 10 ist ein Vielfaches von 5 und 10.")
]
#only("2")[
#voiceover("Dann wandeln wir die Brüche um: Acht Zehntel ist gleich vier Fünftel.")
]
#only("3")[
#voiceover("und ein Zehntel bleibt ein Zehntel. Du siehst, dass auf jeder Seite der Wert gleich ist, wie davor. Lediglich die Darstellung ist anders.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Korrekte Lösung: Addieren]
#box()[
#morphchildren(id: "plot2")[
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
#first plot the fraction 8/10, which is equivalent to the fraction 4/5
plot_fraction_circle(axs[0], 10, 8, '8/10')
#then plot the fraction 1/10, which is equivalent to the fraction 1/10
plot_fraction_circle(axs[1], 10, 1, '1/10')

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

fig, ax = plt.subplots(figsize=(12, 5))
#plot the sum of the two fractions
plot_fraction_circle(ax, 10, 9, '8/10 + 1/10 = 9/10')

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
#voiceover("Acht Zehntel plus ein Zehntel ist also gleich neun Zehntel. Und das ist das korrekte Ergebnis.")
]
]