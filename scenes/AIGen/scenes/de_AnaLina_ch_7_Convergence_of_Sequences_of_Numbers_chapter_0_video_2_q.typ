#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Sequenzen]
// Der Titel "Sequenzen" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[Was ist eine Sequenz? 🤔]
// Die Frage "Was ist eine Sequenz?" wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[a) Eine zufällige Liste von Zahlen 🎲]
// Antwortmöglichkeit a) wird ab Folie 2 angezeigt
#v(10pt)
#only("3-")[b) Eine geordnete Liste von Zahlen 📜]
// Antwortmöglichkeit b) wird ab Folie 3 angezeigt
#v(10pt)
#only("4-")[c) Eine Menge nicht zusammenhängender Zahlen 🧩]
// Antwortmöglichkeit c) wird ab Folie 4 angezeigt
#v(10pt)
#only("5-")[d) Eine einzelne Zahl 1️⃣]
// Antwortmöglichkeit d) wird ab Folie 5 angezeigt
#only("1")[#voiceover("Testen wir Ihr Wissen über Sequenzen. Was genau ist eine Sequenz?")]
#only("2")[#voiceover("Ist es eine zufällige Liste von Zahlen,")]
#only("3")[#voiceover("oder ist es eine geordnete Liste von Zahlen,")]
#only("4")[#voiceover("vielleicht eine Menge nicht zusammenhängender Zahlen,")]
#only("5")[#voiceover("oder ist es nur eine einzelne Zahl?")]
]#questionDef(
questionText: "Was ist eine Sequenz?", 
answerOptions: ("Eine zufällige Liste von Zahlen", "Eine geordnete Liste von Zahlen", "Eine Menge nicht zusammenhängender Zahlen", "Eine einzelne Zahl"),
correctAnswerIndex: 1,
)