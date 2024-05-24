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

#first plot the fraction 1/4
plot_fraction_circle(axs[0], 4, 1, '1/4')
#then plot the fraction 2/3
plot_fraction_circle(axs[1], 3, 2, '2/3')

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

#first subplot: 1/4 to 3/12
plot_fraction_circle(axs[0], 4, 1, '1/4')
plot_fraction_circle(axs[1], 12, 3, '3/12')

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

#second subplot: 2/3 to 8/12
plot_fraction_circle(axs[0], 3, 2, '2/3')
plot_fraction_circle(axs[1], 12, 8, '8/12')

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
#first plot the fraction 3/12, which is equivalent to the fraction 1/4
plot_fraction_circle(axs[0], 12, 3, '3/12')
#then plot the fraction 8/12, which is equivalent to the fraction 2/3
plot_fraction_circle(axs[1], 12, 8, '8/12')

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
plot_fraction_circle(ax, 12, 11, '3/12 + 8/12 = 11/12')

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