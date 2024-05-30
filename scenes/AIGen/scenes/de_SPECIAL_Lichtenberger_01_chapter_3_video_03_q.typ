#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Auftrieb und Volumen 🌊]
// Der Titel "Auftrieb und Volumen" mit einem Wasserwellen-Emoji wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[Drei Objekte mit der gleichen Masse, aber unterschiedlichen Volumen werden ins Wasser gelegt.]
// Das Szenario wird ab Folie 1 eingeführt
#v(20pt)
#only("2-")[Das Objekt mit dem mittleren Volumen schwimmt. 🎈]
// Zusätzliche Informationen werden ab Folie 2 gegeben
#v(40pt)
#only("3-")[Welches andere Objekt schwimmt auch?]
// Die Frage wird ab Folie 3 gestellt
#v(40pt)
#only("4-")[a) das kleine 🏐]
// Antwortoption a) mit einem kleinen Ball-Emoji wird ab Folie 4 angezeigt
#v(10pt)
#only("5-")[b) das große 🏀]
// Antwortoption b) mit einem großen Ball-Emoji wird ab Folie 5 angezeigt
#v(10pt)
#only("6-")[c) beide]
// Antwortoption c) wird ab Folie 6 angezeigt
#v(10pt)
#only("7-")[d) keines]
// Antwortoption d) wird ab Folie 7 angezeigt
#only("1")[#voiceover("Stell dir vor, wir haben drei Objekte mit der gleichen Masse, aber unterschiedlichen Volumen.")]
#only("2")[#voiceover("Wir legen diese Objekte ins Wasser und beobachten, dass das Objekt mit dem mittleren Volumen schwimmt.")]
#only("3")[#voiceover("Nun lautet die Frage: Welches andere Objekt, wenn überhaupt, wird auch schwimmen?")]
#only("4")[#voiceover("Ist es das Objekt mit dem kleinen Volumen,")]
#only("5")[#voiceover("oder das Objekt mit dem großen Volumen,")]
#only("6")[#voiceover("oder werden beide dieser Objekte schwimmen,")]
#only("7")[#voiceover("oder wird keines von ihnen schwimmen?")]
]#questionDef(
questionText: "Von drei unterschiedlich großen Objekten mit der gleichen Masse schwimmt das mit dem mittleren Volumen. Welches andere Objekt schwimmt auch?",
answerOptions: ("das kleine", "das große", "beide", "keines"),
correctAnswerIndex: 1,
)