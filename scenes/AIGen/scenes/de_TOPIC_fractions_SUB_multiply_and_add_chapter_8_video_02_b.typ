#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Keine Sorge, das war knapp daneben. Lass uns Schritt für Schritt die Lösung durchgehen, um zu verstehen, wie man diese Brüche korrekt addiert.")
  ]

  #text(size: 30pt, weight: "bold")[Brüche mit gleichen Nennern addieren]
  #v(40pt)

  #only("2-")[
    $4/10 + 3/10$
  ]

  #only("2")[
    #voiceover("Wir beginnen mit unserem Problem: vier Zehntel plus drei Zehntel.")
  ]

  #only("3-")[
    #align(center)[#text(fill:aqua)[⇓ Gleiche Nenner]]
  ]

  #only("3")[
    #voiceover("Beachte, dass beide Brüche den gleichen Nenner, zehn, haben. Das macht unsere Addition viel einfacher!")
  ]

  #only("4-")[
    $(4+3)/10$
  ]

  #only("4")[
    #voiceover("Beim Addieren von Brüchen mit demselben Nenner behalten wir den Nenner bei und addieren nur die Zähler. Also addieren wir vier plus drei im Zähler.")
  ]

  #only("5-")[
    $7/10$
  ]

  #only("5")[
    #voiceover("Vier plus drei ergibt sieben, also ist unsere endgültige Antwort sieben Zehntel.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Warum das funktioniert]
  #v(40pt)

  #only("1-")[
    - Gleiche Einheiten 📏
  ]

  #only("1")[
    #voiceover("Diese Methode funktioniert, weil wir mit denselben Einheiten arbeiten. Denke daran, es ist wie das Hinzufügen von 4 Scheiben einer 10-Scheiben-Pizza zu 3 Scheiben derselben Pizza.")
  ]

  #only("2-")[
    - Nenner bleibt gleich 🔢
  ]

  #only("2")[
    #voiceover("Der Nenner bleibt gleich, weil wir die Größe jedes Teils nicht ändern, sondern nur zählen, wie viele wir insgesamt haben.")
  ]

  #only("3-")[
    - Nur Zähler addieren ➕
  ]

  #only("3")[
    #voiceover("Wir addieren nur die Zähler, weil sie die Anzahl dieser gleich großen Teile darstellen.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Die Addition visualisieren]
  #v(40pt)

  #only("1-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(
```

          import matplotlib.pyplot as plt
import numpy as np

def draw_fraction(ax, fraction, position, color):
    numerator, denominator = fraction
    for i in range(denominator):
        if i < numerator:
            ax.add_patch(plt.Rectangle((position + i/denominator, 0), 1/denominator, 1, fill=True, color=color))
        ax.add_patch(plt.Rectangle((position + i/denominator, 0), 1/denominator, 1, fill=False, edgecolor='black'))

fig, ax = plt.subplots(figsize=(10, 2))
ax.set_xlim(0, 2)
ax.set_ylim(0, 1)
ax.axis('off')

draw_fraction(ax, (4, 10), 0, 'lightblue')
draw_fraction(ax, (3, 10), 1, 'lightgreen')

plt.text(0.5, -0.1, '4/10', ha='center', va='center')
plt.text(1.5, -0.1, '3/10', ha='center', va='center')
plt.text(1, 1.1, '+', ha='center', va='center', fontsize=20)
plt.text(1, -0.3, '= 7/10', ha='center', va='center', fontsize=16)

plt.tight_layout()
plt.show()
          ```,
          width: 360pt),
        )
      ]
    ]
  ]

  #only("1")[
    #voiceover("Hier ist eine visuelle Darstellung unserer Addition. Die blauen Rechtecke repräsentieren vier Zehntel, und die grünen Rechtecke repräsentieren drei Zehntel. Wenn wir sie kombinieren, erhalten wir insgesamt sieben Zehntel.")
  ]

  #only("2")[
    #voiceover("Diese Visualisierung hilft uns zu verstehen, warum wir die Zähler einfach addieren können, wenn die Nenner gleich sind. Wir zählen einfach die Gesamtzahl der schattierten Teile von zehn.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse]
  #v(40pt)

  #only("1-")[
    - Wenn die Nenner gleich sind, addiere die Zähler 🧮
  ]

  #only("1")[
    #voiceover("Die wichtigste Erkenntnis ist, dass wir, wenn Brüche denselben Nenner haben, einfach die Zähler addieren und den Nenner gleich lassen können.")
  ]

  #only("2-")[
    - Der Nenner repräsentiert das Ganze 🍕
  ]

  #only("2")[
    #voiceover("Denke daran, der Nenner repräsentiert, in wie viele Teile das Ganze geteilt ist. Solange dies gleich bleibt, arbeiten wir mit gleich großen Stücken.")
  ]

  #only("3-")[
    - Visualisieren, um zu verstehen 👁️
  ]

  #only("3")[
    #voiceover("Das Visualisieren von Brüchen, wie wir es mit den Rechtecken gemacht haben, kann wirklich helfen zu verstehen, was passiert, wenn wir Brüche addieren.")
  ]
]