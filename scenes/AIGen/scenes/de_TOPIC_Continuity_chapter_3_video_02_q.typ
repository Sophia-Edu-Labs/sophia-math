#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Stetigkeit]
// Der Titel "Stetigkeit" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[Wann ist eine Funktion an einem Punkt stetig?]
// Die Frage wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[a) Wenn der Grenzwert der Funktion, wenn $x$ sich dem Punkt nähert, gleich dem Funktionswert an diesem Punkt ist]
// Antwortmöglichkeit a) wird ab Folie 2 angezeigt
#v(10pt)
#only("3-")[b) Wenn die Funktion an diesem Punkt differenzierbar ist]
// Antwortmöglichkeit b) wird ab Folie 3 angezeigt
#v(10pt)
#only("4-")[c) Wenn die Funktion an diesem Punkt integrierbar ist]
// Antwortmöglichkeit c) wird ab Folie 4 angezeigt
#v(10pt)
#only("5-")[d) Wenn die Funktion an diesem Punkt null ist]
// Antwortmöglichkeit d) wird ab Folie 5 angezeigt
#only("1")[#voiceover("Lass uns dein Verständnis der Stetigkeit testen. Wann ist eine Funktion an einem Punkt stetig?")]
#only("2")[#voiceover("Ist es, wenn der Grenzwert der Funktion, wenn x sich dem Punkt nähert, gleich dem Funktionswert an diesem Punkt ist,")]
#only("3")[#voiceover("oder wenn die Funktion an diesem Punkt differenzierbar ist,")]
#only("4")[#voiceover("oder wenn die Funktion an diesem Punkt integrierbar ist,")]
#only("5")[#voiceover("oder wenn die Funktion an diesem Punkt null ist?")]
]#questionDef(
questionText: "Wann ist eine Funktion an einem Punkt stetig?",
answerOptions: ("Wenn der Grenzwert der Funktion, wenn $x$ sich dem Punkt nähert, gleich dem Funktionswert an diesem Punkt ist", "Wenn die Funktion an diesem Punkt differenzierbar ist", "Wenn die Funktion an diesem Punkt integrierbar ist", "Wenn die Funktion an diesem Punkt null ist"),
correctAnswerIndex: 0,
)