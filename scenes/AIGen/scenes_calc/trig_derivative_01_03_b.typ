#import "../sophiatheme.typ": *
#show: sophia-theme

#slide()[
#only("1")[
  #voiceover("Leider falsch.")
]

Gesucht: Ableitung der Funktion
#v(40pt)

#only("2-")[#text()[$ f(x) = 3 cos(x) $]]
#only("2")[
  #voiceover("Wir wollen die Ableitung der Funktion f von x gleich drei mal Kosinus von x bestimmen.")
]
]

#slide()[
#only("1")[
  #voiceover("Wir nutzen die Faktorregel, das heißt, wir können die Konstante 3 einfach vor die Ableitung von Kosinus von x schreiben. Und die Ableitung von Kosinus ist minus Sinus.")
]

#text(size: 30pt, weight: "bold")[Ansatz]
#v(40pt)
    #only("1-")[- Faktorregel]
    #only("2-")[- Ableitung von Kosinus ist minus Sinus]
]

#slide()[
#text(size: 30pt, weight: "bold")[Lösungsschritte]
#v(40pt)
#only("1-")[$f(x) = 3 cos(x)$]
#only("1")[#voiceover("Wir beginnen mit der Funktion f von x gleich drei mal Kosinus von x.")]
#v(10pt)
#only("2-")[#align(center)[#text(fill:aqua)[⇓ Anwendung der Faktorregel]]]
#only("2")[#voiceover("Jetzt wenden wir die Faktorregel an. Die Ableitung von drei mal Kosinus von x ist drei mal die Ableitung von Kosinus von x.")]
#v(10pt)
#only("3-")[$f'(x) = 3 dot (cos(x))'$]
#only("3")[#voiceover("Also ist f Strich von x gleich drei mal die Ableitung von Kosinus von x.")]
#v(10pt)
#only("4-")[#align(center)[#text(fill:aqua)[⇓ Ableitung von Kosinus ist minus Sinus]]]
#only("4")[#voiceover("Jetzt nutzen wir, dass die Ableitung von Kosinus minus Sinus ist.")]
#v(10pt)
#only("5-")[$f'(x) = -3 sin(x)$]
#only("5")[#voiceover("Also ist f Strich von x gleich minus drei mal Sinus von x.")]
]