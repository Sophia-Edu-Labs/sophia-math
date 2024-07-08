#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Allgemeine Form einer kubischen Funktion]
  #v(40pt)

  #only("1-")[Welche der folgenden Optionen ist die allgemeine Form einer kubischen Funktion?]
  #v(20pt)

  #only("2-")[a) $f(x) = a x^3 + b x + c$]
  #v(10pt)
  #only("3-")[b) $f(x) = a x^3 + b x^2 + c x + d$]
  #v(10pt)
  #only("4-")[c) $f(x) = a x^3 + b$]
  #v(10pt)
  #only("5-")[d) $f(x) = a/x^3$]

  #only("1")[#voiceover("Lass uns Dein Wissen über kubische Funktionen testen. Welche der folgenden Optionen stellt die allgemeine Form einer kubischen Funktion dar?")]
  #only("2")[#voiceover("Ist es f von x gleich a mal x hoch drei plus b mal x plus c?")]
  #only("3")[#voiceover("Oder ist es f von x gleich a mal x hoch drei plus b mal x quadrat plus c mal x plus d?")]
  #only("4")[#voiceover("Vielleicht ist es f von x gleich a mal x hoch drei plus b?")]
  #only("5")[#voiceover("Oder könnte es f von x gleich a geteilt durch x hoch drei sein?")]
]

//Typ: MC 
#questionDef( 
questionText: "Was ist die allgemeine Form einer kubischen Funktion?", 
answerOptions: ("$f(x) = ax^3 + bx + c$", "$f(x) = ax^3 + bx^2 + cx + d$", "$f(x) = ax^3 + b$", "$f(x) = \frac{a}{x^3}$"),
correctAnswerIndex: 1 
)