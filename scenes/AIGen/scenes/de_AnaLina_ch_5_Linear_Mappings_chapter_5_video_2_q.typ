#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Dimensionsformel]
// Der Titel "Dimensionsformel" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[Die Dimensionsformel für eine lineare Abbildung $T: V -> W$ hilft, die Beziehung zwischen zu verstehen:]
// Die Frage wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[a) Dem Kern und Bild einer linearen Abbildung]
// Antwortoption a) wird ab Folie 2 angezeigt
#v(10pt)
#only("3-")[b) Dem Definitions- und Zielbereich einer linearen Abbildung]
// Antwortoption b) wird ab Folie 3 angezeigt
#v(10pt)
#only("4-")[c) Den Vektoren und Skalaren in einem Vektorraum]
// Antwortoption c) wird ab Folie 4 angezeigt
#v(10pt)
#only("5-")[d) Der Basis und Dimension eines Vektorraums]
// Antwortoption d) wird ab Folie 5 angezeigt
#only("1")[#voiceover("Lassen Sie uns Ihr Verständnis der Dimensionsformel testen. Die Dimensionsformel für eine lineare Abbildung T von V nach W hilft, die Beziehung zwischen zu verstehen:")]
#only("2")[#voiceover("Dem Kern und Bild einer linearen Abbildung,")]
#only("3")[#voiceover("oder dem Definitions- und Zielbereich einer linearen Abbildung,")]
#only("4")[#voiceover("oder den Vektoren und Skalaren in einem Vektorraum,")]
#only("5")[#voiceover("oder der Basis und Dimension eines Vektorraums?")]
]#questionDef(
questionText: "Die Dimensionsformel für eine lineare Abbildung $T: V \\to W$ hilft, die Beziehung zwischen zu verstehen:",
answerOptions: ("Dem Kern und Bild einer linearen Abbildung", "Dem Definitions- und Zielbereich einer linearen Abbildung", "Den Vektoren und Skalaren in einem Vektorraum", "Der Basis und Dimension eines Vektorraums"),
correctAnswerIndex: 0,
)