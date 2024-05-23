#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#text(size: 30pt, weight: "bold")[Aufgabe]
#v(40pt)
#align(center)[Berechne $3/5 + 2/6$]
#v(40pt)
//Antwort des Schülers: $5/11$
#only("2-")[Deine Antwort: $5/11$]
#only("1")[
#voiceover("Wir sollen drei Fünftel plus zwei Sechstel berechnen.")
]
#only("2")[
#voiceover("Und deine Antwort ist fünf Elftel. Das ist leider nicht richtig.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Dein Fehler]
#v(40pt)
#only("1-")[Dein Fehler: $3/5 + 2/6 ≠ (3+2)/(5+6)$]
#v(20pt)
#only("2-")[🛠️ Du kannst die Zähler und Nenner nicht einfach separat addieren]
#v(20pt)
#only("3-")[🛠️ Du musst die Brüche zuerst auf den gemeinsamen Nenner bringen]
#only("1")[
#voiceover("Dein Fehler ist, dass du die Zähler und Nenner separat addiert hast. Drei Fünftel plus zwei Sechstel ist nicht gleich drei plus zwei geteilt durch fünf plus sechs.")
]
#only("2")[
#voiceover("Denn indem du die Zähler und Nenner separat addierst, veränderst du den Wert der Brüche, aber...")
]
#only("3")[
#voiceover("...du musst die Brüche zuerst auf den gemeinsamen Nenner bringen, bevor du die Zähler addieren kannst.")
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

#first plot the fraction 3/5
plot_fraction_circle(axs[0], 5, 3, '3/5')
#then plot the fraction 2/6
plot_fraction_circle(axs[1], 6, 2, '2/6')

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
#voiceover("Hier siehst du die Brüche mit ihren ursprünglichen Nennern. Links haben wir drei Fünftel und rechts zwei Sechstel.")
]
#only("2")[
#voiceover("Diese Brüche haben verschiedene Nenner, also teilen wir sie in Stücke verschiedener Größe ein: Links haben wir Fünftel und rechts Sechstel. Das bedeutet, dass wir sie nicht direkt addieren können.")
]
#only("3")[
#voiceover("Du musst die Brüche also zuerst auf einen gemeinsamen Nenner bringen, sodass die Stücke gleich groß sind. Und erst dann kannst du sie addieren.")
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
#first plot the fraction 18/30, which is equivalent to the fraction 3/5
plot_fraction_circle(axs[0], 30, 18, '18/30')
#then plot the fraction 10/30, which is equivalent to the fraction 2/6
plot_fraction_circle(axs[1], 30, 10, '10/30')

plt.tight_layout()
plt.show()
```,
width: 360pt),
)]
]
#v(20pt)
#only("1-")[#text()[Brüche auf gemeinsamen Nenner bringen:]]
#only("2-")[#text()[- $18/30 = 3/5$]]
#v(20pt)
#only("3-")[#text()[- $10/30 = 2/6$]]
#only("1")[
#voiceover("Hier siehst du die Brüche mit einem gemeinsamen Nenner von dreißig.")
]
#only("2")[
#voiceover("Also haben wir jetzt achtzehn Dreißigstel statt drei Fünftel,")
]
#only("3")[
#voiceover("und zehn Dreißigstel statt zwei Sechstel. Du siehst, dass auf jeder Seite der Wert gleich ist, lediglich die Darstellung ist anders.")
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
#first plot the fraction 18/30, which is equivalent to the fraction 3/5
plot_fraction_circle(axs[0], 30, 18, '18/30')
#then plot the fraction 10/30, which is equivalent to the fraction 2/6
plot_fraction_circle(axs[1], 30, 10, '10/30')

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
plot_fraction_circle(ax, 30, 28, '18/30 + 10/30 = 28/30')

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
#voiceover("Achtzehn Dreißigstel plus zehn Dreißigstel ist also gleich achtundzwanzig Dreißigstel. Und das ist das korrekte Ergebnis.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Fazit]
#v(20pt)
#only("1-")[Also ist $3/5 + 2/6 = 28/30$, nicht $5/11$.]
#v(20pt)
#only("2-")[Merke dir: 🧮 Beachte den Zähler beim Addieren von Brüchen]
#only("1")[
#voiceover("Also ist drei Fünftel plus zwei Sechstel gleich achtundzwanzig Dreißigstel, nicht fünf Elftel.")
]
#only("2")[
#voiceover("Denk immer daran: Beim Addieren von Brüchen mit verschiedenen Nennern, bringe sie zuerst auf den gemeinsamen Nenner und addiere dann erst die Zähler!")
]
]