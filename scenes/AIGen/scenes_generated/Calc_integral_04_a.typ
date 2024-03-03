#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[

#only("1")[
  #voiceover("Ganz richtig. Wir  suchen ja eine Stammfunktion")
]
Berechne eine Stammfunktion von
#v(40pt)
#only("2-")[#text()[$ f(x) =1/2 e^((2x-1)) $]]
#only("2")[
  #voiceover("der Funktion f von x ist gleich ein Halb mal e hoch zwei x minus eins")
]
#only("3-")[
die durch den Punkt $(1/2,1)$ läuft
#only("3")[
  #voiceover(", die durch den Punkt ein halb 1 läuft. ...")
]
]
]

#slide()[

#only("1")[
  #voiceover("Dafür berechnen wir zunächst die Stammfunktion,")
]
#only("2")[
  #voiceover("und bestimmen dann die Integrationskonstante C.")
]
#text(size: 30pt, weight: "bold")[Ansatz]
#v(40pt)
    #only("1-")[- Integration mit Kettenregel]
    #only("2-")[- Finde Integrationskonstante C]
]

#slide()[

#text(size: 30pt, weight: "bold")[Integration]
#v(40pt)
#only("1-")[$f(x) = 1/2 e^((2x-1))$]
#only("1")[#voiceover("Wir integrieren die Funktion f von x gleich ein Halb mal e hoch zwei x minus eins.")]
#v(10pt)
#only("2")[#voiceover("Die Stammfunktion der Exponentialfunktion e hoch etwas ist die Exponentialfunktion selbst, geteilt durch die Ableitung des Exponenten.")]
#v(10pt)
#only("3-")[#text(fill:aqua)[⇓ Integration]]
#only("3")[#voiceover("Demnach ergibt die Integration ein viertel mal e hoch (2x-1) plus C als allgemeine Stammfunktion.")]
#v(10pt)
#only("4-")[$F(x) = 1/4 e^((2x-1)) + C$]
#only("4")[#voiceover("Wir erhalten also F von x gleich ein Viertel mal e hoch zwei mal x minus eins plus C.")]
]

#slide()[

#text(size: 30pt, weight: "bold")[Integrationskonstante C]
#v(40pt)
#only("1-")[$F(x) = 1/4 e^((2x-1)) + C$]
#only("1")[#voiceover("Jetzt müssen wir C finden, indem wir den gegebenen Punkt (1/2, 1) einsetzen.")]
#v(10pt)
#only("2-")[#align(center)[⇓ Einsetzen: $F(1/2) = 1$]]
#only("2")[#voiceover("Einsetzen ergibt eins gleich ein Viertel mal e hoch null plus C.")]
#v(10pt)
#only("3-")[$1 = 1/4 e^0 + C$]
#only("3")[#voiceover("Da e hoch 0 gleich 1 ist, vereinfacht sich die Gleichung zu eins gleich ein Viertel plus C.")]
#v(10pt)
#only("4-")[$C = 3/4$]
#only("4")[#voiceover("Das Lösen der Gleichung ergibt, dass C gleich drei Viertel ist.")]
]

#slide()[

#text(size: 30pt, weight: "bold")[Schlussfolgerung]
#v(40pt)
#only("1-")[$F(x) = 1/4 e^((2x-1)) + 3/4$]
#only("1")[#voiceover("Somit ist die gesuchte Stammfunktion F von x gleich ein Viertel mal e hoch zwei mal x minus eins plus drei Viertel.")]
]