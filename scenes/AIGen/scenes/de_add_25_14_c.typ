#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#text(size: 30pt, weight: "bold")[Aufgabe]
#v(40pt)
#align(center)[Berechne $2/5 + 1/4$]
#v(40pt)
//Antwort des Schülers: $9/20$
#only("2-")[Deine Antwort: $9/20$]
#only("1")[
#voiceover("Wir sollen zwei Fünftel plus ein Viertel berechnen.")
]
#only("2")[
#voiceover("Und deine Antwort ist neun Zwanzigstel. Das ist leider nicht richtig.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Dein Fehler]
#v(40pt)
#only("1-")[Dein Fehler: $2/5 + 1/4 ≠ (5+4)/(5 dot 4)$]
#v(20pt)
#only("2-")[✅ Gemeinsamen Nenner gefunden]
#v(20pt)
#only("3-")[🛠️ Zähler falsch bestimmt]
#only("1")[
#voiceover("Du hast die Summe der Nenner durch das Produkt der Nenner geteilt. Also fünf plus vier geteilt durch fünf mal vier. Das ist leider nicht richtig.")
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

#first plot the fraction 2/5
plot_fraction_circle(axs[0], 5, 2, '2/5')
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
#only("4-")[#text()[- Gemeinsamer Nenner: $times.square/20$]]
#only("1")[
#voiceover("Hier siehst du die Brüche mit ihren ursprünglichen Nennern. Links haben wir zwei Fünftel und rechts ein Viertel.")
]
#only("2")[
#voiceover("Da diese Brüche verschiedene Nenner haben, müssen wir sie zuerst auf einen gemeinsamen Nenner bringen.")
]
#only("3")[
#voiceover("und zwar auf zwanzigstel, wie du schon richtig erkannt hast.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zähler anpassen]
// First Plot that covers the first fraction, which is 2/5
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

#first subplot: 2/5 to 8/20
plot_fraction_circle(axs[0], 5, 2, '2/5')
plot_fraction_circle(axs[1], 20, 8, '8/20')

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

#second subplot: 1/4 to 5/20
plot_fraction_circle(axs[0], 4, 1, '1/4')
plot_fraction_circle(axs[1], 20, 5, '5/20')

plt.tight_layout()
plt.show()
```,
width: 360pt),
)]
]
]
#only("2-")[#text()[- $2/5 = 8/20$]]
#v(20pt)
#only("3-")[#text()[- $1/4 = 5/20$]]
#only("1")[
#voiceover("Nun passen wir den Nenner an:")
]
#only("2")[
#voiceover("Aus zwei Fünftel werden acht Zwanzigstel. Wir haben also sowohl den Zähler, als auch den Nenner mit vier multipliziert. Und wie du siehst bleibt dann der Wert gleich.")
]
#only("3")[
#voiceover("Und aus ein Viertel werden fünf Zwanzigstel. Auch hier haben wir sowohl den Zähler, als auch den Nenner mit dem selben Wert multipliziert. Und auch hier bleibt der Wert gleich.")
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
#first plot the fraction 8/20, which is equivalent to the fraction 2/5
plot_fraction_circle(axs[0], 20, 8, '8/20')
#then plot the fraction 5/20, which is equivalent to the fraction 1/4
plot_fraction_circle(axs[1], 20, 5, '5/20')

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
plot_fraction_circle(ax, 20, 13, '8/20 + 5/20 = 13/20')

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
#voiceover("Acht Zwanzigstel plus fünf Zwanzigstel ist also gleich dreizehn Zwanzigstel. Und das ist das korrekte Ergebnis.")
]
]