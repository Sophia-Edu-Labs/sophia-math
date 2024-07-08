#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Potenzfunktionen mit negativen Exponenten]
  #v(40pt)
  #only("1-")[📊 Erforschung einer neuen Art von Funktion]
  #v(20pt)
  #only("2-")[🔄 Reziproke Beziehung]
  #v(20pt)
  #only("3-")[💡 Beispiel: $f(x) = x^(-2)$]
  #v(20pt)
  #only("4-")[🧮 Verbindung zur Division]

  #only("1")[
    #voiceover("Willkommen zu unserer Erkundung von Potenzfunktionen mit negativen Exponenten! Heute werden wir herausfinden, wie sich diese Funktionen verhalten und warum sie in der Mathematik wichtig sind.")
  ]
  #only("2")[
    #voiceover("Potenzfunktionen mit negativen Exponenten haben eine besondere Eigenschaft: Sie stellen reziproke Funktionen dar. Aber was bedeutet das genau?")
  ]
  #only("3")[
    #voiceover("Betrachten wir ein Beispiel. Stell Dir vor, wir haben die Funktion f von x gleich x hoch minus 2. Wie würde sich diese Funktion verhalten?")
  ]
  #only("4")[
    #voiceover("Um dies zu verstehen, müssen wir eine grundlegende Regel der Exponenten in Bezug auf Division in Erinnerung rufen. Diese Verbindung wird uns helfen, das Konzept der reziproken Funktionen zu begreifen.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Verständnis von reziproken Funktionen]
  #v(40pt)
  #only("1-")[📐 Definition: $f(x) = 1/x^n$, wobei $n > 0$]
  #v(20pt)
  #only("2-")[🔢 Beispiel: $f(x) = x^(-2) = 1/x^2$]
  #v(20pt)
  #only("3-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(
```

          import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-5, 5, 1000)
y = 1 / (x**2)

plt.figure(figsize=(8, 6))
plt.plot(x, y, label='f(x) = 1/x²')
plt.title('Graph von f(x) = x⁻²')
plt.xlabel('x')
plt.ylabel('y')
plt.axhline(y=0, color='k', linestyle='--')
plt.axvline(x=0, color='k', linestyle='--')
plt.ylim(0, 5)
plt.legend()
plt.grid(True)
plt.show()
          ```,
          width: 360pt),
        )
      ]
    ]
  ]

  #only("1")[
    #voiceover("Eine reziproke Funktion wird definiert als f von x gleich eins geteilt durch x hoch n, wobei n eine positive Zahl ist. Diese Form hilft uns, das Verhalten von Potenzfunktionen mit negativen Exponenten zu verstehen.")
  ]
  #only("2")[
    #voiceover("Kehren wir zu unserem Beispiel zurück: f von x gleich x hoch minus 2. Mithilfe der Definition von reziproken Funktionen können wir dies umschreiben als f von x gleich eins geteilt durch x quadrat.")
  ]
  #only("3")[
    #voiceover("Hier ist ein Graph unserer Funktion. Beachte, wie sie gegen unendlich strebt, wenn x sich von beiden Seiten null nähert, und wie sie gegen null strebt, wenn x sehr groß oder sehr klein wird. Diese Form ist charakteristisch für reziproke Funktionen mit geraden Exponenten.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Zusammenfassung: Potenzfunktionen mit negativen Exponenten]
  #v(40pt)
  #only("1-")[🔄 Stellen reziproke Funktionen dar]
  #v(20pt)
  #only("2-")[📊 Graph strebt gegen ∞ nahe x = 0]
  #v(20pt)
  #only("3-")[🧮 $x^(-n) = 1/x^n$, wobei $n > 0$]
  #v(20pt)
  #only("4-")[💡 Wichtig in verschiedenen mathematischen Anwendungen]

  #only("1")[
    #voiceover("Zusammenfassend stellen Potenzfunktionen mit negativen Exponenten reziproke Funktionen dar.")
  ]
  #only("2")[
    #voiceover("Ihre Graphen haben eine charakteristische Form und streben gegen unendlich nahe x gleich null.")
  ]
  #only("3")[
    #voiceover("Wir können x hoch minus n immer umschreiben als eins geteilt durch x hoch n, wobei n positiv ist.")
  ]
  #only("4")[
    #voiceover("Das Verständnis dieser Funktionen ist in vielen Bereichen der Mathematik und Wissenschaft entscheidend, von der Physik bis zur Wirtschaft. Sie helfen uns, Situationen zu modellieren, in denen Größen umgekehrt proportional sind.")
  ]
]