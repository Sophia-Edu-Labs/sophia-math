#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Basis for R^2]
#v(40pt)
Which of the following sets of vectors forms a basis for R^2?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct.
#only("-1")[a) mat(1; 0), mat(0; 1)]#only("2-")[#text(fill:green)[a) mat(1; 0), mat(0; 1)]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) mat(1; 1), mat(2; 2)]#only("3-")[#text(fill:red)[b) mat(1; 1), mat(2; 2)]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) mat(1; 2), mat(2; 4)]#only("4-")[#text(fill:red)[c) mat(1; 2), mat(2; 4)]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) mat(1; 1), mat(1; -1)]#only("5-")[#text(fill:red)[d) mat(1; 1), mat(1; -1)]]
#only("1")[#voiceover("That's correct! Great job! 🎉")]
#only("2")[#voiceover("Option a, the vectors mat(1; 0) and mat(0; 1), indeed form a basis for R^2. Let's see why...")]
#only("3")[#voiceover("Option b, the vectors mat(1; 1) and mat(2; 2), do not form a basis. They are linearly dependent, as one is a scalar multiple of the other.")]
#only("4")[#voiceover("Similarly, option c, the vectors mat(1; 2) and mat(2; 4), are also linearly dependent. One vector is twice the other.")]
#only("5")[#voiceover("And option d, the vectors mat(1; 1) and mat(1; -1), while linearly independent, do not span all of R^2.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Why mat(1; 0), mat(0; 1)?]
#v(40pt)
#only("1-")[Recall, a basis must be:]
#v(20pt)
#only("2-")[1. Linearly independent ✅]
#v(20pt)
#only("3-")[2. Span the entire space 🌌]
#v(40pt)
#only("4-")[Let's check these conditions for mat(1; 0) and mat(0; 1)...]
#only("1")[#voiceover("To understand why the vectors mat(1; 0) and mat(0; 1) form a basis for R^2, let's recall the conditions for a basis.")]
#only("2")[#voiceover("First, the vectors in a basis must be linearly independent.")]
#only("3")[#voiceover("Second, they must span the entire space, in this case, R^2.")]
#only("4")[#voiceover("Let's check if these conditions hold for the vectors mat(1; 0) and mat(0; 1)...")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Linear Independence]
#v(40pt)
#only("1-")[For mat(1; 0) and mat(0; 1) to be linearly independent:]
#v(20pt)
#only("2-")[$a mat(1; 0) + b mat(0; 1) = mat(0; 0)$]
#v(20pt)
#only("3-")[must have only the trivial solution $a = b = 0$.]
#v(40pt)
#only("4-")[$a mat(1; 0) + b mat(0; 1) = mat(a; b) = mat(0; 0)$]
#v(20pt)
#only("5-")[Indeed, $a = b = 0$ is the only solution. ✅]
#only("1")[#voiceover("For the vectors mat(1; 0) and mat(0; 1) to be linearly independent...")]
#only("2")[#voiceover("The equation 'a' times mat(1; 0) plus 'b' times mat(0; 1) equals the zero vector...")]
#only("3")[#voiceover("must have only the trivial solution where both 'a' and 'b' are zero.")]
#only("4")[#voiceover("Multiplying out, we get 'a' times mat(1; 0) plus 'b' times mat(0; 1) equals mat(a; b), and this must equal the zero vector.")]
#only("5")[#voiceover("Indeed, the only way for mat(a; b) to be the zero vector is if both 'a' and 'b' are zero. So the vectors are linearly independent.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Spanning R^2]
#v(40pt)
#only("1-")[For mat(1; 0) and mat(0; 1) to span R^2:]
#v(20pt)
#only("2-")[Every vector mat(x; y) in R^2 must be a linear combination of mat(1; 0) and mat(0; 1).]
#v(40pt)
#only("3-")[$a mat(1; 0) + b mat(0; 1) = mat(x; y)$]
#v(20pt)
#only("4-")[$mat(a; b) = mat(x; y)$]
#v(20pt)
#only("5-")[Indeed, for any mat(x; y), we can find $a = x$ and $b = y$. 🌌]
#only("1")[#voiceover("Now, for the vectors mat(1; 0) and mat(0; 1) to span R^2...")]
#only("2")[#voiceover("Every vector mat(x; y) in R^2 must be a linear combination of mat(1; 0) and mat(0; 1).")]
#only("3")[#voiceover("In other words, for any vector mat(x; y), we must be able to find scalars 'a' and 'b' such that 'a' times mat(1; 0) plus 'b' times mat(0; 1) equals mat(x; y).")]
#only("4")[#voiceover("Simplifying, this is equivalent to finding 'a' and 'b' such that mat(a; b) equals mat(x; y).")]
#only("5")[#voiceover("And indeed, for any vector mat(x; y), we can always choose 'a' to be 'x' and 'b' to be 'y'. So the vectors do span R^2.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Conclusion]
#v(40pt)
#only("1-")[The vectors mat(1; 0) and mat(0; 1):]
#v(20pt)
#only("2-")[1. Are linearly independent ✅]
#v(20pt)
#only("3-")[2. Span R^2 🌌]
#v(40pt)
#only("4-")[Therefore, they form a basis for R^2! 🎉]
#only("1")[#voiceover("In conclusion, the vectors mat(1; 0) and mat(0; 1)...")]
#only("2")[#voiceover("Are linearly independent, as we saw that the only solution to 'a' times mat(1; 0) plus 'b' times mat(0; 1) equaling the zero vector is 'a' and 'b' both being zero.")]
#only("3")[#voiceover("And they span R^2, as we saw that any vector mat(x; y) can be written as 'x' times mat(1; 0) plus 'y' times mat(0; 1).")]
#only("4")[#voiceover("Therefore, since they are both linearly independent and span R^2, the vectors mat(1; 0) and mat(0; 1) indeed form a basis for R^2!")]
]