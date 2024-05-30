#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Objekte mit gleicher Dichte]
// Der Titel "Objekte mit gleicher Dichte" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[Drei Objekte unterschiedlicher Größe haben die gleiche Dichte.]
// Die Aussage über die Objekte wird ab Folie 1 angezeigt
#v(20pt)
#only("2-")[Das mittelgroße Objekt schwimmt. 🌊]
// Die Information, dass das mittelgroße Objekt schwimmt, wird ab Folie 2 angezeigt
#v(40pt)
#only("3-")[Welches andere Objekt schwimmt auch? 🤔]
// Die Frage wird ab Folie 3 angezeigt
#v(40pt)
#only("4-")[a) das kleine 🔍]
// Antwortoption a) wird ab Folie 4 angezeigt
#v(10pt)
#only("5-")[b) das große 🔎]
// Antwortoption b) wird ab Folie 5 angezeigt
#v(10pt)
#only("6-")[c) beide 🔍🔎]
// Antwortoption c) wird ab Folie 6 angezeigt
#v(10pt)
#only("7-")[d) keines ❌]
// Antwortoption d) wird ab Folie 7 angezeigt
#only("1")[#voiceover("Betrachte drei Objekte unterschiedlicher Größe, die die gleiche Dichte haben.")]
#only("2")[#voiceover("Wir wissen, dass das mittelgroße Objekt im Wasser schwimmt.")]
#only("3")[#voiceover("Nun die Frage: Welches andere Objekt schwimmt auch?")]
#only("4")[#voiceover("Ist es das kleine Objekt,")]
#only("5")[#voiceover("oder das große Objekt,")]
#only("6")[#voiceover("oder schwimmen beide,")]
#only("7")[#voiceover("oder schwimmt keines von beiden?")]
]#questionDef(
questionText: "Von drei unterschiedlich großen Objekten mit gleicher Dichte schwimmt das mittelgroße. Welches andere Objekt schwimmt auch?",
answerOptions: ("das kleine", "das große", "beide", "keines"),
correctAnswerIndex: 2,
)