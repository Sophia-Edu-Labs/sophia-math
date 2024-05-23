#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Subspace Properties]
// The title "Subspace Properties" is shown on this slide
#v(40pt)
#only("1-")[A subspace must be \_\_\_\_\_ under vector addition and scalar multiplication.]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) open]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) closed]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) finite]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) infinite]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on subspaces. A subspace must be what under vector addition and scalar multiplication?")]
#only("2")[#voiceover("Is it open,")]
#only("3")[#voiceover("or is it closed,")]
#only("4")[#voiceover("or maybe finite,")]
#only("5")[#voiceover("or is it infinite?")]
]#questionDef(
questionText: "A subspace must be \_\_\_\_\_\_\_ under vector addition and scalar multiplication.",
answerOptions: ("open", "closed", "finite", "infinite"),
correctAnswerIndex: 1,
)