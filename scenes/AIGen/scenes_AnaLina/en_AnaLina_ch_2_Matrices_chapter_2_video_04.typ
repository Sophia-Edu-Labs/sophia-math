#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Let's recap the key points about matrix addition.")
]
#text(size: 30pt, weight: "bold")[Matrix Addition]
// The title "Matrix Addition" is shown on this slide
#v(40pt)
#only("2")[
#voiceover("Matrices can be added if they have the same dimensions. This means that the number of rows and columns must match.")
]
#only("2-")[
- Same dimensions 📏
]
// The bullet point "Same dimensions" with a ruler emoji is shown from slide 2 onward
#v(20pt)
#only("3")[
#voiceover("When adding matrices, we add the corresponding elements. This means that we add the elements in the same position in each matrix.")
]
#only("3-")[
- Add corresponding elements ➕
]
// The bullet point "Add corresponding elements" with a plus sign emoji is shown from slide 3 onward
#v(20pt)
#only("4")[
#voiceover("Here's an example. Consider matrices A and B, both 2 by 2 matrices. To add them, we add the elements in the same position.")
]
#only("4-")[
$ A = mat(1, 2; 3, 4), B = mat(5, 6; 7, 8) $
#v(10pt)
$ A + B = mat(1+5, 2+6; 3+7, 4+8) = mat(6, 8; 10, 12) $
]
// The matrices A and B, and the result of their addition, are shown from slide 4 onward
#v(20pt)
#only("5")[
#voiceover("So in summary, to add matrices, ensure they have the same dimensions and then add the corresponding elements.")
]
#only("5-")[
📝 Summary:
- Same dimensions
- Add corresponding elements
]
// The summary bullet points are shown from slide 5 onward
]