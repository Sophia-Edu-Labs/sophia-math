#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Subspace Criteria]
#v(40pt)
A subspace must be \_\_\_\_\_ under vector addition and scalar multiplication.
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false.
#only("-1")[a) open]#only("2-")[#text(fill:red)[a) open]] 
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) closed]#only("3-")[#text(fill:green)[b) closed]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) finite]#only("4-")[#text(fill:red)[c) finite]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) infinite]#only("5-")[#text(fill:red)[d) infinite]]

#only("1")[#voiceover("Not quite. Let's review the correct solution.")]
#only("2")[#voiceover("Option a), open, is incorrect. A subspace does not need to be open. In fact, all subspaces are closed sets.")]
#only("3")[#voiceover("Option b), closed, is the correct answer. A subspace must be closed under vector addition and scalar multiplication. This means that when you add any two vectors in the subspace or multiply any vector by a scalar, the result must still be in the subspace.")]
#only("4")[#voiceover("Option c), finite, is incorrect. A subspace can be finite-dimensional, but it doesn't have to be. For example, the space of all polynomials is an infinite-dimensional subspace of the space of all functions.")]
#only("5")[#voiceover("Option d), infinite, is also incorrect. As mentioned, a subspace can be infinite-dimensional, but it can also be finite-dimensional.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Subspace Criteria]
#v(40pt)
#only("1-")[To be a subspace, a subset of a vector space must satisfy three criteria:]
#v(20pt)
#only("2-")[1️⃣ Contains the zero vector]
#v(10pt)
#only("3-")[2️⃣ Closed under vector addition]
#v(10pt)
#only("4-")[3️⃣ Closed under scalar multiplication]
#v(20pt)
#only("5-")[Let's see what "closed" means...]

#only("1")[#voiceover("Let's look at the criteria for a subset to be a subspace in more detail.")]
#only("2")[#voiceover("First, the subset must contain the zero vector. This is because the zero vector is the identity element for vector addition.")]
#only("3")[#voiceover("Second, the subset must be closed under vector addition. This means that if $vec(u)$ and $vec(v)$ are in the subset, then $vec(u) + vec(v)$ must also be in the subset.")]
#only("4")[#voiceover("Third, the subset must be closed under scalar multiplication. This means that if $vec(u)$ is in the subset and $c$ is a scalar, then $c vec(u)$ must also be in the subset.")]
#only("5")[#voiceover("Let's dive deeper into what it means for a set to be closed under an operation.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Closure]
#v(40pt)
#only("1-")[A set $S$ is #text(weight: "bold")[closed] under an operation if performing that operation on elements of $S$ always produces an element that is also in $S$.]
#v(20pt)
#only("2-")[Example: The integers $ℤ$ are closed under addition.]
#v(10pt)
#only("3-")[If $a, b ∈ ℤ$, then $a + b ∈ ℤ$.]
#v(20pt)
#only("4-")[But $ℤ$ is not closed under division.]
#v(10pt)
#only("5-")[If $a = 1$ and $b = 2$, then $a/b = 1/2 ∉ ℤ$.]

#only("1")[#voiceover("A set is closed under an operation if performing that operation on elements of the set always produces an element that is also in the set.")]
#only("2")[#voiceover("For example, the set of integers, denoted by the symbol Z, is closed under addition.")]
#only("3")[#voiceover("This means that if a and b are any two integers, then their sum a plus b is also an integer.")]
#only("4")[#voiceover("However, the integers are not closed under division.")]
#only("5")[#voiceover("For instance, if we take the integers 1 and 2, then 1 divided by 2 is 1/2, which is not an integer.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Subspace Closure]
#v(40pt)
#only("1-")[For a subset $U$ of a vector space $V$ to be a subspace, it must be closed under:]
#v(20pt)
#only("2-")[1️⃣ Vector addition: If $vec(u), vec(v) ∈ U$, then $vec(u) + vec(v) ∈ U$.]
#v(10pt)
#only("3-")[2️⃣ Scalar multiplication: If $vec(u) ∈ U$ and $c ∈ ℝ$, then $c vec(u) ∈ U$.]
#v(20pt)
#only("4-")[If $U$ satisfies these closure properties (and contains the zero vector), then it's a subspace of $V$. 🌟]

#only("1")[#voiceover("Now let's apply the concept of closure to subspaces.")]
#only("2")[#voiceover("For a subset U of a vector space V to be a subspace, it must be closed under vector addition. This means that if u and v are any two vectors in U, then their sum u plus v must also be in U.")]
#only("3")[#voiceover("The subset U must also be closed under scalar multiplication. This means that if u is any vector in U and c is any real number, then the scalar multiple c times u must also be in U.")]
#only("4")[#voiceover("If a subset U satisfies these closure properties and also contains the zero vector, then it qualifies as a subspace of the vector space V.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Subspaces must be closed under vector addition and scalar multiplication. ➕🔢]
#v(20pt)
#only("2-")[- A set is closed under an operation if the result of the operation is always in the set. 🔒]
#v(20pt)
#only("3-")[- Subspaces must also contain the zero vector. 0️⃣]
#v(20pt)
#only("4-")[- These criteria ensure that subspaces preserve the vector space structure. 🏛️]

#only("1")[#voiceover("To summarize, subspaces must be closed under vector addition and scalar multiplication.")]
#only("2")[#voiceover("A set is closed under an operation if performing the operation on elements of the set always produces a result that is also in the set.")]
#only("3")[#voiceover("In addition to the closure properties, a subspace must also contain the zero vector.")]
#only("4")[#voiceover("These criteria ensure that subspaces inherit and preserve the essential structure of the parent vector space.")]
]