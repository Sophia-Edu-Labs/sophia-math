#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Folgen]
// Der Titel "Folgen" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[Was ist eine Folge? 🤔]
// Die Frage "Was ist eine Folge?" wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[a) Eine zufällige Liste von Zahlen 🎲]
// Antwortmöglichkeit a) wird ab Folie 2 angezeigt
#v(10pt)
#only("3-")[b) Eine geordnete Liste von Zahlen 📜]
// Antwortmöglichkeit b) wird ab Folie 3 angezeigt
#v(10pt)
#only("4-")[c) Eine Menge von nicht zusammenhängenden Zahlen 🧩]
// Antwortmöglichkeit c) wird ab Folie 4 angezeigt
#v(10pt)
#only("5-")[d) Eine einzelne Zahl 1️⃣]
// Antwortmöglichkeit d) wird ab Folie 5 angezeigt
#only("1")[#voiceover("Lass uns dein Wissen über Folgen testen. Was genau ist eine Folge?")]
#only("2")[#voiceover("Ist es eine zufällige Liste von Zahlen,")]
#only("3")[#voiceover("oder ist es eine geordnete Liste von Zahlen,")]
#only("4")[#voiceover("vielleicht eine Menge von nicht zusammenhängenden Zahlen,")]
#only("5")[#voiceover("oder ist es nur eine einzelne Zahl?")]
]#questionDef(
questionText: "Was ist eine Folge?", 
answerOptions: ("Eine zufällige Liste von Zahlen", "Eine geordnete Liste von Zahlen", "Eine Menge von nicht zusammenhängenden Zahlen", "Eine einzelne Zahl"),
correctAnswerIndex: 1,
)