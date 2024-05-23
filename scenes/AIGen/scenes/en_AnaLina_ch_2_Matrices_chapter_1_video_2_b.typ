#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Row Matrix]
#v(40pt)
#only("1-")[Which of the following is a row matrix?]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false.
#only("-1")[a) $mat(1; 2; 3)$]#only("2-")[#text(fill:red)[a) $mat(1; 2; 3)$]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) $mat(1, 2, 3)$]#only("3-")[#text(fill:green)[b) $mat(1, 2, 3)$]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) $mat(1, 2; 3, 4)$]#only("4-")[#text(fill:red)[c) $mat(1, 2; 3, 4)$]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) $mat(0, 0; 0, 0)$]#only("5-")[#text(fill:red)[d) $mat(0, 0; 0, 0)$]]
#v(40pt)

#only("1")[#voiceover("Great job! That's the correct answer.")]
// Very briefly Talk about a and why it is incorrect
#only("2")[#voiceover("Option a) $mat(1; 2; 3)$ is not a row matrix. It is a column matrix, as the elements are separated by semicolons, indicating they are in different rows.")]
// Very briefly Talk about b and why it is correct
#only("3")[#voiceover("Option b) $mat(1, 2, 3)$ is indeed a row matrix. The elements are separated by commas, indicating they are in the same row.")]
// Very briefly Talk about c and why it is incorrect
#only("4")[#voiceover("Option c) $mat(1, 2; 3, 4)$ is not a row matrix. It is a 2x2 matrix with two rows and two columns.")]
// Very briefly Talk about d and why it is incorrect
#only("5")[#voiceover("Option d) $mat(0, 0; 0, 0)$ is also not a row matrix. It is a 2x2 zero matrix.")]

]

#slide()[
#text(size: 30pt, weight: "bold")[Explanation]
#v(40pt)
#only("1-")[A row matrix has the following properties:]
#v(20pt)
#only("2-")[- Elements are arranged in a #text(weight: "bold")[single row] 📏]
#only("3-")[- Elements are separated by #text(weight: "bold")[commas] ,]
#only("4-")[- Notation: $mat(a_1, a_2, ..., a_n)$]
#v(40pt)
#only("5-")[Example: $mat(1, 2, 3)$ is a row matrix with 3 elements.]

#only("1")[#voiceover("Let's discuss why option b) is the correct answer.")]
#only("2")[#voiceover("A row matrix is a matrix that has only one row. All its elements are arranged in a single horizontal line.")]
#only("3")[#voiceover("In the notation of a row matrix, the elements are separated by commas. This is in contrast to a column matrix, where the elements are separated by semicolons.")]
#only("4")[#voiceover("The general notation for a row matrix is $mat(a_1, a_2, ..., a_n)$, where $a_1$, $a_2$, up to $a_n$ are the elements of the matrix.")]
#only("5")[#voiceover("For example, $mat(1, 2, 3)$ is a row matrix with three elements: 1, 2, and 3. This matches the form of option b), confirming that it is the correct choice.")]
]