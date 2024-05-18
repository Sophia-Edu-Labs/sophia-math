#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Subspace Question]
#v(40pt)
#only("1-")[Which of the following subsets of $RR^2$ is a subspace?]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false.
#only("-1")[a) The set of all vectors with positive components]#only("2-")[#text(fill:red)[a) The set of all vectors with positive components]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) The set of all vectors with integer components]#only("3-")[#text(fill:red)[b) The set of all vectors with integer components]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned green, because it is correct.
#only("-3")[c) The set of all vectors of the form $(x, 2 x)$]#only("4-")[#text(fill:green)[c) The set of all vectors of the form $(x, 2 x)$]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) The set of all vectors with at least one zero component]#only("5-")[#text(fill:red)[d) The set of all vectors with at least one zero component]]
#only("1")[#voiceover("Great job! That's the correct answer.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[To be a subspace, a subset must satisfy three conditions:]
#v(20pt)
#only("2-")[1️⃣ Contains the zero vector]
#only("3-")[2️⃣ Closed under vector addition]
#only("4-")[3️⃣ Closed under scalar multiplication]
#v(40pt)
#only("5-")[Let's check each subset...]
#only("1")[#voiceover("To determine if a subset is a subspace, we need to check three conditions: it must contain the zero vector, be closed under vector addition, and be closed under scalar multiplication.")]
#only("2")[#voiceover("First, the subset must contain the zero vector $(0, 0)$.")]
#only("3")[#voiceover("Second, if we add any two vectors in the subset, the result must also be in the subset.")]
#only("4")[#voiceover("And third, if we multiply any vector in the subset by a scalar, the result must still be in the subset.")]
#only("5")[#voiceover("Now, let's check each of the given subsets against these criteria.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Checking Subset a)]
#v(40pt)
#only("1-")[a) The set of all vectors with positive components]
#v(20pt)
#only("2-")[❌ Does not contain the zero vector $(0, 0)$]
#v(20pt)
#only("3-")[Therefore, not a subspace.]
#only("1")[#voiceover("Subset a is the set of all vectors with positive components.")]
#only("2")[#voiceover("This set does not contain the zero vector $(0, 0)$, because zero is not positive.")]
#only("3")[#voiceover("Since it fails the first condition, this set is not a subspace. We don't even need to check the other conditions.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Checking Subset b)]
#v(40pt)
#only("1-")[b) The set of all vectors with integer components]
#v(20pt)
#only("2-")[✅ Contains the zero vector $(0, 0)$]
#v(20pt)
#only("3-")[✅ Closed under vector addition]
#v(20pt)
#only("4-")[❌ Not closed under scalar multiplication]
#v(20pt)
#only("5-")[Therefore, not a subspace.]
#only("1")[#voiceover("Subset b is the set of all vectors with integer components.")]
#only("2")[#voiceover("This set does contain the zero vector $(0, 0)$, because 0 is an integer.")]
#only("3")[#voiceover("It's also closed under vector addition. If we add two vectors with integer components, the result will also have integer components.")]
#only("4")[#voiceover("However, it's not closed under scalar multiplication. If we multiply a vector with integer components by a non-integer scalar, the result will not have integer components.")]
#only("5")[#voiceover("Since it fails the third condition, this set is not a subspace.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Checking Subset c)]
#v(40pt)
#only("1-")[c) The set of all vectors of the form $(x, 2 x)$]
#v(20pt)
#only("2-")[✅ Contains the zero vector $(0, 0)$]
#v(20pt)
#only("3-")[✅ Closed under vector addition]
#v(20pt)
#only("4-")[✅ Closed under scalar multiplication]
#v(20pt)
#only("5-")[Therefore, it is a subspace! 🎉]
#only("1")[#voiceover("Subset c is the set of all vectors of the form $(x, 2 x)$, where $x$ is a real number.")]
#only("2")[#voiceover("This set contains the zero vector $(0, 0)$, because we can choose $x = 0$.")]
#only("3")[#voiceover("It's closed under vector addition. If we add two vectors of the form $(x, 2 x)$, the result will also be of the form $(x, 2 x)$.")]
#only("4")[#voiceover("It's also closed under scalar multiplication. If we multiply a vector of the form $(x, 2 x)$ by any scalar, the result will still be of the form $(x, 2 x)$.")]
#only("5")[#voiceover("Since it satisfies all three conditions, this set is indeed a subspace!")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Checking Subset d)]
#v(40pt)
#only("1-")[d) The set of all vectors with at least one zero component]
#v(20pt)
#only("2-")[✅ Contains the zero vector $(0, 0)$]
#v(20pt)
#only("3-")[❌ Not closed under vector addition]
#v(20pt)
#only("4-")[Therefore, not a subspace.]
#only("1")[#voiceover("Subset d is the set of all vectors with at least one zero component.")]
#only("2")[#voiceover("This set does contain the zero vector $(0, 0)$, because both of its components are zero.")]
#only("3")[#voiceover("However, it's not closed under vector addition. For example, $(1, 0)$ and $(0, 1)$ are in the set, but their sum $(1, 1)$ is not, because it has no zero components.")]
#only("4")[#voiceover("Since it fails the second condition, this set is not a subspace. We don't need to check the third condition.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Subset a) is not a subspace.]
#v(20pt)
#only("2-")[- Subset b) is not a subspace.]
#v(20pt)
#only("3-")[- Subset c) is a subspace! 🌟]
#v(20pt)
#only("4-")[- Subset d) is not a subspace.]
#v(40pt)
#only("5-")[Remember the three conditions for a subspace: 1️⃣ Contains zero vector, 2️⃣ Closed under addition, 3️⃣ Closed under scalar multiplication.]
#only("1")[#voiceover("To summarize, subset a is not a subspace because it doesn't contain the zero vector.")]
#only("2")[#voiceover("Subset b is not a subspace because it's not closed under scalar multiplication.")]
#only("3")[#voiceover("Subset c is a subspace because it satisfies all three conditions.")]
#only("4")[#voiceover("And subset d is not a subspace because it's not closed under vector addition.")]
#only("5")[#voiceover("Always remember the three conditions for a subset to be a subspace: it must contain the zero vector, be closed under vector addition, and be closed under scalar multiplication.")]
]