#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Eigenschaften von Potenzfunktionen mit negativen Exponenten]
#v(40pt)

#only("1-")[Welche der folgenden Aussagen ist eine Eigenschaft von Potenzfunktionen mit einem negativen Exponenten?]
#v(20pt)

#only("2-")[a) Immer steigend]
#v(10pt)
#only("3-")[b) Symmetrisch zur y-Achse]
#v(10pt)
#only("4-")[c) Stellt eine Kehrwertfunktion dar]
#v(10pt)
#only("5-")[d) Hat einen Maximalpunkt]

#only("1")[#voiceover("Lass uns die Eigenschaften von Potenzfunktionen mit negativen Exponenten erkunden. Welche der folgenden Aussagen beschreibt eine Eigenschaft dieser Funktionen korrekt?")]

#only("2")[#voiceover("Ist es, dass sie immer steigend sind?")]

#only("3")[#voiceover("Oder sind sie symmetrisch zur y-Achse?")]

#only("4")[#voiceover("Vielleicht stellen sie eine Kehrwertfunktion dar?")]

#only("5")[#voiceover("Oder haben sie einen Maximalpunkt?")]
]

//Typ: MC 
#questionDef( 
questionText: "Welche der folgenden Aussagen ist eine Eigenschaft von Potenzfunktionen mit einem negativen Exponenten?", 
answerOptions: ("Immer steigend", "Symmetrisch zur y-Achse", "Stellt eine Kehrwertfunktion dar", "Hat einen Maximalpunkt"),
correctAnswerIndex: 2 
)