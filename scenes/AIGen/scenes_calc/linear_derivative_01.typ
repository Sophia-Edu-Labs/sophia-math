#import "../sophiatheme.typ": *

//apply theme (and default setup)
#show: sophia-theme
  
#slide()[

#only("1")[
  #voiceover("Schauen wir uns an, wie man die Ableitung von Funktionen wie x hoch drei oder x hoch vier berechnet.")
]
#text(size: 30pt, weight: "bold")[Ableitung von Potenzfunktionen ]

#v(40pt)
#only("2-")[#text()[- Beispiele: $ f(x) = x^3, x^4, ...$]]
#only("2")[
  #voiceover("also Funktionen der Form f von x gleich x hoch n an, wobei n eine natürliche Zahl ist, wie zum Beispiel drei oder vier.")
]

#only("3")[
  #voiceover("Um die Ableitung solcher Funktionen zu finden, nutzen wir eine einfache Regel: die Potenzregel.")
]
#v(40pt)
#text(size: 30pt, weight: "bold")[Potenzregel]
#v(20pt)
    #only("3-")[Für $f(x) = x^n$ gilt:]
    #only("4-")[$ f'(x) = n dot x^(n-1) $]
#only("4")[
  #voiceover("Die Potenzregel besagt: Wenn f von x gleich x hoch n ist, dann ist die Ableitung f Strich von x gleich n mal x hoch n minus eins.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel]
#v(40pt)
#only("1-")[$f(x) = x^3$]
#only("1")[#voiceover("Schauen wir uns ein erstes Beispiel an. Gegeben sei f von x gleich x hoch drei.")]
#v(10pt)
#only("2-")[#align(center)[#text(fill:aqua)[⇓ Potenzregel anwenden]]]
#only("2")[#voiceover("Um die Ableitung zu bestimmen, wenden wir einfach die Potenzregel an.")]
#v(10pt)
#only("3-")[$f'(x) = 3 dot x^2$]
#only("3")[#voiceover("Der Exponent 3 kommt als Faktor vor das x und der Exponent von x wird um 1 reduziert. Wir erhalten also f Strich von x gleich drei mal x Quadrat als Ableitung.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel 2]
#v(40pt)
#only("1-")[$g(x) = x^4$]
#only("1")[#voiceover("Schauen wir uns noch ein zweites Beispiel an. Gegeben sei g von x gleich x hoch vier.")]
#v(10pt)
#only("2-")[#align(center)[#text(fill:aqua)[⇓ Potenzregel anwenden]]]
#only("2")[#voiceover("Auch hier wenden wir wieder die Potenzregel an.")]
#v(10pt)
#only("3-")[$g'(x) = 4 dot x^3$] 
#only("3")[#voiceover("Der Exponent 4 kommt als Faktor vor das x und der Exponent von x wird um 1 reduziert. Wir erhalten also g Strich von x gleich vier mal x hoch drei als Ableitung.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Potenzregel: $f(x) = x^n$ $->f'(x) = n dot x^(n-1)$]
#v(20pt)
#only("2-")[- Exponent als Faktor vor x]
#v(20pt)
#only("3-")[- Reduziere Exponent um 1]
#only("1")[
#voiceover("Fassen wir nochmal zusammen: Um die Ableitung einer Potenzfunktion zu bestimmen, wenden wir die Potenzregel an.")
]
#only("2")[
#voiceover("Der Exponent kommt als Faktor vor das x...")
]  
#only("3")[
#voiceover("...und der Exponent von x wird um 1 reduziert. Das wars auch schon! Ich hoffe, das Video hat euch geholfen, die Ableitung von Potenzfunktionen besser zu verstehen. Bis zum nächsten Mal!")
]
]