#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#text(size: 30pt, weight: "bold")[Aufgabe]
#v(40pt)
#align(center)[Berechne $1/8 + 4/5$]
#v(40pt)
//Antwort des Schülers: $13/40$
#only("2-")[Deine Antwort: $13/40$]
#only("1")[
#voiceover("Wir sollen ein Achtel plus vier Fünftel berechnen.")
]
#only("2")[
#voiceover("Und deine Antwort ist dreizehn Vierzigstel. Das ist leider nicht richtig.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Dein Fehler]
#v(40pt)
#only("1-")[Dein Fehler: $1/8 + 4/5 ≠ (8+5)/(8 dot 5)$]
#v(20pt)
#only("2-")[✅ Gemeinsamen Nenner gefunden]
#v(20pt)
#only("3-")[🛠️ Zähler falsch bestimmt]
#only("1")[
#voiceover("Du hast die Summe der Nenner durch das Produkt der Nenner geteilt. Also acht plus fünf geteilt durch acht mal fünf. Das ist leider nicht richtig.")
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

#first plot the fraction 1/8
plot_fraction_circle(axs[0], 8, 1, '1/8')
#then plot the fraction 4/5
plot_fraction_circle(axs[1], 5, 4, '4/5')

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
#only("4-")[#text()[- Gemeinsamer Nenner: $times.square/40$]]
#only("1")[
#voiceover("Hier siehst du die Brüche mit ihren ursprünglichen Nennern. Links haben wir ein Achtel und rechts vier Fünftel.")
]
#only("2")[
#voiceover("Da diese Brüche verschiedene Nenner haben, müssen wir sie zuerst auf einen gemeinsamen Nenner bringen.")
]
#only("3")[
#voiceover("und zwar auf vierzigstel, wie du schon richtig erkannt hast.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zähler anpassen]
// First Plot that covers the first fraction, which is 1/8
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

#first subplot: 1/8 to 5/40
plot_fraction_circle(axs[0], 8, 1, '1/8')
plot_fraction_circle(axs[1], 40, 5, '5/40')

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]]
// Second Plot that covers the second fraction, which is 4/5
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

#second subplot: 4/5 to 32/40
plot_fraction_circle(axs[0], 5, 4, '4/5')
plot_fraction_circle(axs[1], 40, 32, '32/40')

plt.tight_layout()
plt.show()
```,
width: 360pt),
)]
]
]
#only("2-")[#text()[- $1/8 = 5/40$]]
#v(20pt)
#only("3-")[#text()[- $4/5 = 32/40$]]
#only("1")[
#voiceover("Nur passen wir den Nenner etwas anders an:")
]
#only("2")[
#voiceover("Aus ein Achtel werden fünf Vierzigstel. Wir haben also sowohl den Zähler, als auch den Nenner mit fünf multipliziert. Und wie du siehst bleibt dann der Wert gleich.")
]
#only("3")[
#voiceover("Und aus vier Fünftel werden zweiunddreißig Vierzigstel. Auch hier haben wir sowohl den Zähler, als auch den Nenner mit dem selben Wert multipliziert. Und auch hier bleibt der Wert gleich.")
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
#first plot the fraction 5/40, which is equivalent to the fraction 1/8
plot_fraction_circle(axs[0], 40, 5, '5/40')
#then plot the fraction 32/40, which is equivalent to the fraction 4/5
plot_fraction_circle(axs[1], 40, 32, '32/40')

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
plot_fraction_circle(ax, 40, 37, '5/40 + 32/40 = 37/40')

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
#voiceover("Fünf Vierzigstel plus zweiunddreißig Vierzigstel ist also gleich siebenunddreißig Vierzigstel. Und das ist das korrekte Ergebnis.")
]
]