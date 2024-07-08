#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Eigenschaften von Funktionen gerader Potenz]
#v(40pt)

#only("1-")[Welche der folgenden Aussagen ist eine Eigenschaft von Funktionen gerader Potenz?]
#v(20pt)

#only("2-")[a) Symmetrisch zum Ursprung]
#v(10pt)
#only("3-")[b) Symmetrisch zur y-Achse]
#v(10pt)
#only("4-")[c) Immer steigend]
#v(10pt)
#only("5-")[d) Immer fallend]

#only("1")[#voiceover("Lass uns dein Wissen über Funktionen gerader Potenz testen. Welche der folgenden Aussagen ist eine Eigenschaft von Funktionen gerader Potenz?")]
#only("2")[#voiceover("Ist es, dass sie symmetrisch zum Ursprung sind,")]
#only("3")[#voiceover("oder sind sie symmetrisch zur y-Achse,")]
#only("4")[#voiceover("oder sind sie immer steigend,")]
#only("5")[#voiceover("oder sind sie immer fallend?")]
]

//Typ: MC 
#questionDef( 
questionText: "Welche der folgenden Aussagen ist eine Eigenschaft von Funktionen gerader Potenz?", 
answerOptions: ("Symmetrisch zum Ursprung", "Symmetrisch zur $y$-Achse", "Immer steigend", "Immer fallend"),
correctAnswerIndex: 1 
)