#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Kontinuierliche Erweiterbarkeit 📈]
// Der Titel "Kontinuierliche Erweiterbarkeit" mit einem Graph-Emoji wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[Wann ist eine Funktion kontinuierlich erweiterbar?]
// Die Frage wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[a) Wenn sie bereits kontinuierlich ist]
// Antwortmöglichkeit a) wird ab Folie 2 angezeigt
#v(10pt)
#only("3-")[b) Wenn sie durch Definition oder Neudefinition ihres Wertes an bestimmten Punkten kontinuierlich gemacht werden kann]
// Antwortmöglichkeit b) wird ab Folie 3 angezeigt
#v(10pt)
#only("4-")[c) Wenn sie differenzierbar ist]
// Antwortmöglichkeit c) wird ab Folie 4 angezeigt
#v(10pt)
#only("5-")[d) Wenn sie integrierbar ist]
// Antwortmöglichkeit d) wird ab Folie 5 angezeigt
#only("1")[#voiceover("Lass uns dein Wissen über kontinuierliche Erweiterbarkeit testen. Wann ist eine Funktion kontinuierlich erweiterbar?")]
#only("2")[#voiceover("Ist es, wenn die Funktion bereits kontinuierlich ist,")]
#only("3")[#voiceover("oder ist es, wenn die Funktion durch Definition oder Neudefinition ihres Wertes an bestimmten Punkten kontinuierlich gemacht werden kann,")]
#only("4")[#voiceover("oder ist es, wenn die Funktion differenzierbar ist,")]
#only("5")[#voiceover("oder ist es, wenn die Funktion integrierbar ist?")]
]#questionDef(
questionText: "Wann ist eine Funktion kontinuierlich erweiterbar?",
answerOptions: ("Wenn sie bereits kontinuierlich ist", "Wenn sie durch Definition oder Neudefinition ihres Wertes an bestimmten Punkten kontinuierlich gemacht werden kann", "Wenn sie differenzierbar ist", "Wenn sie integrierbar ist"),
correctAnswerIndex: 1,
)