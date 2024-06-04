#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Kraft auf Dammabschnitte]
// Der Titel "Kraft auf Dammabschnitte" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[Wie verhält sich die Kraft auf andere Abschnitte gleicher Größe, aber unterschiedlicher Position?]
// Die Frage wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[a) Größer]
// Antwortmöglichkeit a) wird ab Folie 2 angezeigt
#v(10pt)
#only("3-")[b) Kleiner]
// Antwortmöglichkeit b) wird ab Folie 3 angezeigt
#v(10pt)
#only("4-")[c) Gleich]
// Antwortmöglichkeit c) wird ab Folie 4 angezeigt
#v(10pt)
#only("5-")[d) Kann nicht bestimmt werden]
// Antwortmöglichkeit d) wird ab Folie 5 angezeigt
#only("1")[#voiceover("Betrachten wir eine Frage zu den Kräften, die auf einen Damm wirken. Wie verhält sich die Kraft auf andere Abschnitte des Damms, die die gleiche Größe haben, aber an unterschiedlichen Positionen liegen?")]
#only("2")[#voiceover("Ist die Kraft auf tiefer liegende Abschnitte größer,")]
#only("3")[#voiceover("oder ist die Kraft auf tiefer liegende Abschnitte kleiner,")]
#only("4")[#voiceover("oder ist die Kraft auf allen Abschnitten gleicher Größe gleich, unabhängig von ihrer Position,")]
#only("5")[#voiceover("oder kann es aus den gegebenen Informationen nicht bestimmt werden?")]
]#questionDef(
questionText: "Wie verhält sich die Kraft auf andere Abschnitte gleicher Größe, aber unterschiedlicher Position?",
answerOptions: ("Größer", "Kleiner", "Gleich", "Kann nicht bestimmt werden"),
correctAnswerIndex: 0,
)