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
//Antwort des Schülers: $2/20$
#only("2-")[Deine Antwort: $2/20$]
#only("1")[
#voiceover("Wir sollen ein Zehntel plus ein Halb berechnen.")
]
#only("2")[
#voiceover("Und deine Antwort ist zwei Zwanzigstel. Das ist leider nicht richtig.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Dein Fehler]
#v(40pt)
#only("1-")[Dein Fehler: $1/10 + 1/2 ≠ (1+1)/(10 dot 2)$]
#v(20pt)
#only("2-")[🛠️ Du hast die Brüche falsch addiert, indem du die Zähler addiert und die Nenner multipliziert hast]
#v(20pt)
#only("3-")[🛠️ Du musst die Brüche auf einen gemeinsamen Nenner bringen, bevor du sie addierst]
#only("1")[
#voiceover("Dein Fehler ist, dass du die Zähler addiert und die Nenner multipliziert hast. Ein Zehntel plus ein Halb ist nicht gleich zwei Zwanzigstel.")
]
#only("2")[
#voiceover("Denn du hast die Brüche falsch addiert, indem du die Zähler addiert und die Nenner multipliziert hast.")
]
#only("3")[
#voiceover("Du musst die Brüche auf einen gemeinsamen Nenner bringen, bevor du sie addierst.")
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
#v(20pt)
#only("4-")[#text()[- Gemeinsamer Nenner: $times.square/20$]]
#only("1")[
#voiceover("Hier siehst du die Brüche mit ihren ursprünglichen Nennern. Links haben wir ein Zehntel und rechts ein Halb.")
]
#only("2")[
#voiceover("Diese Brüche haben verschiedene Nenner, also teilen wir sie in Stücke verschiedener Größe ein: Links haben wir Zehntel und rechts Halbe. Das bedeutet, dass wir sie nicht direkt addieren können.")
]
#only("3")[
#voiceover("Du musst die Brüche zuerst auf einen gemeinsamen Nenner bringen, sodass die Stücke gleich groß sind. Und erst dann kannst du sie addieren. Dabei musst du allerdings beachten, dass der Wert der Brüche erhalten bleibt.")
]
#only("4")[
#voiceover("und wie du schon richtig erkannt hast, ist der gemeinsame Nenner Zwanzigstel.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Gemeinsamer Nenner, aber Zähler nicht angepasst]
// First Plot that covers the first fraction, which is 1/10
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

#first subplot: 1/10 to 2/20
plot_fraction_circle(axs[0], 10, 1, '1/10')
plot_fraction_circle(axs[1], 20, 2, '2/20')

plt.tight_layout()
plt.show()

```,
width: 360pt),
)
]
]]
// Second Plot that covers the second fraction, which is 1/2
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

#second subplot: 1/2 to 10/20
plot_fraction_circle(axs[0], 2, 1, '1/2')
plot_fraction_circle(axs[1], 20, 10, '10/20')

plt.tight_layout()
plt.show()
```,
width: 360pt),
)]
]
]
#v(20pt)
#only("2-")[#text()[- $1/10 = 2/20$]]
#v(20pt)
#only("3-")[#text()[- $1/2 = 10/20$]]
#only("1")[
#voiceover("Hier siehst du die Brüche, die wir auf einen gemeinsamen Nenner bringen wollen. Beginnen wir mit ein Zehntel.")
]
#only("2")[
#voiceover("Zunächst siehst du ein Zehntel, und daneben zwei Zwanzigstel. Du kannst erkennen, dass der Wert gleich bleibt, nur die Darstellung ist anders. Also ist ein Zehntel gleich zwei Zwanzigstel, und nicht gleich zwei Zwanzigstel.")
]
#only("3")[
#voiceover("Und hier siehst du ein Halb und zehn Zwanzigstel. Auch hier bleibt der Wert gleich, nur die Darstellung ist anders. Ein Halb ist also gleich zehn Zwanzigstel, und nicht gleich zwei Zwanzigstel.")
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
#first plot the fraction 2/20, which is equivalent to the fraction 1/10
plot_fraction_circle(axs[0], 20, 2, '2/20')
#then plot the fraction 10/20, which is equivalent to the fraction 1/2
plot_fraction_circle(axs[1], 20, 10, '10/20')

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
plot_fraction_circle(ax, 20, 12, '2/20 + 10/20 = 12/20')

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
#voiceover("Zwei Zwanzigstel plus zehn Zwanzigstel ist also gleich zwölf Zwanzigstel. Und das ist das korrekte Ergebnis.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Fazit]
#v(20pt)
#only("1-")[Also ist $1/10 + 1/2 = 12/20$, nicht $2/20$.]
#v(20pt)
#only("2-")[Merke dir: 🧮 Beachte den Zähler beim Addieren von Brüchen]
#only("1")[
#voiceover("Also ist ein Zehntel plus ein Halb gleich zwölf Zwanzigstel, nicht zwei Zwanzigstel.")
]
#only("2")[
#voiceover("Denk immer daran: Beim Addieren von Brüchen mit verschiedenen Nennern, bringe sie zuerst auf den gemeinsamen Nenner und passe dann auch die Zähler entsprechend an!")
]
]