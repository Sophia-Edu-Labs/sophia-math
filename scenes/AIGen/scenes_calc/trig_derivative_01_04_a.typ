#import "../sophiatheme.typ": *
#show: sophia-theme

#slide()[
#only("1")[
  #voiceover("Richtig!!")
]

Gesucht: Ableitung der Funktion
#v(40pt)

#only("2-")[#text()[$ f(x) = sin(x) + 2 cos(x) $]]
#only("2")[
  #voiceover("Wir wollen die Ableitung der Funktion f von x gleich Sinus von x plus zwei mal Kosinus von x bestimmen.")
]
]

#slide()[
#only("1")[
  #voiceover("Wir wenden die Summenregel an und leiten jeden Summanden einzeln ab. Für die Ableitung der einzelnen Summanden nutzen wir die Ableitungsregeln für Sinus und Kosinus sowie die Faktorregel.")
]

#text(size: 30pt, weight: "bold")[Ansatz]
#v(40pt)
    #only("1-")[- Summenregel]
    #only("2-")[- Ableitung von Sinus und Kosinus]
    #only("3-")[- Faktorregel]
]

#slide()[
#text(size: 30pt, weight: "bold")[Lösungsschritte]
#v(40pt)
#only("1-")[$f(x) = sin(x) + 2 cos(x)$]
#only("1")[#voiceover("Wir beginnen mit der Funktion f von x gleich Sinus von x plus zwei mal Kosinus von x.")]
#v(10pt)
#only("2-")[#align(center)[#text(fill:aqua)[⇓ Anwendung der Summenregel]]]
#only("2")[#voiceover("Jetzt wenden wir die Summenregel an und leiten jeden Summanden einzeln ab.")]
#v(10pt)
#only("3-")[$f'(x) = (sin(x))'$]#only("4-")[$ + (2 cos(x))'$]
#only("3")[#voiceover("Die Ableitung von Sinus von x ist ...")]
#only("4")[#voiceover("... plus die Ableitung von zwei mal Kosinus von x.")]
#v(10pt)
#only("5-")[#align(center)[#text(fill:aqua)[⇓ Ableitung von Sinus und Kosinus, Faktorregel]]]
#only("5")[#voiceover("Jetzt nutzen wir die Ableitungsregeln für Sinus und Kosinus sowie die Faktorregel.")]
#v(10pt)
#only("6-")[$f'(x) = cos(x) - 2 sin(x)$]
#only("6")[#voiceover("Also ist f Strich von x gleich Kosinus von x minus zwei mal Sinus von x.")]
]