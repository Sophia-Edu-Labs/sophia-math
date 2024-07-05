#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Matrix Addition]
#v(40pt)

#only("1-")[
$A = mat(2, 1; 0, -1; 3, 2)$
]

#v(20pt)

#only("2-")[
$B = mat(1, -1; 4, 0; -2, 5)$
]

#v(20pt)

#only("3-")[
$A + B = mat(3, 0; 4, -1; 1, 7)$
]

#only("1")[
#voiceover("Not quite. Let's review the correct solution step-by-step. First, let's look at matrix A.")
]

#only("2")[
#voiceover("Now, let's look at matrix B.")
]

#only("3")[
#voiceover("To add these matrices, we add the corresponding elements. Let's do this step-by-step.")
]
]
```

### Slide 2
```typst

#slide()[
#text(size: 30pt, weight: "bold")[Matrix Addition (Continued)]
#v(40pt)

#only("1")[
#voiceover("For the first element, we have 2 plus 1, which equals 3.")
]

#only("2")[
#voiceover("For the second element, we have 1 plus negative 1, which equals 0.")
]

#only("3")[
#voiceover("For the third element, we have 0 plus 4, which equals 4.")
]

#only("4")[
#voiceover("For the fourth element, we have negative 1 plus 0, which equals negative 1.")
]

#only("5")[
#voiceover("For the fifth element, we have 3 plus negative 2, which equals 1.")
]

#only("6")[
#voiceover("And for the last element, we have 2 plus 5, which equals 7.")
]

#only("7")[
#voiceover("Thus, we get the resulting matrix as shown. This is indeed the correct answer!")
]
]
```