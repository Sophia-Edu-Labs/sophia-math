#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#text(size: 30pt, weight: "bold")[Aufgabe]
#v(40pt)
#align(center)[Berechne $1/3 + 2/6$]
#v(40pt)
//Antwort des Schülers: $3/18$
#only("2-")[Deine Antwort: $3/18$]
#only("1")[
#voiceover("Wir sollen ein Drittel plus zwei Sechstel berechnen.")
]
#only("2")[
#voiceover("Und deine Antwort ist drei Achtzehntel. Das ist leider nicht richtig.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Dein Fehler]
#v(40pt)
#only("1-")[Dein Fehler: $1/3 + 2/6 ≠ (1+2)/(3 dot 6)$]
#v(20pt)
#only("2-")[🛠️ Du hast die Brüche falsch addiert, indem du Zähler und Nenner separat addiert hast]
#v(20pt)
#only("3-")[🛠️ Du musst die Brüche auf einen gemeinsamen Nenner bringen, bevor du die Zähler addierst]
#only("1")[
#voiceover("Dein Fehler ist, dass du die Zähler und Nenner separat addiert hast. Ein Drittel plus zwei Sechstel ist nicht gleich drei Achtzehntel.")
]
#only("2")[
#voiceover("Denn du hast die Brüche falsch addiert, indem du die Zähler und Nenner separat addiert hast.")
]
#only("3")[
#voiceover("Du musst die Brüche auf einen gemeinsamen Nenner bringen, bevor du die Zähler addierst.")
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

#first plot the fraction 1/3
plot_fraction_circle(axs[0], 3, 1, '1/3')
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
#v(20pt)
#only("4-")[#text()[- Gemeinsamer Nenner: $6$]]
#only("1")[
#voiceover("Hier siehst du die Brüche mit ihren ursprünglichen Nennern. Links haben wir ein Drittel und rechts zwei Sechstel.")
]
#only("2")[
#voiceover("Diese Brüche haben verschiedene Nenner, also teilen wir sie in Stücke verschiedener Größe ein: Links haben wir Drittel und rechts Sechstel. Das bedeutet, dass wir sie nicht direkt addieren können.")
]
#only("3")[
#voiceover("Du musst die Brüche zuerst auf einen gemeinsamen Nenner bringen, sodass die Stücke gleich groß sind. Und erst dann kannst du sie addieren.")
]
#only("4")[
#voiceover("Und wie du schon richtig erkannt hast, ist der gemeinsame Nenner Sechstel.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Gemeinsamer Nenner, aber Zähler nicht angepasst]
// First Plot that covers the first fraction, which is 1/3
#only("-2")[
#box()[
#morphchildren(id: "plot3")[
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

#first subplot: 1/3 to 2/6
plot_fraction_circle(axs[0], 3, 1, '1/3')
plot_fraction_circle(axs[1], 6, 2, '2/6')

plt.tight_layout()
plt.show()

```,
width: 360pt),
)
]
]]
// Second Plot that covers the second fraction, which is 2/6
#only("3-")[
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

#second subplot: 2/6 to 2/6
plot_fraction_circle(axs[0], 6, 2, '2/6')
plot_fraction_circle(axs[1], 6, 2, '2/6')

plt.tight_layout()
plt.show()
```,
width: 360pt),
)]
]
]
#v(20pt)
#only("2-")[#text()[- $1/3 = 2/6$]]
#v(20pt)
#only("3-")[#text()[- $2/6 = 2/6$]]
#only("1")[
#voiceover("Hier siehst du die Brüche, die wir auf einen gemeinsamen Nenner bringen wollen. Beginnen wir mit ein Drittel.")
]
#only("2")[
#voiceover("Zunächst siehst du ein Drittel, und daneben zwei Sechstel. Du kannst erkennen, dass der Wert gleich bleibt, nur die Darstellung ist anders. Also ist ein Drittel gleich zwei Sechstel.")
]
#only("3")[
#voiceover("Und hier siehst du zwei Sechstel. Auch hier bleibt der Wert gleich, nur die Darstellung ist anders. Zwei Sechstel bleibt zwei Sechstel.")
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
#first plot the fraction 2/6, which is equivalent to the fraction 1/3
plot_fraction_circle(axs[0], 6, 2, '2/6')
#then plot the fraction 2/6, which is equivalent to the fraction 2/6
plot_fraction_circle(axs[1], 6, 2, '2/6')

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
plot_fraction_circle(ax, 6, 4, '2/6 + 2/6 = 4/6')

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
#voiceover("Zwei Sechstel plus zwei Sechstel ist also gleich vier Sechstel. Und das ist das korrekte Ergebnis.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Fazit]
#v(20pt)
#only("1-")[Also ist $1/3 + 2/6 = 4/6$, nicht $3/18$.]
#v(20pt)
#only("2-")[Merke dir: 🧮 Beachte den Zähler beim Addieren von Brüchen]
#only("1")[
#voiceover("Also ist ein Drittel plus zwei Sechstel gleich vier Sechstel, nicht drei Achtzehntel.")
]
#only("2")[
#voiceover("Denk immer daran: Beim Addieren von Brüchen mit verschiedenen Nennern, bringe sie zuerst auf den gemeinsamen Nenner und passe dann auch die Zähler entsprechend an!")
]
]