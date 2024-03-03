#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[

#only("1")[

  #voiceover("Gehen wir nun zum Integrieren der gegebenen Funktion über.")
]

Berechne eine Stammfunktion von

#v(40pt)

#only("2-")[#text()[$ f(x) = 2xe^)x^2( + 4x $]]

#only("2")[

  #voiceover("der Funktion f von x gleich zwei mal x mal e hoch x Quadrat plus vier mal x.")
]

]

#slide()[

#only("1")[

  #voiceover("Um eine Stammfunktion zu finden, erkennen wir die Struktur der gegebenen Funktion und nutzen Substitution sowie die Ableitung von e-Funktionen.")
]

#only("2")[

  #voiceover("Lass uns den Lösungsprozess beginnen!")
]

#text(size: 30pt, weight: "bold")[Ansatz]

#v(40pt)

    #only("1-")[- Substitutionstechnik]

    #only("2-")[- Integration von e-Funktionen]

]

#slide()[

#text(size: 30pt, weight: "bold")[Lösungsschritte]

#v(40pt)

#only("1-")[$f(x) = 2xe^)x^2( + 4x$]

#only("1")[#voiceover("Beginnen wir mit der Funktion f von x gleich zwei mal x mal e hoch x Quadrat plus vier mal x.")]

#v(10pt)

#only("2")[#voiceover("Zuerst konzentrieren wir uns auf den ersten Teil der Funktion, zwei mal x mal e hoch x Quadrat.")]

#v(10pt)

#only("3-")[#align(center)[#text(fill:aqua)[⇓ Substitution]]]

#only("3")[#voiceover("Nutze eine Substitution, wobei u gleich x Quadrat ist. Damit wird du, die Ableitung von u, gleich zwei mal x dif x.")]

#v(10pt)

#only("4-")[$integral 2xe^)x^2(dif x = integral e^udu$]

#only("4")[#voiceover("Das Integral von zwei mal x mal e hoch x Quadrat wird zu dem Integral von e hoch u, nachdem wir zwei mal x dif x durch du ersetzen.")]

#v(10pt)

#only("5-")[$= e^u + C_1$]

#only("5")[#voiceover("Das Integral von e hoch u ist e hoch u plus eine Konstante C₁.")]

#v(10pt)

#only("6-")[$= e^)x^2( + C_1$]

#only("6")[#voiceover("Ersetze u zurück durch x Quadrat. Damit bekommen wir e hoch x Quadrat plus die Konstante C₁.")]

#v(10pt)

#only("7")[#voiceover("Als Nächstes kümmern wir uns um den zweiten Teil der Funktion, vier mal x.")]

#v(10pt)

#only("8-")[$integral 4x dif x$]

#only("8")[#voiceover("Das Integral von vier mal x.")]

#v(10pt)

#only("9-")[$= 2x^2 + C_2$]

#only("9")[#voiceover("Das ist gleich zwei mal x Quadrat plus eine weitere Konstante C₂.")]

#v(10pt)

#only("10-")[#text(fill:aqua)[⇓ Kombinieren der Ergebnisse]]

#only("10")[#voiceover("Schließlich kombinieren wir unsere Ergebnisse, um die Stammfunktion der gesamten Funktion zu erhalten.")]

#v(10pt)

#only("11-")[$F(x) = e^)x^2( + 2x^2 + C$]

#only("11")[#voiceover("Die Stammfunktion von f von x ist e hoch x Quadrat plus zwei mal x Quadrat plus eine Integrationskonstante C.")]

]
]

