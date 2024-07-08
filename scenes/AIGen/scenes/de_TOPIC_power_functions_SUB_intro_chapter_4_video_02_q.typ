#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Potenzfunktionen mit negativen Exponenten]
  #v(40pt)

  #only("1-")[Was ist die allgemeine Form einer Potenzfunktion mit einem negativen Exponenten?]
  #v(40pt)

  #only("2-")[a) $f(x) = a x^b$]
  #v(10pt)
  #only("3-")[b) $f(x) = a x^(-b)$]
  #v(10pt)
  #only("4-")[c) $f(x) = a / x^b$]
  #v(10pt)
  #only("5-")[d) $f(x) = a b^x$]

  #only("1")[#voiceover("Lass uns Potenzfunktionen mit negativen Exponenten erkunden. Was ist die allgemeine Form einer solchen Funktion?")]
  #only("2")[#voiceover("Ist es f von x gleich a mal x hoch b,")]
  #only("3")[#voiceover("oder f von x gleich a mal x hoch minus b,")]
  #only("4")[#voiceover("oder vielleicht f von x gleich a geteilt durch x hoch b,")]
  #only("5")[#voiceover("oder zuletzt, ist es f von x gleich a mal b hoch x?")]
]

//Typ: MC 
#questionDef( 
questionText: "Was ist die allgemeine Form einer Potenzfunktion mit einem negativen Exponenten?", 
answerOptions: ("$f(x) = a x^b$", "$f(x) = a x^{-b}$", "$f(x) = a / x^b$", "$f(x) = a b^x$"),
correctAnswerIndex: 1 
)