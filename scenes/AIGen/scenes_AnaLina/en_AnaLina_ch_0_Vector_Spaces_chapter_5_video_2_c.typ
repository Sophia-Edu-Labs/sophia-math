#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Generating Sets]
#v(40pt)
#only("1-")[What must a generating set of a vector space do?]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false. 
#only("-1")[a) be linearly independent]#only("2-")[#text(fill:red)[a) be linearly independent]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) contain the zero vector]#only("3-")[#text(fill:red)[b) contain the zero vector]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned green, because it is correct.
#only("-3")[c) span the entire vector space]#only("4-")[#text(fill:green)[c) span the entire vector space]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) be finite]#only("5-")[#text(fill:red)[d) be finite]]
#only("1")[#voiceover("That's right, great job!")]
#only("2")[#voiceover("Option a) is incorrect. A generating set does not need to be linearly independent. It's possible for a generating set to have redundant vectors.")]
#only("3")[#voiceover("Option b) is also incorrect. A generating set does not need to contain the zero vector. In fact, the zero vector is always trivially a linear combination of any set of vectors.")]
#only("4")[#voiceover("Option c) is correct! A generating set must span the entire vector space. This means that every vector in the space can be written as a linear combination of the vectors in the generating set.")]
#only("5")[#voiceover("Finally, option d) is incorrect. A generating set does not need to be finite. Some vector spaces, like the space of all polynomials, have infinite generating sets.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example]
#v(40pt)
#only("1-")[Consider $RR^2$. Which of these sets is a generating set for $RR^2$?]
#v(40pt)
#only("2-")[- $\{mat(1;0), mat(0;1)\}$ ✅]
#only("3-")[- This is the standard basis for $RR^2$. Every vector in $RR^2$ can be written as a linear combination of these vectors.]
#v(20pt)
#only("4-")[- $\{mat(1;1), mat(1;-1)\}$ ✅]
#only("5-")[- These vectors also span $RR^2$, even though they're not the standard basis vectors.]

#only("1")[#voiceover("Let's look at an example to solidify this concept.")]
#only("2")[#voiceover("The set containing the vectors (1; 0) and (0; 1) is a generating set for R 2.")]
#only("3")[#voiceover("This is because these are the standard basis vectors for R 2. Every vector in R 2 can be written as a linear combination of these two vectors.")]
#only("4")[#voiceover("The set containing the vectors (1; 1) and (1; -1) is also a generating set for R 2.")]
#only("5")[#voiceover("Even though these aren't the standard basis vectors, they still span all of R 2. You can create any vector in R 2 by adding multiples of these vectors.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example (cont.)]
#v(40pt)
#only("1-")[- $\{mat(2;3), mat(4;6)\}$ ❌]
#only("2-")[- These vectors are linearly dependent (one is a scalar multiple of the other), so they don't span all of $RR^2$.]
#v(20pt)
#only("3-")[- $\{mat(1;0;0), mat(0;1;0), mat(0;0;1)\}$ ❌]
#only("4-")[- These vectors span $RR^3$, not $RR^2$.]

#only("1")[#voiceover("However, the set containing (2; 3) and (4; 6) is not a generating set for R 2.")]
#only("2")[#voiceover("These vectors are linearly dependent, as (4; 6) is just 2 times (2; 3). They only span a line in R 2, not the entire space.")]
#only("3")[#voiceover("Similarly, the set containing (1; 0; 0), (0; 1; 0), and (0; 0; 1) is not a generating set for R 2.")]
#only("4")[#voiceover("These are the standard basis vectors for R 3, not R 2. They span a three-dimensional space, not a two-dimensional one.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(40pt)
#only("1-")[- A generating set must span the entire vector space 🌌]
#v(20pt)
#only("2-")[- It doesn't need to be linearly independent or finite 🧮]
#v(20pt)
#only("3-")[- Different sets can be generating sets for the same space 🔄]
#v(20pt)
#only("4-")[- The dimension of the space matters - vectors that span $RR^3$ don't necessarily span $RR^2$ 📏]

#only("1")[#voiceover("To summarize, the key property of a generating set is that it must span the entire vector space.")]
#only("2")[#voiceover("It doesn't need to be linearly independent or finite. Redundant vectors and infinite sets are allowed, as long as they span the space.")]
#only("3")[#voiceover("Different sets of vectors can be generating sets for the same vector space. The standard basis vectors aren't the only option.")]
#only("4")[#voiceover("But the dimension of the space is important. A set of vectors that spans a higher-dimensional space like R 3 won't necessarily span a lower-dimensional space like R 2.")]
]