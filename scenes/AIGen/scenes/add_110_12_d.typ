#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#text(size: 30pt, weight: "bold")[Aufgabe]
#v(40pt)
#align(center)[Berechne $1/10 + 1/2$]
#v(40pt)
//Antwort des Schülers: $3/5$
#only("2-")[Deine Antwort: $3/5$]
#only("1")[
#voiceover("Wir sollen ein Zehntel plus ein Halb berechnen.")
]
#only("2")[
#voiceover("Und deine Antwort ist drei Fünftel. Das ist richtig!")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Deine Lösung]
#v(40pt)
#only("1-")[Deine Lösung: $1/10 + 1/2 = 3/5$]
#v(20pt)
#only("2-")[👍 Gut gemacht! Du hast die Brüche korrekt addiert]
#v(20pt)
#only("3-")[🔍 Schauen wir uns das noch einmal genauer an]
#only("1")[
#voiceover("Du hast ein Zehntel plus ein Halb korrekt berechnet und das Ergebnis ist drei Fünftel.")
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

#first plot the fraction 1/10
plot_fraction_circle(axs[0], 10, 1, '1/10')
#then plot the fraction 1/2
plot_fraction_circle(axs[1], 2, 1, '1/2')

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
#voiceover("Hier siehst du die Brüche mit ihren ursprünglichen Nennern. Links haben wir ein Zehntel und rechts ein Halb.")
]
#only("2")[
#voiceover("Diese Brüche haben verschiedene Nenner, also teilen wir sie in Stücke verschiedener Größe ein: Links haben wir Zehntel und rechts Halbe. Das bedeutet, dass wir sie nicht direkt addieren können.")
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
#first plot the fraction 1/10
plot_fraction_circle(axs[0], 10, 1, '1/10')
#then plot the fraction 5/10, which is equivalent to the fraction 1/2
plot_fraction_circle(axs[1], 10, 5, '5/10')

plt.tight_layout()
plt.show()
```,
width: 360pt),
)]
]
#v(20pt)
#only("1-")[#text()[Brüche auf gemeinsamen Nenner bringen:]]
#only("2-")[#text()[- $1/10$]]
#v(20pt)
#only("3-")[#text()[- $5/10 = 1/2$]]
#only("1")[
#voiceover("Hier siehst du die Brüche mit einem gemeinsamen Nenner von zehn.")
]
#only("2")[
#voiceover("Also haben wir jetzt ein Zehntel,")
]
#only("3")[
#voiceover("und fünf Zehntel statt einem Halb. Du siehst, dass auf jeder Seite der Wert gleich ist, lediglich die Darstellung ist anders.")
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
#first plot the fraction 1/10
plot_fraction_circle(axs[0], 10, 1, '1/10')
#then plot the fraction 5/10, which is equivalent to the fraction 1/2
plot_fraction_circle(axs[1], 10, 5, '5/10')

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
plot_fraction_circle(ax, 10, 6, '1/10 + 5/10 = 6/10 = 3/5')

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
#voiceover("Ein Zehntel plus fünf Zehntel ist also gleich sechs Zehntel. Und das ist das korrekte Ergebnis.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Fazit]
#v(20pt)
#only("1-")[Also ist $1/10 + 1/2 = 3/5$.]
#v(20pt)
#only("2-")[Gut gemacht! 🎉]
#only("1")[
#voiceover("Also ist ein Zehntel plus ein Halb gleich drei Fünftel.")
]
#only("2")[
#voiceover("Gut gemacht! Denke immer daran, die Brüche zuerst auf einen gemeinsamen Nenner zu bringen und dann die Zähler zu addieren. Du hast es richtig gemacht!")
]
]