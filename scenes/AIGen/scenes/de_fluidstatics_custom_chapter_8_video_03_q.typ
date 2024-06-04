#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Städtisches Wasserversorgungssystem]
// Der Titel "Städtisches Wasserversorgungssystem" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[Welcher Faktor beeinflusst den Druck in einem städtischen Wasserversorgungssystem am meisten? 🌊]
// Die Frage wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[a) Temperatur 🌡️]
// Antwortmöglichkeit a) wird ab Folie 2 angezeigt
#v(10pt)
#only("3-")[b) Rohrmaterial 🚰]
// Antwortmöglichkeit b) wird ab Folie 3 angezeigt
#v(10pt)
#only("4-")[c) Höhenunterschied 📈]
// Antwortmöglichkeit c) wird ab Folie 4 angezeigt
#v(10pt)
#only("5-")[d) Wasserhärte 💧]
// Antwortmöglichkeit d) wird ab Folie 5 angezeigt
#only("1")[#voiceover("Lass uns dein Verständnis von städtischen Wasserversorgungssystemen testen. Welcher Faktor beeinflusst den Druck in einem städtischen Wasserversorgungssystem am meisten?")]
#only("2")[#voiceover("Ist es die Temperatur,")]
#only("3")[#voiceover("oder das Rohrmaterial,")]
#only("4")[#voiceover("oder der Höhenunterschied,")]
#only("5")[#voiceover("oder die Wasserhärte?")]
]#questionDef(
questionText: "Welcher Faktor beeinflusst den Druck in einem städtischen Wasserversorgungssystem am meisten?",
answerOptions: ("Temperatur", "Rohrmaterial", "Höhenunterschied", "Wasserhärte"),
correctAnswerIndex: 2,
)