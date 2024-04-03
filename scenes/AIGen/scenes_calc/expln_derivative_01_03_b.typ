#import "../sophiatheme.typ": *
#show: sophia-theme

#slide()[
#only("1")[
  #voiceover("Das ist leider falsch.. Lass uns die Lösung zusammen durchgehen!")
]

Gesucht: Ableitung der Funktion
#v(40pt)

#only("2-")[#text()[$ f(x) = 4ln(x) $]]
#only("2")[
  #voiceover("Wir wollen die Ableitung der Funktion f von x gleich vier mal natürlicher Logarithmus von x bestimmen.")
]
]

#slide()[
#only("1")[
  #voiceover("Wir nutzen die Faktorregel, das heißt, wir können die Konstante 4 einfach vor die Ableitung von natürlichem Logarithmus von x schreiben. Und die Ableitung von natürlichem Logarithmus von x ist eins durch x.")
]

#text(size: 30pt, weight: "bold")[Ansatz]
#v(40pt)
    #only("1-")[- Faktorregel]
    #only("2-")[- Ableitung von $ln(x)$ ist $1/x$]
]

#slide()[
#text(size: 30pt, weight: "bold")[Lösungsschritte]
#v(40pt)
#only("1-")[$f(x) = 4ln(x)$]
#only("1")[#voiceover("Wir beginnen mit der Funktion f von x gleich vier mal natürlicher Logarithmus von x.")]
#v(10pt)
#only("2-")[#align(center)[#text(fill:aqua)[⇓ Anwendung der Faktorregel]]]
#only("2")[#voiceover("Jetzt wenden wir die Faktorregel an. Die Ableitung von vier mal natürlicher Logarithmus von x ist vier mal die Ableitung von natürlichem Logarithmus von x.")]
#v(10pt)
#only("3-")[$f'(x) = 4 dot (ln(x))'$]
#only("3")[#voiceover("Also ist f Strich von x gleich vier mal die Ableitung von natürlichem Logarithmus von x.")]
#v(10pt)
#only("4-")[#align(center)[#text(fill:aqua)[⇓ Ableitung von $ln(x)$ ist $1/x$]]]
#only("4")[#voiceover("Jetzt nutzen wir, dass die Ableitung von natürlichem Logarithmus von x gleich eins durch x ist.")]
#v(10pt)
#only("5-")[$f'(x) = 4/x$]
#only("5")[#voiceover("Also ist f Strich von x gleich vier durch x.")]
]