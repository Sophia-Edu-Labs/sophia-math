#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Finding a Basis]
#v(40pt)
To find a basis for a vector space, we can start with a set of vectors that \_\_\_\_\_ the space and remove any linearly \_\_\_\_\_ vectors.
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct. 
#only("-1")[a) span, dependent]#only("2-")[#text(fill:green)[a) span, dependent]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) span, independent]#only("3-")[#text(fill:red)[b) span, independent]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) do not span, dependent]#only("4-")[#text(fill:red)[c) do not span, dependent]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) do not span, independent]#only("5-")[#text(fill:red)[d) do not span, independent]]
#only("1")[#voiceover("Not quite. Let's take a look at the correct solution.")]
#only("2")[#voiceover("To find a basis, we indeed start with a set of vectors that span the space and remove any linearly dependent vectors.")]
#only("3")[#voiceover("Option b is incorrect because if we remove linearly independent vectors, we might not span the whole space anymore.")]
#only("4")[#voiceover("Option c is incorrect because we need vectors that span the space to start with.")]
#only("5")[#voiceover("And option d is incorrect for the same reason as c - we need the vectors to span the space initially.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example]
#v(40pt)
Let's look at an example to illustrate the process.
#v(20pt)
#only("1-")[Consider the vector space spanned by $mat(1;2;3)$, $mat(2;4;6)$, $mat(3;6;9)$.]
#v(20pt)
#only("2-")[- These vectors span $RR^3$ 🌌]
#v(10pt)
#only("3-")[- But they are linearly dependent 🔗]
#v(10pt)
#only("4-")[- We can remove any one vector and still span the space 🗑️]
#v(10pt)
#only("5-")[A basis is $mat(1;2;3)$ 🎉]
#only("1")[#voiceover("Consider the vector space spanned by the vectors (1; 2; 3), (2; 4; 6), and (3; 6; 9).")]
#only("2")[#voiceover("These vectors span the space R 3, as you can reach any point in 3D space with a linear combination of these vectors.")]
#only("3")[#voiceover("However, these vectors are linearly dependent. You can write one of them as a linear combination of the others.")]
#only("4")[#voiceover("This means we can remove any one of these vectors, and the remaining two will still span the space.")]
#only("5")[#voiceover("So a basis for this space is just (1; 2; 3). We've removed the linearly dependent vectors while still spanning the space.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(40pt)
#only("1-")[- Start with vectors that span the space 🌌]
#v(20pt)
#only("2-")[- Remove linearly dependent vectors 🗑️]
#v(20pt)
#only("3-")[- Remaining vectors form a basis 🎉]
#v(20pt)
#only("4-")[Remember: A basis is a minimal spanning set! 🧠]
#only("1")[#voiceover("To summarize, when finding a basis, start with a set of vectors that span the space.")]
#only("2")[#voiceover("Then, remove any linearly dependent vectors. You don't need them to span the space.")]
#only("3")[#voiceover("The vectors that remain after this process form a basis for the space.")]
#only("4")[#voiceover("Always remember, a basis is a minimal spanning set. It's the smallest set of vectors that can span the entire space.")]
]