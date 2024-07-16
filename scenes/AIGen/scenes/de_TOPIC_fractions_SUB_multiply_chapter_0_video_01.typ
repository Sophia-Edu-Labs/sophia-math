#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Multiplikation von Brüchen: Ganze Zahl $dot$ Bruch]
#v(40pt)
#only("1-")[
#align(center)[
#text(size: 24pt)[🍕 Pizza-Party! 🎉]
 ]
 ]
#only("2-")[
#align(center)[
$3 dot 1/4$ Pizza 🍕
 ]
 ]
#only("3-")[
#text(size: 20pt)[Schritte:]
#v(10pt)
 - Multipliziere die ganze Zahl mit dem Zähler
#v(10pt)
 - Behalte den Nenner bei
 ]
#only("4-")[
#align(center)[
$3 dot 1/4 = (3 dot 1)/4 = 3/4$
 ]
 ]
#only("5-")[
#align(center)[
#text(size: 24pt)[3/4 einer Pizza 🍕🍕🍕]
 ]
 ]
#only("1")[
#voiceover("Willkommen zu unserer Lektion über die Multiplikation von Brüchen! Stell Dir vor, Du planst eine Pizza-Party und musst herausfinden, wie viel Pizza Du haben wirst.")
 ]
#only("2")[
#voiceover("Angenommen, Du möchtest jedem Deiner 3 Freunde ein Viertel einer Pizza geben. Wie viel Pizza ist das insgesamt? Wir können dies mathematisch als 3 mal ein Viertel ausdrücken.")
 ]
#only("3")[
#voiceover("Um eine ganze Zahl mit einem Bruch zu multiplizieren, befolgen wir zwei einfache Schritte. Zuerst multiplizieren wir die ganze Zahl mit dem Zähler des Bruchs. Dann behalten wir den Nenner des Bruchs bei.")
 ]
#only("4")[
#voiceover("Wenden wir diese Schritte auf unser Pizza-Problem an. Wir haben 3 mal ein Viertel. Wir multiplizieren 3 mit 1, was uns 3 ergibt, und behalten den Nenner 4. Also ergibt 3 mal ein Viertel drei Viertel.")
 ]
#only("5")[
#voiceover("Das bedeutet, Du benötigst drei Viertel einer Pizza für Deine Freunde. Ist es nicht erstaunlich, wie uns Brüche helfen können, reale Probleme zu lösen?")
 ]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung der Multiplikation: 3 $dot$ 1/4]
#v(40pt)
#only("1-")[
#box()[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt
import matplotlib.patches as patches
def draw_circle(ax, fraction, color='blue', edge_color='black'):
 circle = patches.Circle((0.5, 0.5), 0.5, edgecolor=edge_color, facecolor='none', linewidth=1.5)
 ax.add_patch(circle)
 wedge = patches.Wedge((0.5, 0.5), 0.5, 90, 90 + 360 * fraction, color=color, edgecolor=edge_color, linewidth=1.5)
 ax.add_patch(wedge)
 ax.add_line(plt.Line2D([0.5, 0.5], [0, 1], color=edge_color, linewidth=1.5))
 ax.add_line(plt.Line2D([0, 1], [0.5, 0.5], color=edge_color, linewidth=1.5))
 ax.set_aspect('equal')
 ax.axis('off')
fig, axs = plt.subplots(1, 3, figsize=(9, 3))
# Top row: 3 circles, each 1/4 filled
for ax in axs:
 draw_circle(ax, 0.25)
 ax.text(0.5, -0.1, '1/4', ha='center', va='center', fontsize=12)
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
def draw_circle(ax, fraction, color='blue', edge_color='black'):
 circle = patches.Circle((0.5, 0.5), 0.5, edgecolor=edge_color, facecolor='none', linewidth=1.5)
 ax.add_patch(circle)
 wedge = patches.Wedge((0.5, 0.5), 0.5, 90, 90 + 360 * fraction, color=color, edgecolor=edge_color, linewidth=1.5)
 ax.add_patch(wedge)
 ax.add_line(plt.Line2D([0.5, 0.5], [0, 1], color=edge_color, linewidth=1.5))
 ax.add_line(plt.Line2D([0, 1], [0.5, 0.5], color=edge_color, linewidth=1.5))
 ax.set_aspect('equal')
 ax.axis('off')
fig, ax = plt.subplots(figsize=(3, 3))
# Bottom row: 1 circle 3/4 filled
draw_circle(ax, 0.75)
ax.text(0.5, -0.1, '3/4', ha='center', va='center', fontsize=12)
plt.tight_layout()
plt.show()
```,
width: 130pt),
)
]]
]
#only("1")[
#voiceover("Lass uns visualisieren, was passiert, wenn wir 3 mit 1/4 multiplizieren. Hier haben wir drei Kreise, die jeweils ein Ganzes darstellen. In jedem Kreis haben wir 1/4 oder ein Viertel schattiert.")
]
#only("2")[
#voiceover("Wenn wir 3 mit 1/4 multiplizieren, kombinieren wir im Wesentlichen diese drei Viertel-Teile.")
]
#only("3")[
#voiceover("Das Ergebnis wird in diesem einzelnen Kreis gezeigt. Wie Du sehen kannst, wenn wir drei Viertel-Teile kombinieren, erhalten wir drei Viertel eines Ganzen oder 3/4. Diese visuelle Darstellung hilft uns zu verstehen, warum 3 mal 1/4 gleich 3/4 ist.")
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
#text(size: 24pt)[Denke daran: Zähler multiplizieren, Nenner beibehalten]
 ]
 ]
#only("1")[
#voiceover("Schauen wir uns nun die allgemeine Regel für die Multiplikation einer ganzen Zahl mit einem Bruch an.")
 ]
#only("2")[
#voiceover("Wenn wir eine ganze Zahl 'a' mit einem Bruch 'b durch c' multiplizieren, erhalten wir 'a mal b' durch 'c'. Hierbei ist 'a' eine beliebige ganze Zahl und 'b durch c' ein beliebiger Bruch.")
 ]
#only("3")[
#voiceover("Der Schlüssel ist, daran zu denken: Multipliziere die ganze Zahl mit dem Zähler und behalte den Nenner bei. Diese einfache Regel hilft Dir, viele Probleme mit der Bruchmultiplikation zu lösen!")
 ]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[
 - Multipliziere die ganze Zahl mit dem Zähler
 ]
#only("2-")[
 - Behalte den Nenner bei
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
#voiceover("Zweitens behalten wir den Nenner des Bruchs bei.")
 ]
#only("3")[
#voiceover("Wir können dies als Formel ausdrücken: 'a' mal 'b durch c' ergibt 'a mal b' durch 'c'.")
 ]
#only("4")[
#voiceover("Denke daran, Übung ist der Schlüssel, um dieses Konzept zu meistern. Versuche, diese Regel auf verschiedene Probleme anzuwenden, und bald wirst Du ein Experte in der Bruchmultiplikation sein!")
 ]
]