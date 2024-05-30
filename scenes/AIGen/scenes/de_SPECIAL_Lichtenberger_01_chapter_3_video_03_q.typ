#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Auftrieb und Volumen]
#v(40pt)
#only("1-")[Von drei unterschiedlich großen Objekten mit derselben Masse schwimmt das mit dem mittleren Volumen. Welches andere Objekt schwimmt auch?]
#v(40pt)
#only("2-")[a) das kleine 🪨]
#v(10pt)
#only("3-")[b) das große 🏐]
#v(10pt) 
#only("4-")[c) beide]
#v(10pt)
#only("5-")[d) keines]
#only("1")[#voiceover("Lass uns dein Verständnis von Auftrieb und Volumen testen. Wir haben drei unterschiedlich große Objekte mit derselben Masse. Das mit dem mittleren Volumen schwimmt. Welches andere Objekt schwimmt auch?")]
#only("2")[#voiceover("Ist es das kleine,")]  
#only("3")[#voiceover("oder das große,")]
#only("4")[#voiceover("oder schwimmen beide,")]
#only("5")[#voiceover("oder schwimmt keines von ihnen?")]
]#questionDef(
questionText: "Von drei unterschiedlich großen Objekten mit derselben Masse schwimmt das mit dem mittleren Volumen. Welches andere Objekt schwimmt auch?",
answerOptions: ("das kleine", "das große", "beide", "keines"),
correctAnswerIndex: 1
)