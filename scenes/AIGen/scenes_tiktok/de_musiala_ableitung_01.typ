#import "../sophiatheme.typ": *
#show: sophia-theme

#slide()[
#only("1")[
  #voiceover("Hi Leute, hier ist Jamal. Mein Atze Florian Wirtz hat mich gebeten, ihm etwas Mathe zu zeigen. Also los, wir schauen uns jetzt mal an, wie man ableitet. Lets go!")
]

Gesucht: Ableitung der Funktion
#v(40pt)

#only("2-")[#text()[$ f(x) = 3x^3 + 2x - 5 $]]
#only("2")[
  #voiceover("Wir wollen die Ableitung der Funktion f von x gleich 3x hoch drei plus 2x minus 5 bestimmen.")
]
]

#slide()[
#only("1")[
  #voiceover("Dafür wenden wir die Summenregel an. Das bedeutet, wir leiten jeden Summanden einzeln ab. Und denkt dran, dass die Subtraktion wie die Addition eines negativen Wertes behandelt wird.")
]

#text(size: 30pt, weight: "bold")[Ansatz]
#v(40pt)
    #only("1-")[- Summenregel]
    #only("2-")[- Potenzregel für jeden Summanden]
]

#slide()[
#text(size: 30pt, weight: "bold")[Lösungsschritte]
#v(40pt)
#only("1-")[$f(x) = 3x^3 + 2x - 5$]
#only("1")[#voiceover("Wir starten mit der Funktion f von x gleich 3x hoch drei plus 2x minus 5.")]
#v(10pt)
#only("2-")[#align(center)[#text(fill:aqua)[⇓ Anwendung der Summenregel]]]
#only("2")[#voiceover("Jetzt wenden wir die Summenregel an und leiten jeden Summanden einzeln ab.")]
#v(10pt)
#only("3-")[$f'(x) = 9x^2$]#only("4-")[$ + 2$]#only("5-")[$ - 0$]
#only("3")[#voiceover("Die Ableitung von 3x hoch drei ist 9x Quadrat.")]
#only("4")[#voiceover("Und die Ableitung von 2x ist einfach 2.")]
#only("5")[#voiceover("Da die Ableitung einer konstanten Zahl wie -5 null ist, fällt dieser Summand weg. Jetzt haben wir alles zusammen: die Ableitung ist 9x Quadrat plus 2. Super gemacht! Ich hoffe, ihr hattet genauso viel Spaß wie ich. Bis zum nächsten Mal!")]
]