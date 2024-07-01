#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
  #text(size: 30pt, weight: "bold")[Vektorbeschreibung]
  #v(40pt)

  #only("1-")[Welche der folgenden Aussagen beschreibt einen Vektor am besten?]
  #v(20pt)

  #only("2-")[a) Eine einzelne Zahl]
  #v(10pt)
  #only("3-")[b) Eine mehrdimensionale Zahl]
  #v(10pt)
  #only("4-")[c) Ein rechteckiges Zahlenarray]
  #v(10pt)
  #only("5-")[d) Keine der oben genannten]

  #only("1")[
    #voiceover("In unserer Erforschung von Vektoren, lass uns eine grundlegende Frage betrachten: Welche der folgenden Optionen beschreibt einen Vektor am besten?")
  ]

  #only("2")[
    #voiceover("Ist ein Vektor einfach eine einzelne Zahl, wie die Skalarwerte, die wir aus der Grundrechenarten kennen?")
  ]

  #only("3")[
    #voiceover("Oder ist es vielleicht genauer, einen Vektor als eine mehrdimensionale Zahl zu betrachten, die mehrere Komponenten im Raum repräsentiert?")
  ]

  #only("4")[
    #voiceover("Alternativ könnte ein Vektor auch als ein rechteckiges Zahlenarray beschrieben werden, ähnlich wie wir uns eine Matrix vorstellen?")
  ]

  #only("5")[
    #voiceover("Oder ist es möglich, dass keine dieser Beschreibungen das Wesen eines Vektors genau erfasst?")
  ]
]

//Typ: MC 
#questionDef( 
questionText: "Welche der folgenden Aussagen beschreibt einen Vektor am besten?", 
answerOptions: ("Eine einzelne Zahl", "Eine mehrdimensionale Zahl", "Ein rechteckiges Zahlenarray", "Keine der oben genannten"),
correctAnswerIndex: 1 
)