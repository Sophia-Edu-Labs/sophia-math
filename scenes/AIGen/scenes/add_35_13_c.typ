#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#text(size: 30pt, weight: "bold")[Aufgabe]
#v(40pt)
#align(center)[Berechne $3/5 + 1/3$]
#v(40pt)
//Antwort des Schülers: $8/15$
#only("2-")[Deine Antwort: $8/15$]
#only("1")[
#voiceover("Wir sollen drei Fünftel plus ein Drittel berechnen.")
]
#only("2")[
#voiceover("Und deine Antwort ist acht Fünfzehntel. Das ist leider nicht richtig.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Dein Fehler]
#v(40pt)
#only("1-")[Dein Fehler: $3/5 + 1/3 ≠ (5+3)/(5 dot 3)$]
#v(20pt)
#only("2-")[✅ Gemeinsamen Nenner gefunden]
#v(20pt)
#only("3-")[🛠️ Zähler falsch bestimmt]
#only("1")[
#voiceover("Du hast die Summe der Nenner durch das Produkt der Nenner geteilt. Also fünf plus drei geteilt durch fünf mal drei. Das ist leider nicht richtig.")
]
#only("2")[
#voiceover("Du hast zwar einen gemeinsamen Nenner korrekt gefunden,")
]
#only("3")[
#voiceover("aber den Zähler falsch ermittelt.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Intuitive Darstellung der Brüche]
#v(40pt)
#box()[
#morphchildren(id: "plot1")[
#figure(
pyimage(`
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
#then plot the fraction 1/3
plot_fraction_circle(axs[1], 3, 1, '1/3')

plt.tight_layout()
plt.show()
`,
width: 360pt),
)
]
]
#only("1-")[#text()[- Ursprüngliche Brüche]]
#v(20pt)
#only("2-")[#text()[- Brüche haben verschiedene Nenner]]
#v(20pt)
#only("4-")[#text()[- Gemeinsamer Nenner: $times.square/15$]]
#only("1")[
#voiceover("Hier siehst du die Brüche mit ihren ursprünglichen Nennern. Links haben wir drei Fünftel und rechts ein Drittel.")
]
#only("2")[
#voiceover("Da diese Brüche verschiedene Nenner haben, müssen wir sie zuerst auf einen gemeinsamen Nenner bringen.")
]
#only("3")[
#voiceover("und zwar auf fünfzehntel, wie du schon richtig erkannt hast.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zähler anpassen]
// First Plot that covers the first fraction, which is 3/5
#only("-2")[
#box()[
#morphchildren(id: "plot3")[
#figure(
pyimage(`
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

#first subplot: 3/5 to 9/15
plot_fraction_circle(axs[0], 5, 3, '3/5')
plot_fraction_circle(axs[1], 15, 9, '9/15')

plt.tight_layout()
plt.show()
`,
width: 360pt),
)
]
]]
// Second Plot that covers the second fraction, which is 1/3
#only("3-")[
#box()[
#morphchildren(id: "plot2")[
#figure(
pyimage(`
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

#second subplot: 1/3 to 5/15
plot_fraction_circle(axs[0], 3, 1, '1/3')
plot_fraction_circle(axs[1], 15, 5, '5/15')

plt.tight_layout()
plt.show()
`,
width: 360pt),
)]
]
]
#only("2-")[#text()[- $3/5 = 9/15$]]
#v(20pt)
#only("3-")[#text()[- $1/3 = 5/15$]]
#only("1")[
#voiceover("Nun passen wir den Nenner an:")
]
#only("2")[
#voiceover("Aus drei Fünftel werden neun Fünfzehntel. Wir haben also sowohl den Zähler als auch den Nenner mit drei multipliziert. Und wie du siehst bleibt der Wert gleich.")
]
#only("3")[
#voiceover("Und aus ein Drittel werden fünf Fünfzehntel. Auch hier haben wir sowohl den Zähler als auch den Nenner mit fünf multipliziert. Und auch hier bleibt der Wert gleich.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Korrekte Lösung: Addieren]
#box()[
#morphchildren(id: "plot2")[
#figure(
pyimage(`
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
#first plot the fraction 9/15, which is equivalent to the fraction 3/5
plot_fraction_circle(axs[0], 15, 9, '9/15')
#then plot the fraction 5/15, which is equivalent to the fraction 1/3
plot_fraction_circle(axs[1], 15, 5, '5/15')

plt.tight_layout()
plt.show()
`,
width: 360pt),
)
]
]
$ #sym.arrow.b $
#box()[
#figure(
pyimage(`
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
plot_fraction_circle(ax, 15, 14, '9/15 + 5/15 = 14/15')

plt.tight_layout()
plt.show()
`,
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
#voiceover("Neun Fünfzehntel plus fünf Fünfzehntel ist also gleich vierzehn Fünfzehntel. Und das ist das korrekte Ergebnis.")
]
]