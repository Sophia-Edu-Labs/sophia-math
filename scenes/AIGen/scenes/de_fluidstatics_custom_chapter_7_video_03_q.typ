#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Materialien für schwimmende Plattformen]
// Der Titel "Materialien für schwimmende Plattformen" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[Welches Material ist am besten für den Bau einer schwimmenden Plattform geeignet? 🏗️]
// Die Frage wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[a) Holz 🌳]
// Antwortmöglichkeit a) wird ab Folie 2 angezeigt
#v(10pt)
#only("3-")[b) Beton 🧱]
// Antwortmöglichkeit b) wird ab Folie 3 angezeigt
#v(10pt)
#only("4-")[c) Stahl 🔧]
// Antwortmöglichkeit c) wird ab Folie 4 angezeigt
#v(10pt)
#only("5-")[d) Schaum 🧽]
// Antwortmöglichkeit d) wird ab Folie 5 angezeigt
#only("1")[#voiceover("Lass uns dein Wissen über Materialien für schwimmende Plattformen testen. Welches Material ist am besten für den Bau einer schwimmenden Plattform geeignet?")]
#only("2")[#voiceover("Ist es Holz,")]
#only("3")[#voiceover("oder Beton,")]
#only("4")[#voiceover("oder vielleicht Stahl,")]
#only("5")[#voiceover("oder ist es Schaum?")]
]#questionDef(
questionText: "Welches Material ist am besten für den Bau einer schwimmenden Plattform geeignet?",
answerOptions: ("Holz", "Beton", "Stahl", "Schaum"),
correctAnswerIndex: 3,
)