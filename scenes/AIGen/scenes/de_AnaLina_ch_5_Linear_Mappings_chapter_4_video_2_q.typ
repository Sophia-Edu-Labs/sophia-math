#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Dimensionsformel]
// Der Titel "Dimensionsformel" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[Für eine lineare Abbildung $T: V -> W$, wie lautet die Dimensionsformel?]
// Die Frage wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[a) $"dim"(V) = "dim"("ker"(T)) - "dim"("im"(T))$]
// Antwortmöglichkeit a) wird ab Folie 2 angezeigt
#v(10pt)
#only("3-")[b) $"dim"(V) = "dim"("ker"(T)) + "dim"("im"(T))$]
// Antwortmöglichkeit b) wird ab Folie 3 angezeigt
#v(10pt)
#only("4-")[c) $"dim"(V) = "dim"("ker"(T)) "dim"("im"(T))$]
// Antwortmöglichkeit c) wird ab Folie 4 angezeigt
#v(10pt)
#only("5-")[d) $"dim"(V) = "dim"("im"(T)) - "dim"("ker"(T))$]
// Antwortmöglichkeit d) wird ab Folie 5 angezeigt
#only("1")[#voiceover("Lass uns dein Wissen über die Dimensionsformel testen. Für eine lineare Abbildung T von V nach W, wie lautet die Dimensionsformel?")]
#only("2")[#voiceover("Ist es die Dimension von V gleich der Dimension des Kerns von T minus der Dimension des Bildes von T,")]
#only("3")[#voiceover("oder ist es die Dimension von V gleich der Dimension des Kerns von T plus der Dimension des Bildes von T,")]
#only("4")[#voiceover("oder vielleicht die Dimension von V gleich der Dimension des Kerns von T mal der Dimension des Bildes von T,")]
#only("5")[#voiceover("oder ist es die Dimension von V gleich der Dimension des Bildes von T minus der Dimension des Kerns von T?")]
]#questionDef(
questionText: "Für eine lineare Abbildung $T: V \\to W$, wie lautet die Dimensionsformel?", 
answerOptions: ("$\dim(V) = \dim(\ker(T)) - \dim(\text{im}(T))$", "$\dim(V) = \dim(\ker(T)) + \dim(\text{im}(T))$", "$\dim(V) = \dim(\ker(T)) \dim(\text{im}(T))$", "$\dim(V) = \dim(\text{im}(T)) - \dim(\ker(T))$"),
correctAnswerIndex: 1,
)