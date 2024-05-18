#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Generating Sets for $RR^2$]
#v(40pt)
Which of the following sets of vectors is a generating set for $RR^2$?
#v(40pt)

// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct.
#only("-1")[a) ${(1, 0), (0, 1)}$]#only("2-")[#text(fill:green)[a) ${(1, 0), (0, 1)}$]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) ${(1, 1), (1, -1)}$]#only("3-")[#text(fill:green)[b) ${(1, 1), (1, -1)}$]]  
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) ${(2, 3), (4, 6)}$]#only("4-")[#text(fill:red)[c) ${(2, 3), (4, 6)}$]]
#v(10pt)  
// From the start until section four, the option is black. From section 5 until the end it is then turned green, because it is correct.
#only("-4")[d) Both a and b]#only("5-")[#text(fill:green)[d) Both a and b]]

#only("1")[#voiceover("That's not quite right. Let's look at the correct solution...")]
#only("2")[#voiceover("a) The vectors (1, 0) and (0, 1) do form a generating set for $RR^2$. These are the standard basis vectors.")]
#only("3")[#voiceover("b) The vectors (1, 1) and (1, -1) also form a generating set for $RR^2$. Any vector in $RR^2$ can be written as a linear combination of these vectors.")]
#only("4")[#voiceover("c) The vectors (2, 3) and (4, 6) do not form a generating set for $RR^2$. These vectors are linearly dependent, as (4, 6) is just 2 times (2, 3).")]
#only("5")[#voiceover("d) Therefore, the correct answer is 'Both a and b'. Let's see why in more detail...")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Generating Set Criteria]
#v(40pt)
A set of vectors is a generating set for a vector space if:
#v(20pt)
#only("1-")[1️⃣ Every vector in the space can be written as a linear combination of the set vectors]
#v(20pt)  
#only("2-")[2️⃣ The set vectors are linearly independent]

#only("1")[#voiceover("For a set of vectors to be a generating set for a vector space, every vector in the space must be expressible as a linear combination of the set vectors.")]
#only("2")[#voiceover("Additionally, the set vectors must be linearly independent. This means no vector in the set can be written as a linear combination of the others.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Option a) ${(1, 0), (0, 1)}$]
#v(40pt)  
#only("1-")[Any vector $(x, y)$ in $RR^2$ can be written as:]
#v(20pt)
#only("2-")[$x(1, 0) + y(0, 1) = (x, y)$]
#v(20pt)
#only("3-")[Also, $(1, 0)$ and $(0, 1)$ are linearly independent.]

#only("1")[#voiceover("Let's check option a. Any vector (x, y) in $RR^2$ can be written as...")]
#only("2")[#voiceover("x times (1, 0) plus y times (0, 1), which equals (x, y).")]
#only("3")[#voiceover("Moreover, (1, 0) and (0, 1) are linearly independent. There's no way to express one as a multiple of the other.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Option b) ${(1, 1), (1, -1)}$]
#v(40pt)
#only("1-")[Any vector $(x, y)$ in $RR^2$ can be written as:]
#v(20pt)  
#only("2-")[$((x+y)/2)(1, 1) + ((x-y)/2)(1, -1) = (x, y)$]
#v(20pt)
#only("3-")[Also, $(1, 1)$ and $(1, -1)$ are linearly independent.]

#only("1")[#voiceover("Now let's check option b. Any vector (x, y) in $RR^2$ can be written as...")]
#only("2")[#voiceover("(x plus y) over 2 times (1, 1) plus (x minus y) over 2 times (1, -1), which simplifies to (x, y).")]
#only("3")[#voiceover("Furthermore, (1, 1) and (1, -1) are linearly independent. One cannot be a scalar multiple of the other.")]  
]

#slide()[
#text(size: 30pt, weight: "bold")[Option c) ${(2, 3), (4, 6)}$]
#v(40pt)
#only("1-")[$(4, 6) = 2(2, 3)$, so these vectors are linearly dependent.]
#v(20pt)
#only("2-")[They do not span $RR^2$, as not every vector can be written as a linear combination of them.]

#only("1")[#voiceover("Finally, let's look at option c. We see that (4, 6) equals 2 times (2, 3). This means these vectors are linearly dependent.")]
#only("2")[#voiceover("Consequently, they cannot span $RR^2$. There will be vectors in $RR^2$ that cannot be expressed as a linear combination of (2, 3) and (4, 6).")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Conclusion]
#v(40pt)  
#only("1-")[Both ${(1, 0), (0, 1)}$ and ${(1, 1), (1, -1)}$ are generating sets for $RR^2$. ✅]
#v(20pt)
#only("2-")[They span $RR^2$ and are linearly independent. 🎉]
#v(20pt)  
#only("3-")[${(2, 3), (4, 6)}$ is not a generating set, as these vectors are linearly dependent. ❌]

#only("1")[#voiceover("In conclusion, both the sets {(1, 0), (0, 1)} and {(1, 1), (1, -1)} are generating sets for $RR^2$.")]
#only("2")[#voiceover("They span the entire space $RR^2$ and are linearly independent, fulfilling the criteria for a generating set.")]
#only("3")[#voiceover("On the other hand, {(2, 3), (4, 6)} is not a generating set, as these vectors are linearly dependent. Therefore, the correct answer is 'Both a and b'.")]
]