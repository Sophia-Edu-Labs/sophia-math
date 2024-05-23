#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Kern einer linearen Abbildung]
// Der Titel "Kern einer linearen Abbildung" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[Der Kern einer linearen Abbildung $T$ ist die Menge aller Vektoren $v$, für die gilt:]
// Die Frage wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[a) $T(v) = v$]
// Antwortoption a) wird ab Folie 2 angezeigt
#v(10pt)
#only("3-")[b) $T(v) = 0$]
// Antwortoption b) wird ab Folie 3 angezeigt
#v(10pt)
#only("4-")[c) $T(v) = 1$]
// Antwortoption c) wird ab Folie 4 angezeigt
#v(10pt)
#only("5-")[d) $T(v) = -v$]
// Antwortoption d) wird ab Folie 5 angezeigt
#only("1")[#voiceover("Lass uns dein Verständnis des Kerns einer linearen Abbildung testen. Der Kern einer linearen Abbildung T ist die Menge aller Vektoren v, für die gilt:")]
#only("2")[#voiceover("T von v gleich v,")]
#only("3")[#voiceover("oder T von v gleich 0,")]
#only("4")[#voiceover("oder T von v gleich 1,")]
#only("5")[#voiceover("oder T von v gleich minus v?")]
]#questionDef(
questionText: "Der Kern einer linearen Abbildung $T$ ist die Menge aller Vektoren $v$, für die gilt:",
answerOptions: ("$T(v) = v$", "$T(v) = 0$", "$T(v) = 1$", "$T(v) = -v$"),
correctAnswerIndex: 1,
)