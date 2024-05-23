#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Koordinaten bezüglich einer Basis]
// Der Titel "Koordinaten bezüglich einer Basis" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[Die Koordinaten eines Vektors bezüglich einer Basis sind die \_\_\_\_\_ der Linearkombination der Basisvektoren, die dem Vektor entspricht.]
// Die Frage wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[a) Vektoren 📐]
// Antwortoption a) wird ab Folie 2 angezeigt
#v(10pt)
#only("3-")[b) Koeffizienten 🧮]
// Antwortoption b) wird ab Folie 3 angezeigt
#v(10pt)
#only("4-")[c) Dimensionen 📏]
// Antwortoption c) wird ab Folie 4 angezeigt
#v(10pt)
#only("5-")[d) Spannweiten 🌌]
// Antwortoption d) wird ab Folie 5 angezeigt
#only("1")[#voiceover("Lassen Sie uns Ihr Verständnis der Koordinaten bezüglich einer Basis testen. Die Koordinaten eines Vektors bezüglich einer Basis sind die \_\_\_\_\_ der Linearkombination der Basisvektoren, die dem Vektor entspricht.")]
#only("2")[#voiceover("Sind es die Vektoren,")]
#only("3")[#voiceover("oder sind es die Koeffizienten,")]
#only("4")[#voiceover("oder vielleicht die Dimensionen,")]
#only("5")[#voiceover("oder sind es die Spannweiten?")]
]#questionDef(
questionText: "Die Koordinaten eines Vektors bezüglich einer Basis sind die \_\_\_\_\_ der Linearkombination der Basisvektoren, die dem Vektor entspricht.",
answerOptions: ("Vektoren", "Koeffizienten", "Dimensionen", "Spannweiten"),
correctAnswerIndex: 1,
)