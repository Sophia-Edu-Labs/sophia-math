#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Druck und Tiefe]
// Der Titel "Druck und Tiefe" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[🐠 Ein kleiner Fisch taucht von einer Tiefe von 10 m auf eine Tiefe von 30 m.]
// Die Aussage über den tauchenden Fisch wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[Was passiert mit dem Druck? 🤔]
// Die Frage wird ab Folie 2 angezeigt
#v(40pt)
#only("3-")[a) Er verdoppelt sich ungefähr. 2️⃣]
// Antwortmöglichkeit a) wird ab Folie 3 angezeigt
#v(10pt)
#only("4-")[b) Er verdreifacht sich ungefähr. 3️⃣]
// Antwortmöglichkeit b) wird ab Folie 4 angezeigt
#v(10pt)
#only("5-")[c) Er vervierfacht sich ungefähr. 4️⃣]
// Antwortmöglichkeit c) wird ab Folie 5 angezeigt
#v(10pt)
#only("6-")[d) Er bleibt ungefähr gleich. 🤷]
// Antwortmöglichkeit d) wird ab Folie 6 angezeigt
#only("1")[#voiceover("Ein kleiner Fisch taucht von einer Tiefe von 10 Metern auf eine Tiefe von 30 Metern.")]
#only("2")[#voiceover("Was passiert mit dem Druck, den der Fisch erfährt?")]
#only("3")[#voiceover("Verdoppelt er sich ungefähr,")]
#only("4")[#voiceover("oder verdreifacht er sich ungefähr,")]
#only("5")[#voiceover("oder vielleicht vervierfacht er sich ungefähr,")]
#only("6")[#voiceover("oder bleibt er ungefähr gleich?")]
]#questionDef(
questionText: "Ein kleiner Fisch taucht von einer Tiefe von $10$ m auf eine Tiefe von $30$ m. Was passiert mit dem Druck?",
answerOptions: ("Er verdoppelt sich ungefähr.", "Er verdreifacht sich ungefähr.", "Er vervierfacht sich ungefähr.", "Er bleibt ungefähr gleich."),
correctAnswerIndex: 1,
)