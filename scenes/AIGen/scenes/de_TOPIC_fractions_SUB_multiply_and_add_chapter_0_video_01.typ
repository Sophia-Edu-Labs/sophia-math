#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Brüche Multiplizieren]
  #v(40pt)

  #only("1-")[🍕 Warum müssen wir Brüche multiplizieren?]
  #v(20pt)
  #only("2-")[📊 Beispiel: Eine Pizza teilen]
  #v(20pt)
  #only("3-")[🧮 Grundkonzept: Zähler und Nenner multiplizieren]
  #v(20pt)
  #only("4-")[✨ Das Ergebnis vereinfachen]

  #only("1")[
    #voiceover("Willkommen zu unserer Lektion über das Multiplizieren von Brüchen! Hast Du Dich jemals gefragt, warum wir Brüche multiplizieren müssen?")
  ]

  #only("2")[
    #voiceover("Lass uns ein Beispiel aus dem echten Leben betrachten. Stell Dir vor, Du hast eine halbe Pizza und möchtest die Hälfte davon Deinem Freund geben. Wie viel von der ganzen Pizza würde Dein Freund bekommen?")
  ]

  #only("3")[
    #voiceover("Um dies zu lösen, müssen wir Brüche multiplizieren. Das Grundkonzept ist einfach: Wir multiplizieren die Zähler miteinander und die Nenner miteinander.")
  ]

  #only("4")[
    #voiceover("Nach dem Multiplizieren müssen wir oft das Ergebnis vereinfachen, um die Brüche in ihrer einfachsten Form zu erhalten. Lass uns diesen Prozess auf der nächsten Folie genauer betrachten.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Wie man Brüche multipliziert]
  #v(40pt)

  #only("1-")[$ (a/b) dot (c/d) = (a dot c)/(b dot d) $]
  #v(20pt)
  #only("2-")[Beispiel: $ (1/2) dot (1/2) = (1 dot 1)/(2 dot 2) = 1/4 $]
  #v(20pt)
  #only("3-")[
    #align(center)[
      #box(width: 200pt, height: 200pt)[
        #morphchildren(id: "plot")[
          #figure(
            pyimage(
```

            import matplotlib.pyplot as plt
import numpy as np

fig, ax = plt.subplots()
circle = plt.Circle((0.5, 0.5), 0.5, fill=False)
ax.add_artist(circle)
ax.plot([0.5, 0.5], [0, 1], 'k-')
ax.plot([0, 1], [0.5, 0.5], 'k-')
ax.fill_between([0, 0.5], [0.5, 0.5], [1, 1], alpha=0.3)
ax.set_xlim(0, 1)
ax.set_ylim(0, 1)
ax.set_aspect('equal')
ax.axis('off')
plt.show()
            ```,
            width: 200pt),
          )
        ]
      ]
    ]
  ]

  #only("1")[
    #voiceover("So multiplizierst Du Brüche: Wir multiplizieren die Zähler miteinander und die Nenner miteinander. Wenn wir a durch b mal c durch d haben, ist das Ergebnis a mal c durch b mal d.")
  ]

  #only("2")[
    #voiceover("Lass uns zu unserem Pizza-Beispiel zurückkehren. Die Hälfte einer halben Pizza wird als ein halb mal ein halb dargestellt. Nach unserer Regel multiplizieren wir eins mal eins im Zähler, was eins ergibt, und zwei mal zwei im Nenner, was vier ergibt. Also ist die Hälfte einer halben Pizza ein Viertel der ganzen Pizza.")
  ]

  #only("3")[
    #voiceover("Dieses Diagramm veranschaulicht unser Pizza-Beispiel. Der ganze Kreis stellt die Pizza dar, und der schattierte Bereich zeigt ein Viertel davon, was das Ergebnis unserer Multiplikation ist.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Zusammenfassung]
  #v(40pt)

  #only("1-")[🔢 Zähler miteinander multiplizieren]
  #v(20pt)
  #only("2-")[🔢 Nenner miteinander multiplizieren]
  #v(20pt)
  #only("3-")[✂️ Wenn möglich, vereinfachen]
  #v(20pt)
  #only("4-")[🍕 Anwendung im echten Leben: Essen teilen!]

  #only("1")[
    #voiceover("Lass uns wiederholen, was wir über das Multiplizieren von Brüchen gelernt haben. Zuerst multiplizieren wir die Zähler miteinander.")
  ]

  #only("2")[
    #voiceover("Dann multiplizieren wir die Nenner miteinander.")
  ]

  #only("3")[
    #voiceover("Nach dem Multiplizieren sollten wir immer prüfen, ob wir unser Ergebnis vereinfachen können.")
  ]

  #only("4")[
    #voiceover("Denke daran, es geht nicht nur um Zahlen - es hat auch Anwendungen im echten Leben, wie zum Beispiel herauszufinden, wie viel Pizza Du mit Freunden teilst! Übe diese Fähigkeit, und Du wirst sie in vielen Situationen nützlich finden.")
  ]
]