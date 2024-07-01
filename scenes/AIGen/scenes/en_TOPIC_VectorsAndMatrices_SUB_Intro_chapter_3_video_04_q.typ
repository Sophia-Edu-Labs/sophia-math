#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Matrix Identification]
  #v(40pt)

  #only("1-")[Which of the following is #text(weight: "bold")[not] a matrix?]
  #v(20pt)

  #only("2-")[a) #text(font: "monospace")[[[1, 2], [3, 4]]] 📊]
  #v(10pt)
  #only("3-")[b) #text(font: "monospace")[[[5, 6, 7], [8, 9, 10]]] 📈]
  #v(10pt)
  #only("4-")[c) 5 🔢]
  #v(10pt)
  #only("5-")[d) #text(font: "monospace")[[[2]]] 🔳]

  #only("1")[
    #voiceover("Let's test your understanding of matrices. Which of the following is not a matrix?")
  ]
  #only("2")[
    #voiceover("Is it option a, a two-by-two matrix with elements 1, 2, 3, and 4?")
  ]
  #only("3")[
    #voiceover("Or is it option b, a two-by-three matrix with elements 5, 6, 7 in the first row and 8, 9, 10 in the second row?")
  ]
  #only("4")[
    #voiceover("Could it be option c, which is simply the number 5?")
  ]
  #only("5")[
    #voiceover("Or lastly, is it option d, a one-by-one matrix containing only the number 2?")
  ]
]

//Type: MC 
#questionDef( 
questionText: "Which of the following is not a matrix?", 
answerOptions: ("$\begin{bmatrix} 1 & 2 \\\\ 3 & 4 \end{bmatrix}$", "$\begin{bmatrix} 5 & 6 & 7 \\\\ 8 & 9 & 10 \end{bmatrix}$", "$5$", "$\begin{bmatrix} 2 \end{bmatrix}$"),
correctAnswerIndex: 2 
)