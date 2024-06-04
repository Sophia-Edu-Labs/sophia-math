#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Umweltbedenken]
// Der Titel "Umweltbedenken" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[Was ist ein häufiges Umweltproblem im Zusammenhang mit Wasserkraftwerken? 🌿]
// Die Frage wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[a) Luftverschmutzung 🌫️]
// Antwortmöglichkeit a) wird ab Folie 2 angezeigt
#v(10pt)
#only("3-")[b) Lärmbelästigung 🔊]
// Antwortmöglichkeit b) wird ab Folie 3 angezeigt
#v(10pt)  
#only("4-")[c) Lebensraumstörung 🐟]
// Antwortmöglichkeit c) wird ab Folie 4 angezeigt
#v(10pt)
#only("5-")[d) Treibhausgasemissionen 🏭]
// Antwortmöglichkeit d) wird ab Folie 5 angezeigt
#only("1")[#voiceover("Lass uns die Umweltbelastung durch Wasserkraftwerke betrachten. Was ist ein häufiges Umweltproblem im Zusammenhang mit diesen Anlagen?")]
#only("2")[#voiceover("Ist es die Luftverschmutzung,")]
#only("3")[#voiceover("oder die Lärmbelästigung,")]
#only("4")[#voiceover("oder vielleicht die Lebensraumstörung,")]  
#only("5")[#voiceover("oder könnten es die Treibhausgasemissionen sein?")]
]#questionDef(
questionText: "Was ist ein häufiges Umweltproblem im Zusammenhang mit Wasserkraftwerken?",
answerOptions: ("Luftverschmutzung", "Lärmbelästigung", "Lebensraumstörung", "Treibhausgasemissionen"),
correctAnswerIndex: 2
)