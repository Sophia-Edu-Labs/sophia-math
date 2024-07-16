#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Rückblick: Brüche multiplizieren]
#v(40pt)
#only("1-")[
#align(center)[
#text(size: 24pt)[🥧 Rückblick auf die Kuchenparty! 🎉]
 ]
 ]
#only("2-")[
#align(center)[
$4 dot 1/5$ Kuchen 🥧
 ]
 ]
#only("3-")[
#text(size: 20pt)[Schritte:]
#v(10pt)
 - Ganze Zahl mit Zähler multiplizieren
#v(10pt)
 - Nenner bleibt gleich
 ]
#only("4-")[
#align(center)[
$4 dot 1/5 = (4 dot 1)/5 = 4/5$
 ]
 ]
#only("5-")[
#align(center)[
#text(size: 24pt)[4/5 eines Kuchens 🥧🥧🥧🥧]
 ]
 ]
#only("1")[
#voiceover("Während wir unsere Lektion über das Multiplizieren von Brüchen wiederholen, stell Dir vor, Du veranstaltest eine Kuchenparty und musst herausfinden, wie viel Kuchen Du benötigst.")
 ]
#only("2")[
#voiceover("Angenommen, Du möchtest jedem Deiner 4 Freunde ein Fünftel eines Kuchens geben. Wie viel Kuchen ist das insgesamt? Wir können dies mathematisch als 4 mal ein Fünftel ausdrücken.")
 ]
#only("3")[
#voiceover("Um eine ganze Zahl mit einem Bruch zu multiplizieren, befolgen wir zwei einfache Schritte. Zuerst multiplizieren wir die ganze Zahl mit dem Zähler des Bruchs. Dann bleibt der Nenner des Bruchs gleich.")
 ]
#only("4")[
#voiceover("Wenden wir diese Schritte auf unser Kuchenproblem an. Wir haben 4 mal ein Fünftel. Wir multiplizieren 4 mit 1, was uns 4 ergibt, und behalten den Nenner 5. Also ergibt 4 mal ein Fünftel vier Fünftel.")
 ]
#only("5")[
#voiceover("Das bedeutet, Du benötigst vier Fünftel eines Kuchens für Deine Freunde. Ist es nicht erstaunlich, wie Brüche uns helfen können, reale Probleme zu lösen?")
 ]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung der Multiplikation: 4 $dot$ 1/5]
#v(40pt)
#only("1-")[
#box()[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt 
import matplotlib.patches as patches 
def draw_circle(ax, fraction, color='orange', edge_color='black'): 
 circle = patches.Circle((0.5, 0.5), 0.5, edgecolor=edge_color, facecolor='none', linewidth=1.5) 
 ax.add_patch(circle) 
 wedge = patches.Wedge((0.5, 0.5), 0.5, 90, 90 + 360 * fraction, color=color, edgecolor=edge_color, linewidth=1.5) 
 ax.add_patch(wedge) 
 ax.add_line(plt.Line2D([0.5, 0.5], [0, 1], color=edge_color, linewidth=1.5)) 
 ax.add_line(plt.Line2D([0, 1], [0.5, 0.5], color=edge_color, linewidth=1.5)) 
 ax.set_aspect('equal') 
 ax.axis('off') 
fig, axs = plt.subplots(1, 4, figsize=(12, 3)) 
# Top row: 4 circles, each 1/5 filled 
for ax in axs: 
 draw_circle(ax, 1/5) 
 ax.text(0.5, -0.1, '1/5', ha='center', va='center', fontsize=12) 
