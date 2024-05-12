#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Math in Trading 📈]
// The title "Math in Trading" with a chart emoji is shown on this slide
#v(40pt)
#only("1-")[How does math help in trading?]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) Improves guessing 🔮]
// Answer option a) with a crystal ball emoji is shown from slide 2 onward
#v(10pt)
#only("3-")[b) Provides emotional support 🤗]
// Answer option b) with a hugging emoji is shown from slide 3 onward  
#v(10pt)
#only("4-")[c) Enables precise analysis and prediction 🎯]
// Answer option c) with a bullseye emoji is shown from slide 4 onward
#v(10pt) 
#only("5-")[d) None of the above ❌]
// Answer option d) with a cross mark emoji is shown from slide 5 onward
#only("1")[#voiceover("Let's test your understanding. How does mathematics help in stock trading?")]
#only("2")[#voiceover("Does it improve guessing,")]
#only("3")[#voiceover("or provide emotional support to traders,")]
#only("4")[#voiceover("or does it enable precise analysis and prediction of stock prices,")]  
#only("5")[#voiceover("or is it none of the above?")]
]#questionDef(
// use latex Notation instead of Typst Notation here
questionText: "How does math help in trading?",
answerOptions: ("Improves guessing", "Provides emotional support", "Enables precise analysis and prediction", "None of the above"),
correctAnswerIndex: 2,  
)