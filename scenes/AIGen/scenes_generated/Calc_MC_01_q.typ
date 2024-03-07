#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
    #only("1")[
        #voiceover("Welche der folgenden Funktionen hat ein lokales Minimum bei x=0? Also, wo genau liegt das Minimum bei x=0?")
    ]
    #text(size: 30pt, weight: "bold")[
        Minimum bei $x=0$?
    ]
    #v(40pt)
    #only("2-")[$f(x) = x^3$]
    #only("2")[#voiceover("Betrachten wir zunächst die Funktion f von x gleich x hoch drei.")]
    #v(10pt)
    #only("3-")[$f(x) = x^2$]
    #only("3")[#voiceover("Wie sieht es mit der Funktion f von x gleich x quadrat aus?")]
    #v(10pt)
    #only("4-")[$f(x) = -x^2$]
    #only("4")[#voiceover("Oder die Funktion f von x gleich minus x quadrat?")]
    #v(10pt)
    #only("5-")[$f(x) = -x^3$]
    #only("5")[#voiceover("Und schließlich, die Funktion f von x gleich minus x hoch drei, ist das eine Möglichkeit?")]
]


#questionDef(
  questionText: "Welche der Funktionen hat ein Minimum an der Stelle $x=0$?",
  // use latex!
  answerOptions: ("$f(x)=x^3$", "$f(x)=x^2$"),
  correctAnswerIndex: 0,
  llmCheckDetails: (
    fallbackOptionIndex: 1
  ),
)