plt.tight_layout() 
plt.show() 
```, 
width: 360pt), 
) 
] 
] 
#only("2-")[
$ #sym.arrow.b $
]
#only("3-")[
#align(center)[
#box()[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt 
import matplotlib.patches as patches 
def draw_circle(ax, fraction, color='orange', edge_color='black'): 
 circle = patches.Circle((0.5, 0.5), 0.5, edgecolor=edge_color, facecolor='none', linewidth=1.5) 
 ax.add_patch(circle) 
 wedge = patches.Wedge((0.5, 0.5), 0.5, 90, 90 + 360 * fraction, color=color, edgecolor=edge_color, linewidth=1.5) 
 ax.add_patch(wedge) 
 ax.add_line(plt.Line2D([0.5, 0.5], [0, 1], color=edge_color, linewidth=1.5)) 
 ax.add_line(plt.Line2D([0, 1], [0.5, 0.5], color=edge_color, linewidth=1.5)) 
 ax.set_aspect('equal') 
 ax.axis('off') 
fig, ax = plt.subplots(figsize=(3, 3)) 
# Bottom row: 1 circle 4/5 filled 
draw_circle(ax, 4/5) 
ax.text(0.5, -0.1, '4/5', ha='center', va='center', fontsize=12) 
plt.tight_layout() 
plt.show() 
```, 
width: 130pt), 
) 
]] 
] 
#only("1")[
#voiceover("Lass uns visualisieren, was passiert, wenn wir 4 mit 1/5 multiplizieren. Hier haben wir vier Kreise, die jeweils ein Ganzes darstellen. In jedem Kreis haben wir 1/5 oder ein Fünftel schattiert.") 
 ] 
#only("2")[
#voiceover("Wenn wir 4 mit 1/5 multiplizieren, kombinieren wir im Wesentlichen diese vier Ein-Fünftel-Teile.") 
 ] 
#only("3")[
#voiceover("Das Ergebnis wird in diesem einzelnen Kreis gezeigt. Wie Du sehen kannst, wenn wir vier Ein-Fünftel-Teile kombinieren, erhalten wir vier Fünftel eines Ganzen oder 4/5. Diese visuelle Darstellung hilft uns zu verstehen, warum 4 mal 1/5 gleich 4/5 ist.") 
 ] 
]

#slide()[
#text(size: 30pt, weight: "bold")[Die allgemeine Regel]
#v(40pt)
#only("1-")[
#align(center)[
$a dot b/c = (a dot b)/c$
 ]
 ]
#only("2-")[
#text(size: 20pt)[Wo:]
#v(10pt)
 - $a$ ist eine ganze Zahl
#v(10pt)
 - $b/c$ ist ein Bruch
 ]
#only("3-")[
#align(center)[
#text(size: 24pt)[Denke daran: Zähler multiplizieren, Nenner bleibt gleich]
 ]
 ]
#only("1")[
#voiceover("Schauen wir uns nun die allgemeine Regel für das Multiplizieren einer ganzen Zahl mit einem Bruch an.")
 ]
#only("2")[
#voiceover("Wenn wir eine ganze Zahl 'a' mit einem Bruch 'b durch c' multiplizieren, erhalten wir 'a mal b' durch 'c'. Hierbei ist 'a' eine beliebige ganze Zahl und 'b durch c' ein beliebiger Bruch.")
 ]
#only("3")[
#voiceover("Der Schlüssel ist: Multipliziere die ganze Zahl mit dem Zähler und behalte den Nenner bei. Diese einfache Regel hilft Dir, viele Multiplikationsprobleme mit Brüchen zu lösen!")
 ]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[
 - Ganze Zahl mit Zähler multiplizieren
 ]
#only("2-")[
 - Nenner bleibt gleich
 ]
#only("3-")[
 - Formel: $a dot b/c = (a dot b)/c$
 ]
#only("4-")[
#align(center)[
#text(size: 24pt)[Übung macht den Meister! 🏆]
 ]
 ]
#only("1")[
#voiceover("Lass uns zusammenfassen, was wir gelernt haben. Wenn wir eine ganze Zahl mit einem Bruch multiplizieren, multiplizieren wir zuerst die ganze Zahl mit dem Zähler des Bruchs.")
 ]
#only("2")[
#voiceover("Zweitens bleibt der Nenner des Bruchs gleich.")
 ]
#only("3")[
#voiceover("Wir können dies als Formel ausdrücken: 'a' mal 'b durch c' ergibt 'a mal b' durch 'c'.")
 ]
#only("4")[
#voiceover("Denke daran, Übung ist der Schlüssel zum Beherrschen dieses Konzepts. Versuche, diese Regel auf verschiedene Probleme anzuwenden, und bald wirst Du ein Experte im Multiplizieren von Brüchen sein!")
 ]
]