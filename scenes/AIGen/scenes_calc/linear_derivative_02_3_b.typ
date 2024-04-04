#import "../sophiatheme.typ": *
#show: sophia-theme

#slide()[
#only("1")[
  #voiceover("Das ist leider falsch. Lass uns die Lösung zusammen durchgehen!")
]

Gesucht: Ableitung der Funktion
#v(40pt)

#only("2-")[#text()[$ f(x) = x^(-2) - x $]]
#only("2")[
  #voiceover("Wir wollen die Ableitung der Funktion f von x gleich x hoch minus zwei minus x bestimmen.")
]
]

#slide()[
#only("1")[
  #voiceover("Wie immer wenden wir die Summenregel an und leiten jeden Summanden einzeln ab.")
]
#only("1")[
  #voiceover("und für die einzelnen Summanden, benutzen wir die Potenzregel.")
]

#text(size: 30pt, weight: "bold")[Ansatz]
#v(40pt)
    #only("1-")[- Summenregel]
    #only("2-")[- Potenzregel für jeden Summanden]
]

#slide()[
#text(size: 30pt, weight: "bold")[Lösungsschritte]
#v(40pt)
#only("1-")[$f(x) = x^(-2) - x$]
#only("1")[#voiceover("Wir beginnen mit der Funktion f von x gleich x hoch minus zwei minus x.")]
#v(10pt)
#only("2-")[#align(center)[#text(fill:aqua)[⇓ Anwendung der Summenregel]]]
#only("2")[#voiceover("Jetzt wenden wir die Summenregel an und leiten jeden Summanden einzeln ab.")]
#v(10pt)
#only("3-")[$f'(x) = -2x^(-3)$]#only("4-")[$ - 1$]
#only("3")[#voiceover("Die Ableitung von x hoch minus zwei ist minus zwei mal x hoch minus drei.")]
#only("4")[#voiceover("Und die Ableitung von minus x ist minus eins. Addieren wir diese beiden Terme, dann erhalten wir die gesuchte Ableitung.")]
]