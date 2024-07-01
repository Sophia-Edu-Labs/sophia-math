#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
  #text(size: 30pt, weight: "bold")[Matrix-Identifikation]
  #v(40pt)

  #only("1-")[Welche der folgenden Optionen ist #text(weight: "bold")[keine] Matrix?]
  #v(20pt)

  #only("2-")[a) #text(font: "monospace")[[[1, 2], [3, 4]]] 📊]
  #v(10pt)
  #only("3-")[b) #text(font: "monospace")[[[5, 6, 7], [8, 9, 10]]] 📈]
  #v(10pt)
  #only("4-")[c) 5 🔢]
  #v(10pt)
  #only("5-")[d) #text(font: "monospace")[[[2]]] 🔳]

  #only("1")[
    #voiceover("Lass uns Dein Verständnis von Matrizen testen. Welche der folgenden Optionen ist keine Matrix?")
  ]
  #only("2")[
    #voiceover("Ist es Option a, eine Zwei-mal-Zwei-Matrix mit den Elementen 1, 2, 3 und 4?")
  ]
  #only("3")[
    #voiceover("Oder ist es Option b, eine Zwei-mal-Drei-Matrix mit den Elementen 5, 6, 7 in der ersten Reihe und 8, 9, 10 in der zweiten Reihe?")
  ]
  #only("4")[
    #voiceover("Könnte es Option c sein, die einfach die Zahl 5 ist?")
  ]
  #only("5")[
    #voiceover("Oder zuletzt, ist es Option d, eine Eins-mal-Eins-Matrix, die nur die Zahl 2 enthält?")
  ]
]

//Typ: MC 
#questionDef( 
questionText: "Welche der folgenden Optionen ist keine Matrix?", 
answerOptions: ("$\begin{bmatrix} 1 & 2 \\\\ 3 & 4 \end{bmatrix}$", "$\begin{bmatrix} 5 & 6 & 7 \\\\ 8 & 9 & 10 \end{bmatrix}$", "$5$", "$\begin{bmatrix} 2 \end{bmatrix}$"),
correctAnswerIndex: 2 
)