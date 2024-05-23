#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Matrix Addition]
#v(40pt)
Can $mat(1, 2; 3, 4)$ and $mat(5, 6; 7, 8)$ be added?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct.
#only("-1")[a) Yes]#only("2-")[#text(fill:green)[a) Yes]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) No]#only("3-")[#text(fill:red)[b) No]]

#only("1")[#voiceover("Not quite. Let's take a look at the correct solution.")]
#only("2")[#voiceover("Option a) Yes is correct. These two matrices can indeed be added because they have the same dimensions, both being 2 by 2 matrices.")]
#only("3")[#voiceover("Option b) No is incorrect. There is no reason why these matrices couldn't be added. As long as matrices have the same dimensions, matrix addition is possible.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[To add $mat(1, 2; 3, 4)$ and $mat(5, 6; 7, 8)$:]
#v(20pt)
#only("2-")[1. Confirm the matrices have the same dimensions.]
#v(10pt)
#only("3-")[   - Both are 2×2 matrices ✅]
#v(20pt)
#only("4-")[2. Add corresponding elements.]
#v(10pt)
#only("5-")[   $mat(1, 2; 3, 4) + mat(5, 6; 7, 8)$]
#v(10pt)
#only("6-")[   $= mat(1+5, 2+6; 3+7, 4+8)$]
#v(10pt)
#only("7-")[   $= mat(6, 8; 10, 12)$ 🎉]

#only("1")[#voiceover("Now let's solve this step by step.")]
#only("2")[#voiceover("First, we need to confirm that the matrices have the same dimensions. This is a prerequisite for matrix addition.")]
#only("3")[#voiceover("And indeed, both matrices are 2 by 2, so we're good to go.")]
#only("4")[#voiceover("Next, we add the corresponding elements. That means, we add the elements that are in the same position in each matrix.")]
#only("5")[#voiceover("So we start with 1 plus 5, 2 plus 6, and so on.")]
#only("6")[#voiceover("This gives us a new matrix where each element is the sum of the corresponding elements from the original matrices.")]
#only("7")[#voiceover("And there we have it! The sum of the two matrices is 6, 8; 10, 12. Matrix addition complete!")]
]