#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Linear Mapping Representation]
#v(40pt)
#only("1-")[A linear mapping can be represented by a \_\_\_\_\_.]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false. 
#only("-1")[a) vector]#only("2-")[#text(fill:red)[a) vector]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) matrix]#only("3-")[#text(fill:green)[b) matrix]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) scalar]#only("4-")[#text(fill:red)[c) scalar]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) polynomial]#only("5-")[#text(fill:red)[d) polynomial]]
#only("1")[#voiceover("Great job, that's the correct answer!")]
#only("2")[#voiceover("A vector is incorrect. While a vector is an element that a linear mapping can act upon, it does not represent the mapping itself.")]
#only("3")[#voiceover("A matrix is the correct answer. A matrix can fully define a linear transformation from one vector space to another.")]
#only("4")[#voiceover("A scalar is incorrect. A scalar is a single number, which is not enough information to define a linear mapping between vector spaces.")]
#only("5")[#voiceover("A polynomial is also incorrect. Polynomials are a type of function, but they do not directly represent linear mappings.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Why a Matrix? 🤔]
#v(40pt)
#only("1-")[A matrix can represent a linear mapping because:]
#v(20pt)
#only("2-")[1️⃣ It transforms #text(fill:aqua)[coordinates] from one basis to another.]
#v(10pt)
#only("3-")[2️⃣ Matrix #text(fill:aqua)[multiplication] with a vector performs the linear transformation.]
#v(10pt)
#only("4-")[3️⃣ The #text(fill:aqua)[columns] of the matrix are the images of the basis vectors.]

#only("1")[#voiceover("So why exactly can a matrix represent a linear mapping?")]
#only("2")[#voiceover("First, remember that a linear mapping transforms coordinates from one basis to another. A matrix can encode this transformation.")]
#only("3")[#voiceover("When we multiply a matrix by a vector, it performs a linear transformation on that vector, transforming its coordinates.")]
#only("4")[#voiceover("Specifically, the columns of the matrix are the images of the basis vectors under the linear transformation. So the matrix fully defines the mapping.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example 📚]
#v(40pt)
#only("1-")[Consider the linear mapping $T: RR^2 -> RR^2$ defined by $T(x, y) = (2x, 3y)$.]
#v(20pt)
#only("2-")[The standard basis vectors in $RR^2$ are $mat(1;0)$ and $mat(0;1)$.]
#v(20pt)
#only("3-")[Under $T$, these map to:]
#only("3-")[$T(mat(1;0)) = mat(2;0)$]
#only("3-")[$T(mat(0;1)) = mat(0;3)$]
#v(20pt)
#only("4-")[So the matrix representation of $T$ is:]
#only("4-")[$mat(2, 0; 0, 3)$]

#only("1")[#voiceover("Let's look at an example. Consider the linear mapping T from R-2 to R-2 defined by T of x, y equals 2x, 3y.")]
#only("2")[#voiceover("The standard basis vectors in R-2 are 1, 0 and 0, 1.")]
#only("3")[#voiceover("Under the transformation T, these basis vectors map to 2, 0 and 0, 3 respectively.")]
#only("4")[#voiceover("Therefore, the matrix representation of T has these transformed basis vectors as its columns. It is the matrix 2, 0; 0, 3.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary 🎯]
#v(40pt)
#only("1-")[- A linear mapping can be represented by a #text(fill:green)[matrix].]
#v(20pt)
#only("2-")[- The matrix #text(fill:aqua)[transforms coordinates] from one basis to another.]
#v(20pt)
#only("3-")[- Its #text(fill:aqua)[columns] are the images of the basis vectors under the mapping.]
#v(20pt)
#only("4-")[Great work on this question! 🌟 You're mastering the concept of linear mappings and their matrix representations. Keep it up! 😄]

#only("1")[#voiceover("To summarize, a linear mapping can be represented by a matrix.")]
#only("2")[#voiceover("This matrix transforms coordinates from one basis to another.")]
#only("3")[#voiceover("And its columns are the images of the basis vectors under the mapping.")]
#only("4")[#voiceover("Great work on this question! You're mastering the concept of linear mappings and their matrix representations. Keep it up!")]
]