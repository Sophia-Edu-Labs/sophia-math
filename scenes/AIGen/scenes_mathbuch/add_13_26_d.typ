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
//Antwort des Schülers: $1/3 + 2/6 = 1/2$
#only("2-")[Deine Antwort: $1/2$]
#only("1")[
#voiceover("Wir sollen ein Drittel plus zwei Sechstel berechnen.")
]
#only("2")[
#voiceover("Und deine Antwort ist ein Halb. Das ist richtig!")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Deine Lösung]
#v(40pt)
#only("1-")[Deine Lösung: $1/3 + 2/6 = 1/2$]
#v(20pt)
#only("2-")[👍 Gut gemacht! Du hast die Brüche korrekt addiert]
#v(20pt)
#only("3-")[🔍 Schauen wir uns das noch einmal genauer an]
#only("1")[
#voiceover("Du hast ein Drittel plus zwei Sechstel korrekt berechnet und das Ergebnis ist ein Halb.")
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
#only("1")[
#voiceover("Hier siehst du die Brüche mit ihren ursprünglichen Nennern. Links haben wir ein Drittel und rechts zwei Sechstel.")
]
#only("2")[
#voiceover("Diese Brüche haben verschiedene Nenner, also teilen wir sie in Stücke verschiedener Größe ein: Links haben wir Drittel und rechts Sechstel. Das bedeutet, dass wir sie nicht direkt addieren können.")
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
#first plot the fraction 2/6, which is equivalent to the fraction 1/3
plot_fraction_circle(axs[0], 6, 2, '2/6')
#then plot the fraction 2/6, which is equivalent to the fraction 2/6
plot_fraction_circle(axs[1], 6, 2, '2/6')

plt.tight_layout()
plt.show()
```,
width: 360pt),
)]
]
#v(20pt)
#only("1-")[#text()[Brüche auf gemeinsamen Nenner bringen:]]
#only("2-")[#text()[- $2/6 = 1/3$]]
#v(20pt)
#only("3-")[#text()[- $2/6 = 2/6$]]
#only("1")[
#voiceover("Hier siehst du die Brüche mit einem gemeinsamen Nenner von sechs.")
]
#only("2")[
#voiceover("Also haben wir jetzt zwei Sechstel statt einem Drittel,")
]
#only("3")[
#voiceover("und zwei Sechstel bleibt zwei Sechstel. Du siehst, dass auf jeder Seite der Wert gleich ist, lediglich die Darstellung ist anders.")
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
#voiceover("Jetzt kannst du die Brüche addieren.

 Du addierst die Zähler und behältst den gemeinsamen Nenner.")
]
#only("2")[
#voiceover("Zwei Sechstel plus zwei Sechstel ist also gleich vier Sechstel. Und das ist das korrekte Ergebnis.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Fazit]
#v(20pt)
#only("1-")[Also ist $1/3 + 2/6 = 1/2$.]
#v(20pt)
#only("2-")[Gut gemacht! 🎉]
#only("1")[
#voiceover("Also ist ein Drittel plus zwei Sechstel gleich ein Halb.")
]
#only("2")[
#voiceover("Gut gemacht! Denke immer daran, die Brüche zuerst auf einen gemeinsamen Nenner zu bringen und dann die Zähler zu addieren. Du hast es richtig gemacht!")
]
]