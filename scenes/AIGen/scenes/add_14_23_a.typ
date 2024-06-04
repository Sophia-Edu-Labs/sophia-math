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
//Antwort des Schülers: $3/7$
#only("2-")[Deine Antwort: $3/7$]
#only("1")[
#voiceover("Die Aufgabe ist, ein Viertel plus zwei Drittel zu berechnen.")
]
#only("2")[
#voiceover("Und deine Antwort, drei Siebtel, ist leider nicht richtig.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Dein Fehler]
#v(40pt)
#only("1-")[Dein Fehler: $1/4 + 2/3 ≠ (1+2)/(4+3)$]
#v(20pt)
#only("2-")[🛠️ Du kannst die Zähler und Nenner nicht einfach separat addieren]
#v(20pt)
#only("3-")[🛠️ Du musst die Brüche zuerst auf den gemeinsamen Nenner bringen]
#only("1")[
#voiceover("Du hast wohl einfach die Zähler addiert, und die Nenner addiert. Also eins plus zwei geteilt durch vier plus drei. Das stimmt aber leider nicht.")
]
#only("2")[
#voiceover("Denn du darfst die Zähler und Nenner nicht einfach separat addieren.")
]
#only("3")[
#voiceover("Stattdessen musst du die Brüche zuerst auf den gemeinsamen Nenner bringen, also dass sie den gleichen Nenner haben. Erst dann kannst du die Zähler addieren.")
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

def plot_fraction_on_number_line(ax, fractions, labels, title):
    ax.set_xlim(0, 1)
    ax.set_xticks([i/12 for i in range(13)])
    ax.set_xticklabels([str(i/12) for i in range(13)], fontsize=10)
    ax.set_yticks([])
    ax.set_title(title, fontsize=20)
    for frac, label in zip(fractions, labels):
        ax.plot([0, frac], [0.5, 0.5], marker='|', markersize=20, color='blue')
        ax.text(frac/2, 0.55, label, horizontalalignment='center', fontsize=15)

fig, axs = plt.subplots(1, 2, figsize=(12, 3))

#first plot the fraction 1/4
plot_fraction_on_number_line(axs[0], [1/4], ['1/4'], '1/4')
#then plot the fraction 2/3
plot_fraction_on_number_line(axs[1], [2/3], ['2/3'], '2/3')

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
#only("3-")[#text()[- Man kann nur bei gleichen Nennern addieren]]
#only("1")[
#voiceover("Suchen wir also den gemeinsamen Nenner. Hier siehst du die Brüche mit ihren ursprünglichen Nennern. Links haben wir ein Viertel und rechts zwei Drittel.")
]
#only("2")[
#voiceover("Diese Brüche haben verschiedene Nenner, also teilen wir sie in Stücke verschiedener Größe ein: Links haben wir Viertel und rechts Drittel. Deswegen können wir auch nicht einfach die Zähler addieren.")
]
#only("3")[
#voiceover("Denn das geht erst, wenn sie den gleichen Nenner haben. Denn nur dann sind die Stücke gleich groß und wir können sie addieren.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Intuitive Darstellung: Erweiterung]
#box()[
#morphchildren(id: "plot2")[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt

def plot_fraction_on_number_line(ax, fractions, labels, title):
    ax.set_xlim(0, 1)
    ax.set_xticks([i/12 for i in range(13)])
    ax.set_xticklabels([str(i/12) for i in range(13)], fontsize=10)
    ax.set_yticks([])
    ax.set_title(title, fontsize=20)
    for frac, label in zip(fractions, labels):
        ax.plot([0, frac], [0.5, 0.5], marker='|', markersize=20, color='blue')
        ax.text(frac/2, 0.55, label, horizontalalignment='center', fontsize=15)

fig, axs = plt.subplots(1, 2, figsize=(12, 3))
#first plot the fraction 3/12, which is equivalent to the fraction 1/4
plot_fraction_on_number_line(axs[0], [3/12], ['3/12'], '3/12')
#then plot the fraction 8/12, which is equivalent to the fraction 2/3
plot_fraction_on_number_line(axs[1], [8/12], ['8/12'], '8/12')

plt.tight_layout()
plt.show()
```,
width: 360pt),
)]
]
#v(20pt)
#only("1-")[#text()[Brüche auf gemeinsamen Nenner bringen:]]
#only("2-")[#text()[- $3/12 = 1/4$]]
#v(20pt)
#only("3-")[#text()[- $8/12 = 2/3$]]
#only("1")[
#voiceover("Ein gemeinsamer Nenner wäre ja 12, denn 12 ist ein Vielfaches von 4 und 3.")
]
#only("2")[
#voiceover("Dann wandeln wir die Brüche um: Drei Zwölftel ist gleich einem Viertel.")
]
#only("3")[
#voiceover("und acht Zwölftel statt zwei Drittel. Du siehst, dass auf jeder Seite der Wert gleich ist, wie davor. Lediglich die Darstellung ist anders.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Korrekte Lösung: Addieren]
#box()[
#morphchildren(id: "plot2")[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt

def plot_fraction_on_number_line(ax, fractions, labels, title):
    ax.set_xlim(0, 1)
    ax.set_xticks([i/12 for i in range(13)])
    ax.set_xticklabels([str(i/12) for i in range(13)], fontsize=10)
    ax.set_yticks([])
    ax.set_title(title, fontsize=20)
    for frac, label in zip(fractions, labels):
        ax.plot([0, frac], [0.5, 0.5], marker='|', markersize=20, color='blue')
        ax.text(frac/2, 0.55, label, horizontalalignment='center', fontsize=15)

fig, ax = plt.subplots(figsize=(12, 3))
#plot the sum of the two fractions
plot_fraction_on_number_line(ax, [11/12], ['11/12'], '3/12 + 8/12 = 11/12')

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

def plot_fraction_on_number_line(ax, fractions, labels, title):
    ax.set_xlim(0, 1)
    ax.set_xticks([i/12 for i in range(13)])
    ax.set_xticklabels([str(i/12) for i in range(13)], fontsize=10)
    ax.set_yticks([])
    ax.set_title(title, fontsize=20)
    for frac, label in zip(fractions, labels):
        ax.plot([0, frac], [0.5, 0.5], marker='|', markersize=20, color='blue')
        ax.text(frac/2, 0.55, label, horizontalalignment='center', fontsize=15)

fig, ax = plt.subplots(figsize=(12, 3))
#plot the sum of the two fractions
plot_fraction_on_number_line(ax, [11/12], ['11/12'], '11/12')

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
#voiceover("Jetzt haben beide Brücher den gleichen Nenner - und du kannst du die Brüche addieren. Du addierst die Zähler und behältst den gemeinsamen Nenner.")
]
#only("2")[
#voiceover("Drei Zwölftel plus acht Zwölftel ist also gleich elf Zwölftel. Und das ist das korrekte Ergebnis.")
]
]