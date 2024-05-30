#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Druck und Auftrieb]
// Der Titel "Druck und Auftrieb" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[Ein kleiner Fisch taucht von einer Tiefe von 10 m auf eine Tiefe von 30 m. Was passiert mit seinem Auftrieb?]
// Die Frage wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[a) Er verdoppelt sich ungefähr. 📈]
// Antwortmöglichkeit a) wird ab Folie 2 angezeigt
#v(10pt)
#only("3-")[b) Er verdreifacht sich ungefähr. 📈📈]
// Antwortmöglichkeit b) wird ab Folie 3 angezeigt
#v(10pt)
#only("4-")[c) Er vervierfacht sich ungefähr. 📈📈📈]
// Antwortmöglichkeit c) wird ab Folie 4 angezeigt
#v(10pt) 
#only("5-")[d) Er bleibt ungefähr gleich. 🐟]
// Antwortmöglichkeit d) wird ab Folie 5 angezeigt
#only("1")[#voiceover("Lass uns dein Wissen über Druck und Auftrieb testen. Ein kleiner Fisch taucht von einer Tiefe von 10 Metern auf eine Tiefe von 30 Metern. Was passiert mit seinem Auftrieb?")]
#only("2")[#voiceover("Verdoppelt er sich ungefähr,")]  
#only("3")[#voiceover("oder verdreifacht er sich ungefähr,")]
#only("4")[#voiceover("oder vielleicht vervierfacht er sich ungefähr,")]
#only("5")[#voiceover("oder bleibt er ungefähr gleich?")]
]#questionDef(
questionText: "Ein kleiner Fisch taucht von einer Tiefe von $10 \, \text{m}$ auf eine Tiefe von $30 \, \text{m}$. Was passiert mit seinem Auftrieb?",
answerOptions: ("Er verdoppelt sich ungefähr.", "Er verdreifacht sich ungefähr.", "Er vervierfacht sich ungefähr.", "Er bleibt ungefähr gleich."),
correctAnswerIndex: 3
)