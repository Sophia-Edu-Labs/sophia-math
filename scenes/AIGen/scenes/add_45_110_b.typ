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
//Antwort des Schülers: $5/50$
#only("2-")[Deine Antwort: $5/50$]
#only("1")[
#voiceover("Wir sollen vier Fünftel plus ein Zehntel berechnen.")
]
#only("2")[
#voiceover("Und deine Antwort ist fünf Fünfzigstel. Das ist leider nicht richtig.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Dein Fehler]
#v(40pt)
#only("1-")[Dein Fehler: $4/5 + 1/10 ≠ (4+1)/(5 dot 10)$]
#v(20pt)
#only("2-")[✅ Du hast den gemeinsamen Nenner gefunden!]
#v(20pt)
#only("3-")[🛠️ Du musst aber auch die Zähler anpassen...]
#only("1")[
#voiceover("Denn vier Fünftel plus ein Zehntel ist nicht gleich vier plus eins durch fünf mal zehn...")
]
#only("2")[
#voiceover("Was richtig ist, ist dass der gemeinsame Nenner Zehntel ist. Das hast du schon richtig erkannt.")
]
#only("3")[
#voiceover("Allerdings musst du auch die Zähler anpassen, wenn du ihren Nenner veränderst! Denn sonst änderst du den Wert der Brüche.")
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

#first plot the fraction 4/5
plot_fraction_circle(axs[0], 5, 4, '4/5')
#then plot the fraction 1/10
plot_fraction_circle(axs[1], 10, 1, '1/10')

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
#only("4-")[#text()[- Gemeinsamer Nenner: $times.square/10$]]
#only("1")[
#voiceover("Hier siehst du die Brüche mit ihren ursprünglichen Nennern. Links haben wir vier Fünftel und rechts ein Zehntel.")
]
#only("2")[
#voiceover("Da diese Brüche verschiedene Nenner haben, müssen wir sie zuerst auf einen gemeinsamen Nenner bringen.")
]
#only("3")[
#voiceover("und zwar auf Zehntel, wie du schon richtig erkannt hast.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zähler anpassen]
// First Plot that covers the first fraction, which is 4/5
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

#first subplot: 4/5 to 8/10
plot_fraction_circle(axs[0], 5, 4, '4/5')
plot_fraction_circle(axs[1], 10, 8, '8/10')

plt.tight_layout()
plt.show()
`,
width: 360pt),
)
]
]]
// Second Plot that covers the second fraction, which is 1/10
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

#second subplot: 1/10 remains 1/10
plot_fraction_circle(axs[0], 10, 1, '1/10')
plot_fraction_circle(axs[1], 10, 1, '1/10')

plt.tight_layout()
plt.show()
`,
width: 360pt),
)]
]
]
#v(20pt)
#only("2-")[#text()[- $4/5 = 8/10$]]
#v(20pt)
#only("3-")[#text()[- $1/10 = 1/10$]]
#only("1")[
#voiceover("Wir müssen nur aufpassen, dass wir auch die Zähler anpassen, wenn wir die Nenner verändern.")
]
#only("2")[
#voiceover("Aus vier Fünftel werden dann acht Zehntel. Wir haben also sowohl den Zähler, als auch den Nenner mit zwei multipliziert. Und wie du siehst bleibt dann der Wert gleich.")
]
#only("3")[
#voiceover("Und ein Zehntel bleibt ein Zehntel. Hier mussten wir nichts verändern.")
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
#first plot the fraction 8/10, which is equivalent to the fraction 4/5
plot_fraction_circle(axs[0], 10, 8, '8/10')
#then plot the fraction 1/10
plot_fraction_circle(axs[1], 10, 1, '1/10')

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
plot_fraction_circle(ax, 10, 9, '8/10 + 1/10 = 9/10')

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
#voiceover("Acht Zehntel plus ein Zehntel ist also gleich neun Zehntel. Und das ist das korrekte Ergebnis.")
]
]