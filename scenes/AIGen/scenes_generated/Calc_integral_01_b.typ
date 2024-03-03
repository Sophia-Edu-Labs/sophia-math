#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
  #voiceover("Nicht ganz richtig.... Lass uns die Lösung gemeinsam Schritt für Schritt durchgehen. Wir suchen die Stammfunktion")
  Betrachte die Funktion
  #v(40pt)
  #only("1-")[$ f(x) = 3 e^((-2x)) + 1/(2x) $]
  #only("1")[  
    #voiceover("der Funktion f von x ist gleich dreimal e hoch minus zwei mal x plus eins geteilt durch zwei mal x.")
  ]
]
#slide()[
  #only("1")[
    #voiceover("Um die Stammfunktion zu finden, wenden wir die Linearität des Integrals an,")
  ]
  #text(size: 30pt, weight: "bold")[Ansatz]
  #v(40pt)
      #only("1-")[- Linearität anwenden]
      #only("2-")[- Summanden einzeln integrieren]
      #only("1")[
    #voiceover("und integrieren die beiden Summanden einzeln. ...")
  ]
]

#slide()[
  #text(size: 30pt, weight: "bold")[Integration des ersten Teils]
  #v(40pt)
  #only("1-")[$ integral 3e^((-2x)) \, dif x $]
  #only("1")[#voiceover("Wir beginnen mit der Integration des ersten Teils, dreimal e hoch minus zwei x.")]
  #v(10pt)
  #only("2")[#voiceover("Die Formel für das Integral von e hoch ax ist e hoch ax geteilt durch a. In unserem Fall ist a gleich minus zwei.")]
  #v(10pt)
  #only("3-")[$ F_1(x) = 3/(-2) e^((-2x)) $]
  #only("3")[#voiceover("Also ist die Stammfunktion des ersten Summandens gleich minus drei halbe e hoch minus zwei mal x.")]
]

#slide()[
  #text(size: 30pt, weight: "bold")[Integration des zweiten Teils]
  #v(40pt)
  #only("1-")[$ integral 1/(2x) \, dif x $]
  #only("1")[#voiceover("Jetzt integrieren wir den zweiten Teil, eins geteilt durch zwei  x.")]
  #v(10pt)
  #only("2")[#voiceover("Das Integral von eins geteilt durch x ist der natürliche Logarithmus von dem Absolutwert von x. Wir müssen also den Faktor einhalb berücksichtigen.")]
  #v(10pt)
  #only("3-")[$ F_2(x) = 1/2 ln|x| $]
  #only("3")[#voiceover("Als Ergebnis erhalten wir dann ein halb mal den natürlichen Logarithmus von dem Absolutwert von x.")]
]

#slide()[
  #text(size: 30pt, weight: "bold")[Kombination der Lösungen]
  #v(40pt)
  #only("1-")[$ F(x) = F_1(x) + F_2(x) + C $]
  #only("1")[#voiceover("Um die gesamte Stammfunktion zu erhalten, kombinieren wir die beiden zuvor gefundenen Stammfunktionen und fügen die Integrationskonstante C hinzu.")]
  #v(10pt)
  #only("2-")[$ F(x) = 3/(-2) e^((-2x)) + 1/2 ln|x| + C $]
  #only("2")[#voiceover("Das Ergebnis ist also F von x gleich minus drei halbe e hoch minus zwei mal x plus ein halb mal der natürliche Logarithmus von dem Absolutwert von x plus eine Konstante C.")]
]