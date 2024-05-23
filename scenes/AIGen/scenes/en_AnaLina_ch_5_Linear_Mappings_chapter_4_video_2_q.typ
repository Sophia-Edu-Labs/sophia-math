#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Dimension Formula]
// The title "Dimension Formula" is shown on this slide
#v(40pt)
#only("1-")[For a linear mapping $T: V -> W$, what is the dimension formula?]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) $"dim"(V) = "dim"("ker"(T)) - "dim"("im"(T))$]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) $"dim"(V) = "dim"("ker"(T)) + "dim"("im"(T))$]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) $"dim"(V) = "dim"("ker"(T)) "dim"("im"(T))$]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) $"dim"(V) = "dim"("im"(T)) - "dim"("ker"(T))$]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on the dimension formula. For a linear mapping T from V to W, what is the dimension formula?")]
#only("2")[#voiceover("Is it the dimension of V equals the dimension of the kernel of T minus the dimension of the image of T,")]
#only("3")[#voiceover("or is it the dimension of V equals the dimension of the kernel of T plus the dimension of the image of T,")]
#only("4")[#voiceover("or maybe the dimension of V equals the dimension of the kernel of T times the dimension of the image of T,")]
#only("5")[#voiceover("or is it the dimension of V equals the dimension of the image of T minus the dimension of the kernel of T?")]
]#questionDef(
questionText: "For a linear mapping $T: V \\to W$, what is the dimension formula?", 
answerOptions: ("$\dim(V) = \dim(\ker(T)) - \dim(\text{im}(T))$", "$\dim(V) = \dim(\ker(T)) + \dim(\text{im}(T))$", "$\dim(V) = \dim(\ker(T)) \dim(\text{im}(T))$", "$\dim(V) = \dim(\text{im}(T)) - \dim(\ker(T))$"),
correctAnswerIndex: 1,
)