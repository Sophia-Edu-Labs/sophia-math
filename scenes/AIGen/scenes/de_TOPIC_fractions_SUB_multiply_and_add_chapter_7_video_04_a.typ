#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Großartig! Du hast diese Brüche korrekt addiert. Lass uns die Lösung Schritt für Schritt durchgehen, um zu verstehen, warum das funktioniert.")
  ]

  #text(size: 30pt, weight: "bold")[Brüche mit gleichen Nennern addieren]
  #v(40pt)

  #only("2-")[$ 4/9 + 3/9 $]
  #v(20pt)
  #only("3-")[#text(fill: aqua)[⇓ Zähler addieren, Nenner beibehalten]]
  #v(20pt)
  #only("4-")[$ (4 + 3)/9 $]
  #v(20pt)
  #only("5-")[#text(fill: aqua)[⇓ Vereinfachen]]
  #v(20pt)
  #only("6-")[$ 7/9 $]

  #only("2")[
    #voiceover("Wir beginnen mit der Aufgabe vier Neuntel plus drei Neuntel.")
  ]

  #only("3")[
    #voiceover("Beim Addieren von Brüchen mit dem gleichen Nenner behalten wir den Nenner bei und addieren nur die Zähler.")
  ]

  #only("4")[
    #voiceover("Also addieren wir 4 und 3 im Zähler, während wir 9 als Nenner beibehalten.")
  ]

  #only("5")[
    #voiceover("Jetzt vereinfachen wir. Vier plus drei ergibt sieben.")
  ]

  #only("6")[
    #voiceover("Unser Endergebnis ist also sieben Neuntel.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Warum das funktioniert]
  #v(40pt)

  #only("1-")[- Brüche repräsentieren Teile eines Ganzen 🍕]
  #v(20pt)
  #only("2-")[- Gleicher Nenner = gleich große Stücke]
  #v(20pt)
  #only("3-")[- Zähler addieren = Stücke zusammenfügen]

  #only("1")[
    #voiceover("Lass uns verstehen, warum das funktioniert. Brüche repräsentieren Teile eines Ganzen, wie Pizzastücke.")
  ]

  #only("2")[
    #voiceover("Wenn Brüche den gleichen Nenner haben, ist es so, als hätten wir es mit gleich großen Stücken zu tun.")
  ]

  #only("3")[
    #voiceover("Das Addieren der Zähler ist wie das Zusammenfügen dieser gleich großen Stücke. Also ergeben vier Stücke plus drei Stücke der gleichen Größe insgesamt sieben Stücke.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Visuelle Darstellung]
  #v(40pt)

  #only("1-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(
```

          import matplotlib.pyplot as plt
import numpy as np

fig, (ax1, ax2, ax3) = plt.subplots(1, 3, figsize=(12, 4))

# First fraction
ax1.pie([4, 5], labels=['4/9', ''], colors=['#ff9999', '#ffffff'], startangle=90)
ax1.set_title('4/9')

# Second fraction
ax2.pie([3, 6], labels=['3/9', ''], colors=['#66b3ff', '#ffffff'], startangle=90)
ax2.set_title('3/9')

# Sum
ax3.pie([7, 2], labels=['7/9', ''], colors=['#99ff99', '#ffffff'], startangle=90)
ax3.set_title('4/9 + 3/9 = 7/9')

plt.tight_layout()
plt.show()
          ```,
          width: 360pt),
        )
      ]
    ]
  ]

  #only("1")[
    #voiceover("Hier ist eine visuelle Darstellung unserer Addition. Das erste Tortendiagramm zeigt vier Neuntel, das zweite zeigt drei Neuntel, und das dritte zeigt ihre Summe, sieben Neuntel. Beachte, wie wir einfach die farbigen Teile zusammenfügen.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Wichtigste Erkenntnis]
  #v(40pt)

  #only("1-")[Beim Addieren von Brüchen mit dem gleichen Nenner:]
  #v(20pt)
  #only("2-")[1️⃣ Zähler addieren]
  #v(20pt)
  #only("3-")[2️⃣ Nenner beibehalten]
  #v(20pt)
  #only("4-")[3️⃣ Falls möglich, vereinfachen]

  #only("1")[
    #voiceover("Lass uns die wichtigsten Punkte zum Addieren von Brüchen mit dem gleichen Nenner zusammenfassen.")
  ]

  #only("2")[
    #voiceover("Erstens, addiere die Zähler.")
  ]

  #only("3")[
    #voiceover("Zweitens, behalte den Nenner bei.")
  ]

  #only("4")[
    #voiceover("Schließlich, vereinfache den resultierenden Bruch, falls möglich. In diesem Fall ist sieben Neuntel bereits in seiner einfachsten Form.")
  ]
]