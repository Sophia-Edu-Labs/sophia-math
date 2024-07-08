#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Rückblick: Potenzfunktionen mit negativen Exponenten 📉]
  #v(40pt)
  #only("1-")[- Erinnerung: Potenzfunktionen haben die Form $f(x) = x^b$ 🔢]
  #only("2-")[- Was passiert, wenn $b < 0$ ist? 🤔]
  #only("3-")[- Lass uns ihr Verhalten und ihre Eigenschaften überprüfen 🔍]

  #only("1")[
    #voiceover("Lass uns Potenzfunktionen mit negativen Exponenten überprüfen. Wir beginnen damit, uns daran zu erinnern, dass Potenzfunktionen die allgemeine Form f von x gleich x hoch b haben.")
  ]
  #only("2")[
    #voiceover("Aber was passiert, wenn b kleiner als null ist? Dies ist ein interessanter Fall, der zu einigen einzigartigen Eigenschaften führt.")
  ]
  #only("3")[
    #voiceover("Lass uns das Verhalten und die Eigenschaften dieser Funktionen mit negativen Exponenten überprüfen.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Negative Exponenten und Reziproke 🔄]
  #v(40pt)
  #only("1-")[- Für $b < 0$, $f(x) = x^b = 1/(x^(-b))$ 🔀]
  #v(20pt)
  #only("2-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(
```

            import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(0.1, 5, 1000)
y1 = x**(-2)
y2 = 1/(x**2)

plt.figure(figsize=(10, 6))
plt.plot(x, y1, label='$x^{-2}$', color='blue')
plt.plot(x, y2, label='$1/x^2$', color='red', linestyle='--')
plt.xlabel('x')
plt.ylabel('y')
plt.title('Comparison of $x^{-2}$ and $1/x^2$')
plt.legend()
plt.grid(True)
plt.show()
          ```,
          width: 360pt
        ),
      )
    ]
  ]]

  #only("1")[
    #voiceover("Wenn b negativ ist, können wir unsere Potenzfunktion auf eine spezielle Weise umschreiben. Für jedes negative b ist x hoch b gleich eins geteilt durch x hoch minus b.")
  ]
  #only("2")[
    #voiceover("Lass uns dies mit einem Beispiel visualisieren. Hier haben wir y gleich x hoch minus zwei in Blau und y gleich eins geteilt durch x Quadrat in Rot geplottet. Wie wir sehen können, sind diese Funktionen identisch, was unsere Gleichung bestätigt.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Eigenschaften von Potenzfunktionen mit negativen Exponenten 📊]
  #v(40pt)
  #only("1-")[- Definitionsbereich: Alle reellen Zahlen außer 0 ❌0️⃣]
  #only("2-")[- Wertebereich: Alle positiven reellen Zahlen 📈]
  #only("3-")[- Wenn $x$ zunimmt, nimmt $f(x)$ ab 📉]
  #only("4-")[- Asymptoten: $x = 0$ und $y = 0$ 📊]

  #only("1")[
    #voiceover("Lass uns einige wichtige Eigenschaften von Potenzfunktionen mit negativen Exponenten überprüfen. Erstens umfasst der Definitionsbereich dieser Funktionen alle reellen Zahlen außer null.")
  ]
  #only("2")[
    #voiceover("Der Wertebereich dieser Funktionen besteht aus allen positiven reellen Zahlen.")
  ]
  #only("3")[
    #voiceover("Ein wichtiges Merkmal ist, dass wenn x zunimmt, f von x abnimmt. Dies verleiht diesen Funktionen ihre charakteristische Form.")
  ]
  #only("4")[
    #voiceover("Schließlich haben diese Funktionen zwei Asymptoten: eine bei x gleich null und eine bei y gleich null.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Zusammenfassung: Potenzfunktionen mit negativen Exponenten 🔁]
  #v(40pt)
  #only("1-")[- $f(x) = x^b$ wobei $b < 0$ 📉]
  #only("2-")[- Entspricht reziproken Funktionen: $f(x) = 1/(x^(-b))$ 🔄]
  #only("3-")[- Abnehmende Funktionen mit vertikalen und horizontalen Asymptoten 📊]
  #only("4-")[- Wichtig in verschiedenen Anwendungen (z.B. Physik, Wirtschaft) 🌍]

  #only("1")[
    #voiceover("Lass uns rekapitulieren, was wir über Potenzfunktionen mit negativen Exponenten überprüft haben. Dies sind Funktionen der Form f von x gleich x hoch b, wobei b kleiner als null ist.")
  ]
  #only("2")[
    #voiceover("Wir haben gesehen, dass diese Funktionen reziproken Funktionen entsprechen, wobei f von x gleich eins geteilt durch x hoch minus b ist.")
  ]
  #only("3")[
    #voiceover("Es sind abnehmende Funktionen mit sowohl vertikalen als auch horizontalen Asymptoten, was ihnen ihre charakteristische Form verleiht.")
  ]
  #only("4")[
    #voiceover("Das Verständnis dieser Funktionen ist entscheidend, da sie in verschiedenen realen Anwendungen vorkommen, von der Physik bis zur Wirtschaft.")
  ]
]