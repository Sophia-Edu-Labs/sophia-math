#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Quadratische Gleichungen erkennen]
#v(40pt)

#only("1-")[Welche der folgenden ist eine quadratische Gleichung?]
#v(20pt)

#only("2-")[a) $2x + 3 = 0$]
#v(10pt)
#only("3-")[b) $x^2 + 5x + 6 = 0$]
#v(10pt)
#only("4-")[c) $3x^3 - 2x^2 + 1 = 0$]

#only("1")[#voiceover("Lass uns dein Verständnis von quadratischen Gleichungen testen. Wir werden uns drei verschiedene Gleichungen ansehen, und deine Aufgabe ist es, die quadratische Gleichung zu identifizieren.")]

#only("2")[#voiceover("Zuerst haben wir die Gleichung 2x plus 3 gleich 0.")]

#only("3")[#voiceover("Als nächstes haben wir x quadrat plus 5x plus 6 gleich 0.")]

#only("4")[#voiceover("Und schließlich haben wir 3x hoch 3 minus 2x quadrat plus 1 gleich 0.")]
]

//Typ: MC 
#questionDef( 
questionText: "Welche der folgenden ist eine quadratische Gleichung?", 
answerOptions: ("$2x + 3 = 0$", "$x^2 + 5x + 6 = 0$", "$3x^3 - 2x^2 + 1 = 0$"),
correctAnswerIndex: 1 
)