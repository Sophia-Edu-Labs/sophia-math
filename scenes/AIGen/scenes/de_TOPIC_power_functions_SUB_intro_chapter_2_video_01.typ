#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Gerade und Ungerade Potenzfunktionen]
  #v(40pt)
  
  #only("1-")[📊 Potenzfunktionen: $f(x) = x^n$]
  #v(20pt)
  #only("2-")[🔢 $n$ kann gerade oder ungerade sein]
  #v(20pt)
  #only("3-")[🔄 Unterschiedliche Symmetrien und Verhaltensweisen]
  #v(20pt)
  #only("4-")[🤔 Warum ist das wichtig?]

  #only("1")[
    #voiceover("Lass uns einen interessanten Aspekt von Potenzfunktionen erkunden. Potenzfunktionen sind Funktionen der Form f von x gleich x hoch n.")
  ]
  #only("2")[
    #voiceover("Der Exponent n in einer Potenzfunktion kann entweder gerade oder ungerade sein. Dieser einfache Unterschied führt zu faszinierenden Eigenschaften.")
  ]
  #only("3")[
    #voiceover("Je nachdem, ob n gerade oder ungerade ist, zeigen diese Funktionen unterschiedliche Symmetrien und Verhaltensweisen. Dies beeinflusst, wie sie auf einem Graphen aussehen und wie sie sich mathematisch verhalten.")
  ]
  #only("4")[
    #voiceover("Du fragst Dich vielleicht, warum das wichtig ist. Nun, das Verständnis dieser Unterschiede ist in vielen Bereichen der Mathematik und ihrer Anwendungen entscheidend. Es hilft uns, das Verhalten von Funktionen vorherzusagen, Gleichungen zu lösen und reale Phänomene genauer zu modellieren.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Gerade Potenzfunktionen]
  #v(40pt)
  
  #only("1-")[📐 Beispiel: $f(x) = x^2$]
  #v(20pt)
  #only("2-")[🪞 Symmetrisch zur y-Achse]
  #v(20pt)
  #only("3-")[↕️ U-förmige Parabel]
  #v(20pt)
  #only("4-")[➕ Immer nicht-negativ]

  #only("1-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(
```

          import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-2, 2, 100)
y = x**2

plt.plot(x, y)
plt.title('f(x) = x²')
plt.xlabel('x')
plt.ylabel('y')
plt.grid(True)
plt.axhline(y=0, color='k')
plt.axvline(x=0, color='k')
plt.show()
          ```,
          width: 360pt),
        )
      ]
    ]
  ]

  #only("1")[
    #voiceover("Fangen wir mit geraden Potenzfunktionen an. Ein einfaches Beispiel ist f von x gleich x Quadrat.")
  ]
  #only("2")[
    #voiceover("Ein wesentliches Merkmal gerader Potenzfunktionen ist, dass sie symmetrisch zur y-Achse sind. Das bedeutet, wenn Du den Graphen entlang der y-Achse faltest, werden beide Seiten perfekt übereinanderliegen.")
  ]
  #only("3")[
    #voiceover("Wie wir im Graphen sehen können, bildet eine gerade Potenzfunktion wie x Quadrat eine U-förmige Parabel.")
  ]
  #only("4")[
    #voiceover("Ein weiteres wichtiges Merkmal ist, dass gerade Potenzfunktionen für reelle Eingaben immer nicht-negativ sind. Das bedeutet, ihre Graphen gehen nie unter die x-Achse.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Ungerade Potenzfunktionen]
  #v(40pt)
  
  #only("1-")[📏 Beispiel: $f(x) = x^3$]
  #v(20pt)
  #only("2-")[🔄 Rotationssymmetrisch]
  #v(20pt)
  #only("3-")[↗️↘️ S-förmige Kurve]
  #v(20pt)
  #only("4-")[➕➖ Kann positiv oder negativ sein]

  #only("1-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(
```

          import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-2, 2, 100)
y = x**3

plt.plot(x, y)
plt.title('f(x) = x³')
plt.xlabel('x')
plt.ylabel('y')
plt.grid(True)
plt.axhline(y=0, color='k')
plt.axvline(x=0, color='k')
plt.show()
          ```,
          width: 360pt),
        )
      ]
    ]
  ]

  #only("1")[
    #voiceover("Nun schauen wir uns ungerade Potenzfunktionen an. Ein häufiges Beispiel ist f von x gleich x hoch drei.")
  ]
  #only("2")[
    #voiceover("Ungerade Potenzfunktionen haben Rotationssymmetrie. Wenn Du den Graphen um 180 Grad um den Ursprung drehst, sieht er gleich aus.")
  ]
  #only("3")[
    #voiceover("Wie wir im Graphen sehen können, bildet eine ungerade Potenzfunktion wie x hoch drei eine S-förmige Kurve.")
  ]
  #only("4")[
    #voiceover("Im Gegensatz zu geraden Potenzfunktionen können ungerade Potenzfunktionen sowohl positiv als auch negativ sein. Ihre Graphen verlaufen durch das obere rechte und untere linke Quadrant.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Zusammenfassung]
  #v(40pt)
  
  #only("1-")[📊 Potenzfunktionen: $f(x) = x^n$]
  #v(20pt)
  #only("2-")[🔢 Gerade $n$: symmetrisch, U-förmig, nicht-negativ]
  #v(20pt)
  #only("3-")[🔢 Ungerade $n$: Rotationssymmetrie, S-förmig, pos/neg]
  #v(20pt)
  #only("4-")[🧠 Das Verständnis dieser Unterschiede ist entscheidend!]

  #only("1")[
    #voiceover("Zusammenfassend haben wir Potenzfunktionen der Form f von x gleich x hoch n untersucht.")
  ]
  #only("2")[
    #voiceover("Wenn n gerade ist, ist die Funktion symmetrisch zur y-Achse, bildet einen U-förmigen Graphen und ist immer nicht-negativ.")
  ]
  #only("3")[
    #voiceover("Wenn n ungerade ist, hat die Funktion Rotationssymmetrie, bildet einen S-förmigen Graphen und kann sowohl positiv als auch negativ sein.")
  ]
  #only("4")[
    #voiceover("Das Verständnis dieser Unterschiede ist entscheidend für die Analyse des Verhaltens von Funktionen, das Lösen von Gleichungen und das Modellieren realer Phänomene. In unseren nächsten Lektionen werden wir tiefer darauf eingehen, wie diese Eigenschaften die Differenzierung und andere mathematische Operationen beeinflussen.")
  ]
]