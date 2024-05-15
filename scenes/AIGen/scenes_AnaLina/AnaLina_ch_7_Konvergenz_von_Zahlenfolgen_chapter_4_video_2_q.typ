#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Konvergenz von Zahlenfolgen 📈]
#v(40pt)
#only("1-")[In welchem Bereich ist die Konvergenz von Zahlenfolgen besonders wichtig? 🤔]
#v(40pt)
#only("2-")[a) Analysis]
#v(10pt)
#only("3-")[b) Lineare Algebra]
#v(10pt)
#only("4-")[c) Physik]
#v(10pt)
#only("5-")[d) Alle oben genannten]
#only("1")[#voiceover("In welchem Bereich der Mathematik und Naturwissenschaften ist die Konvergenz von Zahlenfolgen besonders wichtig?")]
#only("2")[#voiceover("Ist es die Analysis,")]
#only("3")[#voiceover("oder vielleicht die Lineare Algebra,")]
#only("4")[#voiceover("oder die Physik,")]
#only("5")[#voiceover("oder sind es alle oben genannten Bereiche?")]
]#questionDef(
// use latex Notation instead of Typst Notation here
questionText: "In welchem Bereich ist die Konvergenz von Zahlenfolgen besonders wichtig?",
answerOptions: ("Analysis", "Lineare Algebra", "Physik", "Alle oben genannten"),
correctAnswerIndex: 3,
)