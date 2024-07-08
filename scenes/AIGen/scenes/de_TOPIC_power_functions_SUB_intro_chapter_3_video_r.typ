#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Überblick: Potenzfunktionen mit negativem $a$ 📉]
  #v(40pt)
  #only("1-")[- Potenzfunktionen: $f(x) = a x^n$ 🔢]
  #only("2-")[- Fokus auf negativen Koeffizienten $a$ 🔍]
  #only("3-")[- Effekt auf die Graphform 🔄]

  #only("1")[
    #voiceover("Lass uns Potenzfunktionen mit einem negativen Koeffizienten a wiederholen. Wir beginnen damit, die allgemeine Form einer Potenzfunktion in Erinnerung zu rufen.")
  ]
  #only("2")[
    #voiceover("In dieser Wiederholung konzentrieren wir uns speziell darauf, was passiert, wenn der Koeffizient a negativ ist.")
  ]
  #only("3")[
    #voiceover("Wir werden sehen, wie dieser negative Koeffizient die Form des Graphen beeinflusst.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Effekt von negativem $a$ 🔄]
  #v(20pt)
  #only("1-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(
```

            import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-2, 2, 100)
y1 = x**2
y2 = -x**2

plt.figure(figsize=(10, 6))
plt.plot(x, y1, label='$f(x) = x^2$', color='blue')
plt.plot(x, y2, label='$g(x) = -x^2$', color='red')
plt.axhline(y=0, color='k', linestyle='--')
plt.axvline(x=0, color='k', linestyle='--')
plt.legend(fontsize=12)
plt.title('Effect of Negative Coefficient', fontsize=16)
plt.xlabel('x', fontsize=14)
plt.ylabel('y', fontsize=14)
plt.grid(True)
plt.show()
          ```,
          width: 360pt
        ),
      )
    ]
  ]]
  #v(20pt)
  #only("2-")[- Negatives $a$ spiegelt den Graphen an der x-Achse 🪞]
  #only("3-")[- Form bleibt gleich, Orientierung ändert sich ↕️]

  #only("1")[
    #voiceover("Lass uns zwei Potenzfunktionen vergleichen: f von x gleich x Quadrat und g von x gleich minus x Quadrat.")
  ]
  #only("2")[
    #voiceover("Wie wir sehen können, spiegelt der negative Koeffizient a den Graphen an der x-Achse.")
  ]
  #only("3")[
    #voiceover("Beachte, dass die Gesamtform der Funktion gleich bleibt, aber ihre Orientierung sich ändert. Die Parabel, die nach oben geöffnet war, öffnet sich jetzt nach unten.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Zusammenfassung: Negatives $a$ in Potenzfunktionen 📝]
  #v(40pt)
  #only("1-")[- Negatives $a$ spiegelt den Graphen an der x-Achse 🪞]
  #only("2-")[- Form bleibt erhalten, Orientierung wird umgekehrt ↕️]
  #only("3-")[- Beispiel: $f(x) = x^2$ vs $g(x) = -x^2$ 📊]
  #only("4-")[- Gilt für alle Potenzfunktionen 🔢]

  #only("1")[
    #voiceover("Zusammenfassend lässt sich sagen, dass ein negativer Koeffizient a in einer Potenzfunktion den Graphen an der x-Achse spiegelt.")
  ]
  #only("2")[
    #voiceover("Diese Spiegelung bewahrt die Gesamtform der Funktion, kehrt aber ihre Orientierung um.")
  ]
  #only("3")[
    #voiceover("Das haben wir mit unserem Beispiel von f von x gleich x Quadrat und g von x gleich minus x Quadrat gesehen.")
  ]
  #only("4")[
    #voiceover("Denke daran, dass dieses Prinzip für alle Potenzfunktionen gilt, unabhängig vom Exponenten.")
  ]
]