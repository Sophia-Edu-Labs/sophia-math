#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Brüche Addieren]
  #v(40pt)
  
  #only("1-")[🍕 Warum müssen wir Brüche addieren?]
  #v(20pt)
  #only("2-")[📚 Zwei Arten der Addition von Brüchen:]
  #v(10pt)
  #only("3-")[   - Gleicher Nenner]
  #v(10pt)
  #only("4-")[   - Unterschiedliche Nenner]

  #only("1")[
    #voiceover("Willkommen zu unserer Lektion über das Addieren von Brüchen! Hast du dich jemals gefragt, warum wir Brüche addieren müssen?")
  ]
  #only("2")[
    #voiceover("Stell dir vor, du teilst Pizzen mit Freunden. Du hast ein Viertel einer Pizza und zwei Viertel einer anderen gegessen. Wie viel Pizza hast du insgesamt gegessen? Hier kommt das Addieren von Brüchen ins Spiel!")
  ]
  #only("3")[
    #voiceover("Beim Addieren von Brüchen gibt es zwei Hauptszenarien. Das erste ist, wenn die Brüche den gleichen Nenner haben.")
  ]
  #only("4")[
    #voiceover("Das zweite Szenario ist, wenn die Brüche unterschiedliche Nenner haben. Lass uns beide Fälle erkunden.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Gleicher Nenner]
  #v(40pt)
  
  #only("1-")[Regel: Zähler addieren, Nenner beibehalten]
  #v(20pt)
  #only("2-")[Beispiel: $1/4 + 2/4$]
  #v(20pt)
  #only("3-")[Lösung: $1/4 + 2/4 = (1+2)/4 = 3/4$]
  #v(20pt)
  #only("4-")[🍕 Visualisierung:]
  #v(10pt)
  #only("5-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(
```

          import matplotlib.pyplot as plt
import numpy as np

fig, (ax1, ax2, ax3) = plt.subplots(1, 3, figsize=(12, 4))

circle1 = plt.Circle((0.5, 0.5), 0.5, fill=False)
ax1.add_artist(circle1)
ax1.pie([1, 3], startangle=90, colors=['red', 'white'])
ax1.set_title('1/4')

circle2 = plt.Circle((0.5, 0.5), 0.5, fill=False)
ax2.add_artist(circle2)
ax2.pie([2, 2], startangle=90, colors=['blue', 'white'])
ax2.set_title('2/4')

circle3 = plt.Circle((0.5, 0.5), 0.5, fill=False)
ax3.add_artist(circle3)
ax3.pie([3, 1], startangle=90, colors=['purple', 'white'])
ax3.set_title('3/4')

plt.tight_layout()
plt.show()
          ```,
          width: 360pt),
        )
      ]
    ]
  ]

  #only("1")[
    #voiceover("Beim Addieren von Brüchen mit gleichem Nenner folgen wir einer einfachen Regel: Zähler addieren und den gleichen Nenner beibehalten.")
  ]
  #only("2")[
    #voiceover("Schauen wir uns ein Beispiel an. Angenommen, wir wollen ein Viertel und zwei Viertel addieren.")
  ]
  #only("3")[
    #voiceover("Wir addieren die Zähler: 1 plus 2 ergibt 3. Wir behalten den Nenner 4. Also ergibt ein Viertel plus zwei Viertel drei Viertel.")
  ]
  #only("4")[
    #voiceover("Lass uns das mit Pizzastücken visualisieren!")
  ]
  #only("5")[
    #voiceover("Hier sehen wir drei Kreise, die Pizzen darstellen. Der erste zeigt ein Viertel in Rot, der zweite zeigt zwei Viertel in Blau, und der dritte zeigt das Ergebnis: drei Viertel in Lila. Diese visuelle Darstellung hilft uns zu verstehen, warum wir einfach die Zähler addieren, wenn die Nenner gleich sind.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Unterschiedliche Nenner]
  #v(40pt)
  
  #only("1-")[Schritt 1: Gemeinsamen Nenner finden]
  #v(20pt)
  #only("2-")[Schritt 2: Brüche umwandeln]
  #v(20pt)
  #only("3-")[Schritt 3: Zähler addieren]
  #v(20pt)
  #only("4-")[Beispiel: $1/2 + 1/3$]
  #v(20pt)
  #only("5-")[$1/2 = 3/6$ und $1/3 = 2/6$]
  #v(20pt)
  #only("6-")[$3/6 + 2/6 = 5/6$]

  #only("1")[
    #voiceover("Beim Addieren von Brüchen mit unterschiedlichen Nennern müssen wir drei Schritte befolgen. Zuerst finden wir einen gemeinsamen Nenner.")
  ]
  #only("2")[
    #voiceover("Als nächstes wandeln wir jeden Bruch in einen gleichwertigen Bruch mit diesem gemeinsamen Nenner um.")
  ]
  #only("3")[
    #voiceover("Schließlich addieren wir die Zähler und behalten den gemeinsamen Nenner.")
  ]
  #only("4")[
    #voiceover("Schauen wir uns ein Beispiel an. Angenommen, wir wollen ein Halb und ein Drittel addieren.")
  ]
  #only("5")[
    #voiceover("Wir finden, dass 6 ein gemeinsamer Nenner ist. Wir wandeln ein Halb in drei Sechstel und ein Drittel in zwei Sechstel um.")
  ]
  #only("6")[
    #voiceover("Jetzt können wir addieren: drei Sechstel plus zwei Sechstel ergibt fünf Sechstel. Und das ist unsere endgültige Antwort!")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Zusammenfassung]
  #v(40pt)
  
  #only("1-")[🧮 Gleicher Nenner: Zähler addieren, Nenner beibehalten]
  #v(20pt)
  #only("2-")[🔢 Unterschiedliche Nenner:]
  #v(10pt)
  #only("3-")[   1. Gemeinsamen Nenner finden]
  #v(10pt)
  #only("4-")[   2. Brüche umwandeln]
  #v(10pt)
  #only("5-")[   3. Zähler addieren, gemeinsamen Nenner beibehalten]

  #only("1")[
    #voiceover("Lass uns zusammenfassen, was wir gelernt haben. Beim Addieren von Brüchen mit gleichem Nenner addieren wir einfach die Zähler und behalten den gleichen Nenner.")
  ]
  #only("2")[
    #voiceover("Für Brüche mit unterschiedlichen Nennern folgen wir drei Schritten.")
  ]
  #only("3")[
    #voiceover("Zuerst finden wir einen gemeinsamen Nenner.")
  ]
  #only("4")[
    #voiceover("Dann wandeln wir jeden Bruch in einen gleichwertigen Bruch mit diesem gemeinsamen Nenner um.")
  ]
  #only("5")[
    #voiceover("Schließlich addieren wir die Zähler und behalten den gemeinsamen Nenner. Mit diesen Regeln bist du jetzt bereit, beliebige Brüche zu addieren, die dir begegnen!")
  ]
]