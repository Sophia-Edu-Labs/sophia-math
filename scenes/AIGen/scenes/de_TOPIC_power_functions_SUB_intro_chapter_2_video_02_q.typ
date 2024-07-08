#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Gerade Potenzfunktionen]
#v(40pt)

#only("1-")[Welche der folgenden ist eine gerade Potenzfunktion?]
#v(20pt)

#only("2-")[a) $f(x) = x^3$]
#v(10pt)
#only("3-")[b) $f(x) = x^2$]
#v(10pt)
#only("4-")[c) $f(x) = x^1$]
#v(10pt)
#only("5-")[d) $f(x) = x^(-1)$]

#only("1")[#voiceover("Lass uns dein Verständnis von geraden Potenzfunktionen testen. Welche der folgenden Funktionen ist eine gerade Potenzfunktion?")]
#only("2")[#voiceover("Ist es f von x gleich x hoch drei,")]
#only("3")[#voiceover("oder f von x gleich x hoch zwei,")]
#only("4")[#voiceover("oder f von x gleich x hoch eins,")]
#only("5")[#voiceover("oder f von x gleich x hoch minus eins?")]
]

//Typ: MC 
#questionDef( 
questionText: "Welche der folgenden ist eine gerade Potenzfunktion?", 
answerOptions: ("$f(x) = x^3$", "$f(x) = x^2$", "$f(x) = x^1$", "$f(x) = x^{-1}$"),
correctAnswerIndex: 1 
)