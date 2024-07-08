#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Allgemeine Form einer quadratischen Funktion]
#v(40pt)

#only("1-")[Welche der folgenden ist die allgemeine Form einer quadratischen Funktion?]
#v(20pt)

#only("2-")[a) $f(x) = a + b x$]
#v(10pt)
#only("3-")[b) $f(x) = a x^2 + b x + c$]
#v(10pt)
#only("4-")[c) $f(x) = a x^b$]
#v(10pt)
#only("5-")[d) $f(x) = a/x$]

#only("1")[#voiceover("Lass uns dein Wissen über quadratische Funktionen testen. Welche der folgenden Optionen stellt die allgemeine Form einer quadratischen Funktion dar?")]

#only("2")[#voiceover("Ist es f von x gleich a plus b x,")]

#only("3")[#voiceover("oder f von x gleich a x quadrat plus b x plus c,")]

#only("4")[#voiceover("oder vielleicht f von x gleich a x hoch b,")]

#only("5")[#voiceover("oder ist es f von x gleich a geteilt durch x?")]
]

//Typ: MC 
#questionDef( 
questionText: "Was ist die allgemeine Form einer quadratischen Funktion?", 
answerOptions: ("$f(x) = a + bx$", "$f(x) = a x^2 + bx + c$", "$f(x) = ax^b$", "$f(x) = \frac{a}{x}$"),
correctAnswerIndex: 1 
)