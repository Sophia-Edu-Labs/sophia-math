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
#morphchildren(id: "plot2")[
#figure(
pyimage(`
import matplotlib.pyplot as plt
import numpy as np

def visualize_fraction(ax, num, den, color, title):
    for i in range(1, den):
        ax.axvline(i / den, color='black', linestyle='--', linewidth=6)
    
    ax.add_patch(plt.Rectangle((0, 0), num / den, 0.3, color=color, alpha=0.8))
    
    ax.text(num / (2 * den), 0.15, f'{num}/{den}', ha='center', va='center', fontsize=33, color='white')
    
    ax.set_xlim(0, 1)
    ax.set_ylim(0, 0.3)
    
    ticks = np.arange(0, 1 + 1/den, 1/den)
    labels = [f'{i}/{den}' for i in range(len(ticks))]
    
    ax.set_xticks(ticks)
    ax.set_xticklabels(labels)
    
    ax.set_yticks([])
    
    ax.set_title(title)

fig, axs = plt.subplots(2, 1, figsize=(8, 6))

visualize_fraction(axs[0], 3, 5, 'red', '3/5')
visualize_fraction(axs[1], 1, 3, 'blue', '1/3')

plt.tight_layout()
plt.show()
`,
width: 360pt),
)]
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
import numpy as np

def visualize_fraction(ax, num, den, color, title):
    for i in range(1, den):
        ax.axvline(i / den, color='black', linestyle='--', linewidth=6)
    ax.add_patch(plt.Rectangle((0, 0), num / den, 0.3, color=color, alpha=0.8))
    ax.text(num / (2 * den), 0.15, f'{num}/{den}', ha='center', va='center', fontsize=33, color='white')
    ax.set_xlim(0, 1)
    ax.set_ylim(0, 0.3)
    ticks = np.arange(0, 1 + 1/den, 1/den)
    labels = [f'{i}/{den}' for i in range(len(ticks))]
    ax.set_xticks(ticks)
    ax.set_xticklabels(labels)
    ax.set_yticks([])
    ax.set_title(title)

fig, axs = plt.subplots(2, 1, figsize=(8, 6))

#first subplot: 3/5 to 9/15
visualize_fraction(axs[0], 3, 5, 'red', '3/5')
visualize_fraction(axs[1], 9, 15, 'blue', '9/15')

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
import numpy as np

def visualize_fraction(ax, num, den, color, title):
    for i in range(1, den):
        ax.axvline(i / den, color='black', linestyle='--', linewidth=6)
    ax.add_patch(plt.Rectangle((0, 0), num / den, 0.3, color=color, alpha=0.8))
    ax.text(num / (2 * den), 0.15, f'{num}/{den}', ha='center', va='center', fontsize=33, color='white')
    ax.set_xlim(0, 1)
    ax.set_ylim(0, 0.3)
    ticks = np.arange(0, 1 + 1/den, 1/den)
    labels = [f'{i}/{den}' for i in range(len(ticks))]
    ax.set_xticks(ticks)
    ax.set_xticklabels(labels)
    ax.set_yticks([])
    ax.set_title(title)

fig, axs = plt.subplots(2, 1, figsize=(8, 6))

#second subplot: 1/3 to 5/15
visualize_fraction(axs[0], 1, 3, 'red', '1/3')
visualize_fraction(axs[1], 5, 15, 'blue', '5/15')

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
import numpy as np

def visualize_fraction(ax, num, den, color, title):
    for i in range(1, den):
        ax.axvline(i / den, color='black', linestyle='--', linewidth=6)
    ax.add_patch(plt.Rectangle((0, 0), num / den, 0.3, color=color, alpha=0.8))
    ax.text(num / (2 * den), 0.15, f'{num}/{den}', ha='center', va='center', fontsize=33, color='white')
    ax.set_xlim(0, 1)
    ax.set_ylim(0, 0.3)
    ticks = np.arange(0, 1 + 1/den, 1/den)
    labels = [f'{i}/{den}' for i in range(len(ticks))]
    ax.set_xticks(ticks)
    ax.set_xticklabels(labels)
    ax.set_yticks([])
    ax.set_title(title)

fig, axs = plt.subplots(2, 1, figsize=(8, 6))

#first plot the fraction 9/15, which is equivalent to the fraction 3/5
visualize_fraction(axs[0], 9, 15, 'red', '9/15')
#then plot the fraction 5/15, which is equivalent to the fraction 1/3
visualize_fraction(axs[1], 5, 15, 'blue', '5/15')

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
import numpy as np

def visualize_fraction(ax, num, den, color, title):
    for i in range(1, den):
        ax.axvline(i / den, color='black', linestyle='--', linewidth=6)
    ax.add_patch(plt.Rectangle((0, 0), num / den, 0.3, color=color, alpha=0.8))
    ax.text(num / (2 * den), 0.15, f'{num}/{den}', ha='center', va='center', fontsize=33, color='white')
    ax.set_xlim(0, 1)
    ax.set_ylim(0, 0.3)
    ticks = np.arange(0, 1 + 1/den, 1/den)
    labels = [f'{i}/{den}' for i in range(len(ticks))]
    ax.set_xticks(ticks)
    ax.set_xticklabels(labels)
    ax.set_yticks([])
    ax.set_title(title)

fig, ax = plt.subplots(figsize=(8, 3))

#plot the sum of the two fractions
visualize_fraction(ax, 14, 15, 'purple', '9/15 + 5/15 = 14/15')

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