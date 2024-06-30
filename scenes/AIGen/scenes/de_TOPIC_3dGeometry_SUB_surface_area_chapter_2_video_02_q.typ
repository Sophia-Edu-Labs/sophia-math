#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Oberfläche eines Quaders]
  #v(40pt)

  #only("1-")[Wie berechnet man die Oberfläche eines Quaders?]
  #v(40pt)

  #only("2-")[a) Länge × Breite × Höhe]
  #v(10pt)
  #only("3-")[b) 2(Länge × Breite + Länge × Höhe + Breite × Höhe)]
  #v(10pt)
  #only("4-")[c) Länge + Breite + Höhe]
  #v(10pt)
  #only("5-")[d) 6 × (Länge × Breite)]

  #only("1")[#voiceover("Lass uns dein Verständnis der Geometrie von Quadern testen. Wie berechnet man die Oberfläche eines Quaders?")]
  #only("2")[#voiceover("Ist es Länge multipliziert mit Breite multipliziert mit Höhe?")]
  #only("3")[#voiceover("Oder ist es 2 mal die Summe von Länge mal Breite, Länge mal Höhe und Breite mal Höhe?")]
  #only("4")[#voiceover("Könnte es einfach Länge plus Breite plus Höhe sein?")]
  #only("5")[#voiceover("Oder vielleicht 6 mal Länge multipliziert mit Breite?")]
]

//Typ: MC 
#questionDef( 
questionText: "Wie berechnet man die Oberfläche eines Quaders?", 
answerOptions: ("$\text{Länge} \\times \\text{Breite} \\times \\text{Höhe}$", "$2(\text{Länge} \\times \\text{Breite} + \\text{Länge} \\times \\text{Höhe} + \\text{Breite} \\times \\text{Höhe})$", "$\text{Länge} + \\text{Breite} + \\text{Höhe}$", "$6 \\times (\text{Länge} \\times \\text{Breite})$"),
correctAnswerIndex: 1 
)