#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Divergenz ins Unendliche]
// Der Titel "Divergenz ins Unendliche" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[Eine Folge divergiert ins Unendliche, wenn ihre Glieder \_\_\_\_\_.]
// Der Fragestamm wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[a) unbegrenzt abnehmen]
// Antwortmöglichkeit a) wird ab Folie 2 angezeigt
#v(10pt)
#only("3-")[b) oszillieren]
// Antwortmöglichkeit b) wird ab Folie 3 angezeigt
#v(10pt)
#only("4-")[c) unbegrenzt zunehmen]
// Antwortmöglichkeit c) wird ab Folie 4 angezeigt
#v(10pt)
#only("5-")[d) konstant bleiben]
// Antwortmöglichkeit d) wird ab Folie 5 angezeigt
#only("1")[#voiceover("Lass uns dein Verständnis der Divergenz ins Unendliche testen. Eine Folge divergiert ins Unendliche, wenn ihre Glieder...")]
#only("2")[#voiceover("unbegrenzt abnehmen,")]
#only("3")[#voiceover("oszillieren,")]
#only("4")[#voiceover("unbegrenzt zunehmen,")]
#only("5")[#voiceover("oder konstant bleiben?")]
]#questionDef(
questionText: "Eine Folge divergiert ins Unendliche, wenn ihre Glieder \_\_\_\_\_.",
answerOptions: ("unbegrenzt abnehmen", "oszillieren", "unbegrenzt zunehmen", "konstant bleiben"),
correctAnswerIndex: 2,
)