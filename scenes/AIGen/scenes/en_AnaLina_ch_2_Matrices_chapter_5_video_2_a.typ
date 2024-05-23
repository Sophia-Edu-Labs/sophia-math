#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Matrix Multiplication]
#v(40pt)
Multiply mat(1, 2; 3, 4) by mat(5, 6; 7, 8). What is the result?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct. 
#only("-1")[a) mat(19, 22; 43, 50)]#only("2-")[#text(fill:green)[a) mat(19, 22; 43, 50)]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) mat(5, 12; 21, 32)]#only("3-")[#text(fill:red)[b) mat(5, 12; 21, 32)]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) mat(1, 2; 3, 4)]#only("4-")[#text(fill:red)[c) mat(1, 2; 3, 4)]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) mat(6, 8; 10, 12)]#only("5-")[#text(fill:red)[d) mat(6, 8; 10, 12)]]
#v(40pt)

#only("1")[#voiceover("That's right, great job!")]
// Very briefly Talk about a and why it is correct
#only("2")[#voiceover("The correct answer is a) mat(19, 22; 43, 50). Let's see why in the next slide.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[Given matrices: A = mat(1, 2; 3, 4) and B = mat(5, 6; 7, 8)]
#v(20pt)
#only("2-")[Step 1: Multiply row 1 of A with column 1 of B 🔢]
#v(10pt)
#only("3-")[mat(1 dot 5 + 2 dot 7, ; )]
#only("4-")[mat(1 dot 5 + 2 dot 7, 1 dot 6 + 2 dot 8; )]
#v(10pt)
#only("5-")[Step 2: Multiply row 2 of A with column 1 of B 🔢]
#v(10pt)
#only("6-")[mat(1 dot 5 + 2 dot 7, 1 dot 6 + 2 dot 8; 3 dot 5 + 4 dot 7, )]

#only("1")[#voiceover("We are given two matrices A and B. To multiply them, we need to multiply rows of A with columns of B.")]
#only("2-4")[#voiceover("First, we multiply row 1 of A with column 1 of B. This gives us the element at position (1,1) in the resulting matrix, which is 1 times 5 plus 2 times 7. We then multiply row 1 of A with column 2 of B to get the element at position (1,2), which is 1 times 6 plus 2 times 8.")]
#only("5-6")[#voiceover("Next, we multiply row 2 of A with column 1 of B to get the element at position (2,1), which is 3 times 5 plus 4 times 7.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution (cont.)]
#v(40pt)
#only("1-")[mat(1 dot 5 + 2 dot 7, 1 dot 6 + 2 dot 8; 3 dot 5 + 4 dot 7, 3 dot 6 + 4 dot 8)]
#v(10pt)
#only("2-")[Step 3: Simplify 🧮]
#v(10pt)
#only("3-")[mat(5 + 14, 6 + 16; 15 + 28, 18 + 32)]
#only("4-")[mat(19, 22; 43, 50)]
#v(20pt)
#only("5-")[Therefore, A B = mat(19, 22; 43, 50) ✅]

#only("1")[#voiceover("Similarly, multiplying row 2 of A with column 2 of B gives us the element at position (2,2), which is 3 times 6 plus 4 times 8.")]
#only("2-4")[#voiceover("Now, we simplify these expressions. 5 plus 14 is 19, 6 plus 16 is 22, 15 plus 28 is 43, and 18 plus 32 is 50.")]
#only("5")[#voiceover("Therefore, the product of matrices A and B is the matrix mat(19, 22; 43, 50).")]
]