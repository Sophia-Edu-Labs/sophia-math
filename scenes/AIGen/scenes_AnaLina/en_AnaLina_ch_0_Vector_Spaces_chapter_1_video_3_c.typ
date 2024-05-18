#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Question]
#v(40pt)
Which of the following is #text(weight: "bold")[not] a vector space? 
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct. 
#only("-1")[a) The set of all polynomials]#only("2-")[#text(fill:green)[a) The set of all polynomials]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) The set of all continuous functions]#only("3-")[#text(fill:green)[b) The set of all continuous functions]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned green, because it is correct.
#only("-3")[c) The set of all complex numbers]#only("4-")[#text(fill:green)[c) The set of all complex numbers]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) The set of all non-negative real numbers]#only("5-")[#text(fill:red)[d) The set of all non-negative real numbers]]

#only("1")[#voiceover("That's okay! Let's take a look at the correct solution.")]
#only("2")[#voiceover("The set of all polynomials is indeed a vector space. Polynomials can be added together and multiplied by scalars, and the result is always another polynomial.")]
#only("3")[#voiceover("Similarly, the set of all continuous functions is a vector space. If you add two continuous functions or multiply a continuous function by a scalar, the result is always another continuous function.")]
#only("4")[#voiceover("The set of all complex numbers is also a vector space. Complex numbers can be added and multiplied by scalars (which can be real or complex), and the result is always another complex number.")]
#only("5")[#voiceover("However, the set of all non-negative real numbers is not a vector space. While you can multiply a non-negative number by a scalar and get another non-negative number, you can't always add two non-negative numbers and get another non-negative number. For example, 2 and -3 are both non-negative, but their sum, -1, is negative. So this set fails to be closed under addition, which is a requirement for a vector space.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[To check if a set is a vector space, it must satisfy these conditions:]
#v(20pt)
#only("2-")[1. Closed under addition ➕]
#v(10pt)
#only("3-")[2. Closed under scalar multiplication 🔢]
#v(10pt)
#only("4-")[3. Contains the zero vector 0️⃣]
#v(40pt)
#only("5-")[Let's check each set:]
#v(20pt)
#only("6-")[a) Polynomials ✅]
#v(10pt)
#only("7-")[b) Continuous functions ✅]

#only("1")[#voiceover("To check if a set is a vector space, it must satisfy three main conditions:")]
#only("2")[#voiceover("First, it must be closed under addition. This means if you add any two elements in the set, the result must also be in the set.")]
#only("3")[#voiceover("Second, it must be closed under scalar multiplication. If you multiply any element in the set by a scalar, the result must still be in the set.")]
#only("4")[#voiceover("Third, the set must contain the zero vector.")]
#only("5")[#voiceover("Let's check each of our sets against these criteria.")]
#only("6")[#voiceover("The set of polynomials satisfies all these conditions, so it is a vector space.")]
#only("7")[#voiceover("The set of continuous functions also satisfies these conditions, so it too is a vector space.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[Let's check each set (continued):]
#v(20pt)
#only("2-")[c) Complex numbers ✅]
#v(10pt)
#only("3-")[d) Non-negative reals ❌]
#v(40pt)
#only("4-")[The set of non-negative reals fails condition 1 because:]
#v(20pt)
#only("5-")[2 + (-3) = -1 ∉ set of non-negative reals]

#only("1")[#voiceover("The set of complex numbers also forms a vector space under these operations.")]
#only("2")[#voiceover("However, the set of non-negative real numbers fails to be a vector space.")]
#only("3")[#voiceover("Specifically, it fails the first condition, closure under addition.")]
#only("4")[#voiceover("For example, 2 and -3 are both non-negative, but their sum, -1, is negative and thus not in the set. Therefore, the set of non-negative reals is not closed under addition and is not a vector space.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(40pt)
#only("1-")[- Vector spaces must be closed under addition and scalar multiplication, and contain the zero vector 📋]
#v(20pt)
#only("2-")[- Sets of polynomials, continuous functions, and complex numbers are vector spaces ✅]
#v(20pt)
#only("3-")[- The set of non-negative real numbers is not a vector space because it's not closed under addition ❌]
#v(20pt)
#only("4-")[Great work on identifying the set that is not a vector space! 🌟]

#only("1")[#voiceover("Remember, for a set to be a vector space, it must be closed under addition and scalar multiplication, and it must contain the zero vector.")]
#only("2")[#voiceover("Sets of polynomials, continuous functions, and complex numbers are all examples of vector spaces because they satisfy these conditions.")]
#only("3")[#voiceover("On the other hand, the set of non-negative real numbers is not a vector space because it's not closed under addition. You can find two non-negative numbers that add up to a negative number.")]
#only("4")[#voiceover("Great work on identifying the set that is not a vector space! Keep up the good work in your linear algebra studies.")]
]