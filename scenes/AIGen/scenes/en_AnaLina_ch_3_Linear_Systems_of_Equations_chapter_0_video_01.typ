#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Linear System of Equations]
#v(40pt)
#only("1-")[- Multiple linear equations]
#v(20pt)
#only("2-")[- Same set of variables]
#v(20pt)
#only("3-")[Example: $x + y = 5$, $2x - y = 3$]
#only("1")[
#voiceover("A linear system of equations consists of multiple linear equations...")
]
#only("2")[
#voiceover("...that all involve the same set of variables.")
]
#only("3")[
#voiceover("For example, the equations 'x plus y equals 5' and '2x minus y equals 3' form a linear system because they both involve the variables x and y.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[General Form]
#v(40pt)
#only("1-")[$ a_1 x + b_1 y = c_1 $]
#v(20pt)
#only("2-")[$ a_2 x + b_2 y = c_2 $]
#v(20pt)
#only("3-")[$ ... $]
#v(20pt)
#only("4-")[$ a_n x + b_n y = c_n $]
#only("1")[
#voiceover("In general, a linear equation in two variables, x and y, has the form 'a1 times x plus b1 times y equals c1', where a1, b1, and c1 are constants.")
]
#only("2")[
#voiceover("A second equation in the system might be 'a2 times x plus b2 times y equals c2'.")
]
#only("3")[
#voiceover("And so on, up to the nth equation...")
]
#only("4")[
#voiceover("...'an times x plus bn times y equals cn'. All these equations together form the linear system.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Goal 🎯]
#v(40pt)
#only("1-")[Find values of variables that satisfy all equations simultaneously]
#v(20pt)
#only("2-")[Example: $x = 2$, $y = 3$ satisfies both $x + y = 5$ and $2x - y = 1$]
#only("1")[
#voiceover("The goal in solving a linear system is to find values of the variables that satisfy all the equations simultaneously.")
]
#only("2")[
#voiceover("For instance, x equals 2 and y equals 3 is a solution to the system 'x plus y equals 5' and '2x minus y equals 1', because these values make both equations true.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary 📝]
#v(40pt)
#only("1-")[- Linear system = multiple linear equations with same variables]
#v(20pt)
#only("2-")[- Goal: find values that satisfy all equations simultaneously]
#only("1")[
#voiceover("In summary, a linear system of equations is a collection of multiple linear equations that all involve the same set of variables.")
]
#only("2")[
#voiceover("The objective in solving such a system is to determine the values of the variables that make all the equations true at the same time.")
]
]