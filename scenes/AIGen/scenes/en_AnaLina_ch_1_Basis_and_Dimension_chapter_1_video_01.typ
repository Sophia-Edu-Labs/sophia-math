#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Linear Independence Test]
// The title "Linear Independence Test" is shown on this slide
#v(40pt)
#only("1-")[- Set up matrix with vectors as columns 🏛]
// The point about setting up the matrix is shown from slide 1 onward
#v(20pt)
#only("2-")[- Row reduce the matrix 🔄]
// The point about row reducing the matrix is shown from slide 2 onward
#v(20pt)
#only("3-")[- Check if the only solution is the trivial solution 🎯]
// The point about checking for the trivial solution is shown from slide 3 onward
#only("1")[
#voiceover("To test if a set of vectors is linearly independent, we first set up a matrix with the vectors as columns.")
]
#only("2")[
#voiceover("Then, we row reduce this matrix.")
]
#only("3")[
#voiceover("Finally, we check if the only solution to the resulting equation is the trivial solution, meaning all variables equal zero.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example]
#v(40pt)
#only("1-")[Consider the vectors $mat(1;2)$ and $mat(3;4)$. Are they linearly independent? 🤔]
#v(20pt)
#only("2-")[Step 1: Set up the matrix $mat(1,3;2,4)$ 🏛]
#v(20pt)
#only("3-")[Step 2: Row reduce to $mat(1,0;0,1)$ 🔄]
#v(20pt)
#only("4-")[Step 3: The only solution is $x_1=0$ and $x_2=0$ 🎯]
#v(20pt)
#only("5-")[Therefore, the vectors are linearly independent! ✅]
#only("1")[
#voiceover("Let's consider an example. Are the vectors 1, 2 and 3, 4 linearly independent?")
]
#only("2")[
#voiceover("First, we set up the matrix with these vectors as columns. This gives us the matrix 1, 3; 2, 4.")
]
#only("3")[
#voiceover("Next, we row reduce this matrix. After row reduction, we get the identity matrix 1, 0; 0, 1.")
]
#only("4")[
#voiceover("Now, we check for the solution. The only solution to this system is x sub 1 equals 0 and x sub 2 equals 0, which is the trivial solution.")
]
#only("5")[
#voiceover("Since the only solution is the trivial solution, we can conclude that the vectors 1, 2 and 3, 4 are linearly independent!")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
// The title "Summary" is shown on this slide
#v(40pt)
#only("1-")[1. Set up matrix with vectors as columns 🏛]
// The first summary point is shown from slide 1 onward
#v(20pt)
#only("2-")[2. Row reduce the matrix 🔄]
// The second summary point is shown from slide 2 onward
#v(20pt)
#only("3-")[3. Check if the only solution is the trivial solution 🎯]
// The third summary point is shown from slide 3 onward
#v(20pt)
#only("4-")[If so, the vectors are linearly independent! ✅]
// The conclusion is shown from slide 4 onward
#only("1")[
#voiceover("To recap, when testing for linear independence, we first set up a matrix with the vectors as columns.")
]
#only("2")[
#voiceover("Then, we row reduce this matrix.")
]
#only("3")[
#voiceover("After that, we check if the only solution to the resulting equation is the trivial solution.")
]
#only("4")[
#voiceover("If the trivial solution is indeed the only solution, then the vectors are linearly independent!")
]
]