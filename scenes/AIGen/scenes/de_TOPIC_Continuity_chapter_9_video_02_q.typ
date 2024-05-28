#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Reale Anwendungen der Stetigkeit]
#v(40pt)
#only("1-")[Welche der folgenden ist eine reale Anwendung der Stetigkeit? 🌍]
#v(40pt)
#only("2-")[a) Sanfte Übergänge im Ingenieurwesen 🏗️]
#v(10pt)
#only("3-")[b) Vorhersage physikalischer Phänomene 🔮]
#v(10pt)
#only("4-")[c) Sicherstellung der Stabilität in Systemen 📈]
#v(10pt)
#only("5-")[d) Alle oben genannten 🌟]

#only("1")[#voiceover("Lass uns dein Wissen über reale Anwendungen der Stetigkeit testen.")]
#only("2")[#voiceover("Sind es sanfte Übergänge im Ingenieurwesen,")]
#only("3")[#voiceover("oder die Vorhersage physikalischer Phänomene,")]
#only("4")[#voiceover("oder die Sicherstellung der Stabilität in Systemen,")]
#only("5")[#voiceover("oder sind alle oben genannten reale Anwendungen der Stetigkeit?")]
]#questionDef(
questionText: "Welche der folgenden ist eine reale Anwendung der Stetigkeit?",
answerOptions: ("Sanfte Übergänge im Ingenieurwesen", "Vorhersage physikalischer Phänomene", "Sicherstellung der Stabilität in Systemen", "Alle oben genannten"),
correctAnswerIndex: 3
)