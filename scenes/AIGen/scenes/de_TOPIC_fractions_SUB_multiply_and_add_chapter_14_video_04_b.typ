#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
  #text(size: 30pt, weight: "bold")[Brüche Addieren]
  #v(40pt)

  #only("1-")[Übung: Addiere 2/3 und 1/6]
  #v(20pt)

  #only("2-")[Schritt 1: Finde einen gemeinsamen Nenner]
  #v(10pt)
  #only("3-")[$ "LCM"(3,6) = 6 $]
  #v(20pt)

  #only("4-")[Schritt 2: Brüche umwandeln]
  #v(10pt)
  #only("5-")[$ 2/3 = (2 dot 2)/(3 dot 2) = 4/6 $]
  #only("6-")[$ 1/6 $ (hat bereits den Nenner 6)]
  #v(20pt)

  #only("7-")[Schritt 3: Zähler addieren]
  #v(10pt)
  #only("8-")[$ 4/6 + 1/6 = 5/6 $]

  #only("1")[
    #voiceover("Leider ist das nicht korrekt. Lass uns die Lösung Schritt für Schritt durchgehen.")
  ]

  #only("2")[
    #voiceover("Der erste Schritt beim Addieren von Brüchen ist es, einen gemeinsamen Nenner zu finden.")
  ]

  #only("3")[
    #voiceover("Wir müssen das kleinste gemeinsame Vielfache von 3 und 6 finden, das ist 6.")
  ]

  #only("4")[
    #voiceover("Als nächstes wandeln wir jeden Bruch in einen gleichwertigen Bruch mit dem gemeinsamen Nenner um.")
  ]

  #only("5")[
    #voiceover("Für zwei Drittel multiplizieren wir sowohl den Zähler als auch den Nenner mit 2, was uns vier Sechstel ergibt.")
  ]

  #only("6")[
    #voiceover("Ein Sechstel hat bereits den Nenner 6, daher müssen wir es nicht ändern.")
  ]

  #only("7")[
    #voiceover("Jetzt, da wir einen gemeinsamen Nenner haben, können wir die Zähler addieren.")
  ]

  #only("8")[
    #voiceover("Vier Sechstel plus ein Sechstel ergibt fünf Sechstel, was unsere endgültige Antwort ist.")
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

# First fraction: 2/3
ax1.pie([2, 1], labels=['2/3', ''], colors=['#ff9999', '#ffffff'], startangle=90)
ax1.set_title('2/3')

# Second fraction: 1/6
ax2.pie([1, 5], labels=['1/6', ''], colors=['#66b3ff', '#ffffff'], startangle=90)
ax2.set_title('1/6')

# Sum: 5/6
ax3.pie([5, 1], labels=['5/6', ''], colors=['#99ff99', '#ffffff'], startangle=90)
ax3.set_title('5/6 (Sum)')

plt.tight_layout()
plt.show()
          ```,
          width: 360pt),
        )
      ]
    ]
  ]

  #only("1")[
    #voiceover("Lass uns unsere Brüche und ihre Summe visualisieren. Das erste Tortendiagramm stellt zwei Drittel dar, das zweite ein Sechstel und das dritte zeigt ihre Summe, fünf Sechstel.")
  ]

  #only("2")[
    #voiceover("Beachte, dass zwei Drittel ein größerer Anteil ist als ein Sechstel, und wenn wir sie zusammenzählen, erhalten wir fünf Sechstel, was den größten Teil des ganzen Kreises ausmacht.")
  ]

  #only("3")[
    #voiceover("Diese visuelle Darstellung hilft uns zu verstehen, warum fünf Sechstel die richtige Antwort ist. Es ist größer als jeder der ursprünglichen Brüche, aber immer noch weniger als ein Ganzes.")
  ]
]