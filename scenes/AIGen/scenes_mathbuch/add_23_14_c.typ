#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#text(size: 30pt, weight: "bold")[Aufgabe]
#v(40pt)
#align(center)[Berechne $2/3 + 1/4$]
#v(40pt)
//Antwort des Schülers: $7/12$
#only("2-")[Deine Antwort: $7/12$]
#only("1")[
#voiceover("Wir sollen zwei Drittel plus ein Viertel berechnen.")
]
#only("2")[
#voiceover("Und deine Antwort ist sieben Zwölftel. Das ist leider nicht richtig.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Dein Fehler]
#v(40pt)
#only("1-")[Dein Fehler: $2/3 + 1/4 ≠ (3+4)/(3 dot 4)$]
#v(20pt)
#only("2-")[🛠️ Du hast die Summe der Nenner durch das Produkt der Nenner geteilt]
#v(20pt)
#only("3-")[🛠️ Du musst den Zähler anders bestimmen]
#only("1")[
#voiceover("Dein Fehler ist, dass du die Zähler und Nenner separat addiert und multipliziert hast. Zwei Drittel plus ein Viertel ist nicht gleich sieben Zwölftel.")
]
#only("2")[
#voiceover("Indem du die Zähler und Nenner separat addierst und multiplizierst, veränderst du den Wert der Brüche. Das ist nicht richtig.")
]
#only("3")[
#voiceover("Du musst die Brüche zuerst auf den gemeinsamen Nenner bringen, bevor du die Zähler addieren kannst.")
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

#first plot the fraction 2/3
plot_fraction_circle(axs[0], 3, 2, '2/3')
#then plot the fraction 1/4
plot_fraction_circle(axs[1], 4, 1, '1/4')

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
#only("4-")[#text()[- Gemeinsamer Nenner: $times.square/12$]]
#only("1")[
#voiceover("Hier siehst du die Brüche mit ihren ursprünglichen Nennern. Links haben wir zwei Drittel und rechts ein Viertel.")
]
#only("2")[
#voiceover("Diese Brüche haben verschiedene Nenner, also teilen wir sie in Stücke verschiedener Größe ein: Links haben wir Drittel und rechts Viertel. Das bedeutet, dass wir sie nicht direkt addieren können.")
]
#only("3")[
#voiceover("Du musst die Brüche zuerst auf einen gemeinsamen Nenner bringen, sodass die Stücke gleich groß sind. Und erst dann kannst du sie addieren. Dabei musst du allerdings beachten, dass der Wert der Brüche erhalten bleibt.")
]
#only("4")[
#voiceover("und wie du schon richtig erkannt hast, ist der gemeinsame Nenner Zwölftel.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Gemeinsamer Nenner, aber Zähler nicht angepasst]
// First Plot that covers the first fraction, which is 2/3
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

#first subplot: 2/3 to 8/12
plot_fraction_circle(axs[0], 3, 2, '2/3')
plot_fraction_circle(axs[1], 12, 8, '8/12')

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]]
// Second Plot that covers the second fraction, which is 1/4
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

#second subplot: 1/4 to 3/12
plot_fraction_circle(axs[0], 4, 1, '1/4')
plot_fraction_circle(axs[1], 12, 3, '3/12')

plt.tight_layout()
plt.show()
```,
width: 360pt),
)]
]
]
#v(20pt)
#only("2-")[#text()[- $2/3 = 8/12$]]
#v(20pt)
#only("3-")[#text()[- $1/4 = 3/12$]]
#only("1")[
#voiceover("Hier siehst du die Brüche, die wir auf einen gemeinsamen Nenner bringen wollen. Beginnen wir mit zwei Drittel.")
]
#only("2")[
#voiceover("Zunächst siehst du zwei Drittel, und daneben acht Zwölftel. Du kannst erkennen, dass der Wert gleich bleibt, nur die Darstellung ist anders. Also ist zwei Drittel gleich acht Zwölftel, und nicht gleich sieben Zwölftel.")
]
#only("3")[
#voiceover("Und hier siehst du ein Viertel und drei Zwölftel. Auch hier bleibt der Wert gleich, nur die Darstellung ist anders. Ein Viertel ist also gleich drei Zwölftel, und nicht gleich sieben Zwölftel.")
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
        wedge = Wedge(center=(0.5, 0.5), r=0.4, theta1=angle_start, theta2=angle_end, facecolor=color, edgecolor='black', linewidth=max(4, 10-num_parts/3)

)
        ax.add_patch(wedge)
    ax.set_xlim(0, 1)
    ax.set_ylim(0, 1)
    ax.set_aspect('equal')
    ax.set_title(title, fontsize=50)
    ax.axis('off')

fig, axs = plt.subplots(1, 2, figsize=(12, 5))
#first plot the fraction 8/12, which is equivalent to the fraction 2/3
plot_fraction_circle(axs[0], 12, 8, '8/12')
#then plot the fraction 3/12, which is equivalent to the fraction 1/4
plot_fraction_circle(axs[1], 12, 3, '3/12')

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
plot_fraction_circle(ax, 12, 11, '8/12 + 3/12 = 11/12')

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
#voiceover("Acht Zwölftel plus drei Zwölftel ist also gleich elf Zwölftel. Und das ist das korrekte Ergebnis.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Fazit]
#v(20pt)
#only("1-")[Also ist $2/3 + 1/4 = 11/12$, nicht $7/12$.]
#v(20pt)
#only("2-")[Merke dir: 🧮 Beachte den Zähler beim Addieren von Brüchen]
#only("1")[
#voiceover("Also ist zwei Drittel plus ein Viertel gleich elf Zwölftel, nicht sieben Zwölftel.")
]
#only("2")[
#voiceover("Denk immer daran: Beim Addieren von Brüchen mit verschiedenen Nennern, bringe sie zuerst auf den gemeinsamen Nenner und passe dann auch die Zähler entsprechend an!")
]
]