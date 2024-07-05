#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Matrix Multiplication]
#v(40pt)

#only("1-")[
$A = mat(2, 0; 1, 3; 4, 5)$
#v(20pt)
$B = mat(3, 1; 2, 4)$
]

#only("2-")[
$C = A dot B = mat(?, ?; ?, ?; ?, ?)$
]

#only("3-")[
$C_(11) = 2 dot 3 + 0 dot 2 = 6$
]

#only("4-")[
$C_(12) = 2 dot 1 + 0 dot 4 = 2$
]

#only("5-")[
$C = mat(6, 2; ?, ?; ?, ?)$
]

#only("6-")[
$C_(21) = 1 dot 3 + 3 dot 2 = 9$
]

#only("1")[
#voiceover("Excellent work! You've got the correct answer. Let's walk through the solution step-by-step. We start with two matrices, A and B.")
]

#only("2")[
#voiceover("To multiply these matrices, we'll create a new matrix C with the same number of rows as A and the same number of columns as B.")
]

#only("3")[
#voiceover("Let's begin with the element in the first row and first column of C. We multiply the first row of A with the first column of B.")
]

#only("4")[
#voiceover("Next, we calculate the element in the first row and second column of C.")
]

#only("5")[
#voiceover("Now we have the first row of our result matrix C.")
]

#only("6")[
#voiceover("Moving to the second row, we calculate the element in the second row and first column.")
]
]
```

### Slide 2
```typst

#slide()[
#text(size: 30pt, weight: "bold")[Matrix Multiplication (cont.)]
#v(40pt)

#only("1-")[
$C_(22) = 1 dot 1 + 3 dot 4 = 13$
]

#only("2-")[
$C = mat(6, 2; 9, 13; ?, ?)$
]

#only("3-")[
$C_(31) = 4 dot 3 + 5 dot 2 = 22$
]

#only("4-")[
$C_(32) = 4 dot 1 + 5 dot 4 = 24$
]

#only("5-")[
$C = mat(6, 2; 9, 13; 22, 24)$
]

#only("1")[
#voiceover("And then the element in the second row and second column.")
]

#only("2")[
#voiceover("We now have two rows of our result matrix C.")
]

#only("3")[
#voiceover("For the last row, we calculate the element in the third row and first column.")
]

#only("4")[
#voiceover("Finally, we calculate the last element in the third row and second column.")
]

#only("5")[
#voiceover("And there we have it! Our final result matrix C. This demonstrates how to multiply non-square matrices, where the number of columns in the first matrix matches the number of rows in the second matrix.")
]
]