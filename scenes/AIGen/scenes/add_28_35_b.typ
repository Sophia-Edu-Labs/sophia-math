#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#text(size: 30pt, weight: "bold")[Aufgabe]
#v(40pt)
#align(center)[Berechne $2/8 + 3/5$]
#v(40pt)
//Antwort des Schülers: $5/40$
#only("2-")[Deine Antwort: $5/40$]
#only("1")[
#voiceover("Wir sollen zwei Achtel plus drei Fünftel berechnen.")
]
#only("2")[
#voiceover("Und deine Antwort ist fünf Vierzigstel. Das ist leider nicht richtig.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Dein Fehler]
#v(40pt)
#only("1-")[Dein Fehler: $2/8 + 3/5 ≠ (2+3)/(8 dot 5)$]
#v(20pt)
#only("2-")[🛠️ Du hast zwar den gemeinsamen Nenner ermittelt, aber die Zähler nicht korrekt angepasst]
#v(20pt)
#only("3-")[🛠️ Du musst auch die Zähler anpassen, um die Brüche korrekt zu addieren]
#only("1")[
#voiceover("Dein Fehler ist, dass du zwar den gemeinsamen Nenner gefunden hast, aber die Zähler nicht korrekt angepasst hast. Zwei Achtel plus drei Fünftel ist nicht gleich fünf Vierzigstel.")
]
#only("2")[
#voiceover("Denn du hast zwar den gemeinsamen Nenner richtig berechnet, aber die Zähler müssen ebenfalls angepasst werden, damit der Wert der Brüche erhalten bleibt.")
]
#only("3")[
#voiceover("Du musst also sowohl den Nenner als auch die Zähler anpassen, um die Brüche korrekt addieren zu können.")
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

#first plot the fraction 2/8
plot_fraction_circle(axs[0], 8, 2, '2/8')
#then plot the fraction 3/5
plot_fraction_circle(axs[1], 5, 3, '3/5')

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
#only("4-")[#text()[- Gemeinsamer Nenner: $times.square/40$]]
#only("1")[
#voiceover("Hier siehst du die Brüche mit ihren ursprünglichen Nennern. Links haben wir zwei Achtel und rechts drei Fünftel.")
]
#only("2")[
#voiceover("Diese Brüche haben verschiedene Nenner, also teilen wir sie in Stücke verschiedener Größe ein: Links haben wir Achtel und rechts Fünftel. Das bedeutet, dass wir sie nicht direkt addieren können.")
]
#only("3")[
#voiceover("Du musst die Brüche zuerst auf einen gemeinsamen Nenner bringen, sodass die Stücke gleich groß sind. Und erst dann kannst du sie addieren. Dabei musst du allerdings beachten, dass der Wert der Brüche erhalten bleibt.")
]
#only("4")[
#voiceover("und wie du schon richtig erkannt hast, ist der gemeinsame Nenner Vierzigstel.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Gemeinsamer Nenner, aber Zähler nicht angepasst]
// First Plot that covers the first fraction, which is 2/8
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

#first subplot: 2/8 to 10/40
plot_fraction_circle(axs[0], 8, 2, '2/8')
plot_fraction_circle(axs[1], 40, 10, '10/40')

plt.tight_layout()
plt.show()

```,
width: 360pt),
)
]
]]
// Second Plot that covers the second fraction, which is 3/5
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

#second subplot: 3/5 to 24/40
plot_fraction_circle(axs[0], 5, 3, '3/5')
plot_fraction_circle(axs[1], 40, 24, '24/40')

plt.tight_layout()
plt.show()
```,
width: 360pt),
)]
]
]
#v(20pt)
#only("2-")[#text()[- $2/8 = 10/40$]]
#v(20pt)
#only("3-")[#text()[- $3/5 = 24/40$]]
#only("1")[
#voiceover("Hier siehst du die Brüche, die wir auf einen gemeinsamen Nenner bringen wollen. Beginnen wir mit zwei Achtel.")
]
#only("2")[
#voiceover("Zunächst siehst du zwei Achtel, und daneben zehn Vierzigstel. Du kannst erkennen, dass der Wert gleich bleibt, nur die Darstellung ist anders. Also ist zwei Achtel gleich zehn Vierzigstel, und nicht gleich fünf Vierzigstel.")
]
#only("3")[
#voiceover("Und hier siehst du drei Fünftel und vierundzwanzig Vierzigstel. Auch hier bleibt der Wert gleich, nur die Darstellung ist anders. Drei Fünftel ist also gleich vierundzwanzig Vierzigstel, und nicht gleich fünf Vierzigstel.")
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
#first plot the fraction 10/40, which is equivalent to the fraction 2/8
plot_fraction_circle(axs[0], 40, 10, '10/40')
#then plot the fraction 24/40, which is equivalent to the fraction 3/5
plot_fraction_circle(axs[1], 40, 24, '24/40')

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
plot_fraction_circle(ax, 40, 34, '10/40 + 24/40 = 34/40')

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
#voiceover("Zehn Vierzigstel plus vierundzwanzig Vierzigstel ist also gleich vierunddreißig Vierzigstel. Und das ist das korrekte Ergebnis.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Fazit]
#v(20pt)
#only("1-")[Also ist $2/8 + 3/5 = 34/40$, nicht $5/40$.]
#v(20pt)
#only("2-")[Merke dir: 🧮 Beachte den Zähler beim Addieren von Brüchen]
#only("1")[
#voiceover("Also ist zwei Achtel plus drei Fünftel gleich vierunddreißig Vierzigstel, nicht fünf Vierzigstel.")
]
#only("2")[
#voiceover("Denk immer daran: Beim Addieren von Brüchen mit verschiedenen Nennern, bringe sie zuerst auf den gemeinsamen Nenner und passe dann auch die Zähler entsprechend an!")
]
]