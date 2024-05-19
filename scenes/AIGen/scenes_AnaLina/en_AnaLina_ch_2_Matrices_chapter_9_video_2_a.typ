#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Transposition of Matrices]
#v(40pt)
What is $(A^T)^T$ equal to?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct. 
#only("-1")[a) $A$]#only("2-")[#text(fill:green)[a) $A$]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) $A^T$]#only("3-")[#text(fill:red)[b) $A^T$]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) $-A$]#only("4-")[#text(fill:red)[c) $-A$]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) $A + A^T$]#only("5-")[#text(fill:red)[d) $A + A^T$]]
#v(40pt)

#only("1")[#voiceover("Great job! You're absolutely right.")]
// Very briefly Talk about a and why it is correct
#only("2")[#voiceover("a) $A$ is the correct answer. Taking the transpose of the transpose of a matrix $A$ results in the original matrix $A$.")]
// Very briefly Talk about b and why it is incorrect
#only("3")[#voiceover("b) $A^T$ is incorrect. This would mean that taking the transpose twice does nothing, which is not the case.")]
// Very briefly Talk about c and why it is incorrect
#only("4")[#voiceover("c) $-A$ is also incorrect. Transposition does not change the sign of the elements.")]
// Very briefly Talk about d and why it is incorrect
#only("5")[#voiceover("And d) $A + A^T$ is incorrect as well. Transposition is not related to addition of matrices.")]

]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[Let's consider a matrix $A$:]
#v(20pt)
#only("2-")[
$A = mat(
  a_(11), a_(12), a_(13);
  a_(21), a_(22), a_(23);
  a_(31), a_(32), a_(33)
)$
]
#v(20pt)
#only("3-")[The transpose $A^T$ is obtained by interchanging rows and columns:]
#v(20pt)
#only("4-")[
$A^T = mat(
  a_(11), a_(21), a_(31);
  a_(12), a_(22), a_(32);
  a_(13), a_(23), a_(33)
)$
]
#v(20pt)
#only("5-")[Now, let's take the transpose of $A^T$:]
#v(20pt)
#only("6-")[
$(A^T)^T = mat(
  a_(11), a_(12), a_(13);
  a_(21), a_(22), a_(23);
  a_(31), a_(32), a_(33)
)$
]
#v(20pt)
#only("7-")[We see that $(A^T)^T = A$. 🎉]

#only("1")[#voiceover("Let's solve this step by step. We start with a general matrix $A$.")]
#only("2")[#voiceover("Suppose $A$ is a 3 by 3 matrix with elements $a sub ij$, where $i$ is the row index and $j$ is the column index.")]
#only("3")[#voiceover("To find the transpose of $A$, denoted as $A^T$, we interchange the rows and columns.")]
#only("4")[#voiceover("So, the first row of $A^T$ is the first column of $A$, the second row of $A^T$ is the second column of $A$, and so on.")]
#only("5")[#voiceover("Now, let's consider taking the transpose of $A^T$.")]
#only("6")[#voiceover("When we interchange the rows and columns of $A^T$, we get the original matrix $A$ back.")]
#only("7")[#voiceover("Therefore, we can conclude that $(A^T)^T$ is always equal to $A$, no matter what $A$ is. This is a fundamental property of matrix transposition.")]

]

#slide()[
#text(size: 30pt, weight: "bold")[Visualization]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt
import numpy as np

def plot_matrix(matrix, title):
    fig, ax = plt.subplots()
    ax.matshow(matrix, cmap='viridis')
    for i in range(matrix.shape[0]):
        for j in range(matrix.shape[1]):
            ax.text(j, i, str(matrix[i, j]), va='center', ha='center')
    ax.set_title(title)
    ax.set_xticks([])
    ax.set_yticks([])
    plt.show()

A = np.array([[1, 2, 3], [4, 5, 6], [7, 8, 9]])
AT = A.T
ATT = AT.T

plot_matrix(A, 'Matrix A')
plot_matrix(AT, 'Transpose of A')
plot_matrix(ATT, 'Transpose of Transpose of A')
```,
width: 360pt),
)
]
]
#v(40pt)
#only("1")[#voiceover("Here's a visual representation to solidify the concept.")]
#only("2")[#voiceover("The first image shows a 3 by 3 matrix $A$.")]
#only("3")[#voiceover("The second image shows the transpose of $A$, denoted as $A^T$. Notice how the rows and columns have been interchanged.")]
#only("4")[#voiceover("The third image shows the transpose of $A^T$, denoted as $(A^T)^T$. As you can see, it is identical to the original matrix $A$.")]
#only("5")[#voiceover("This visualization demonstrates the property $(A^T)^T = A$ in action. Remember, this holds true for any matrix $A$. 📐")]

]
]

#slide()[
#text(size: 30pt, weight: "bold")[Recap]
#v(40pt)
- The transpose of a matrix is obtained by interchanging its rows and columns. 🔄
#v(20pt)
- If $A$ is a matrix, then $(A^T)^T = A$. ✅
#v(20pt)
- This is a fundamental property of matrix transposition. 🎓
#v(20pt)
- It holds true for any matrix, regardless of its size or elements. 🌍

#only("1")[#voiceover("Let's recap what we've learned.")]
#only("2")[#voiceover("The transpose of a matrix is obtained by interchanging its rows and columns.")]
#only("3")[#voiceover("If $A$ is a matrix, then the transpose of the transpose of $A$, denoted as $(A^T)^T$, is equal to $A$ itself.")]
#only("4")[#voiceover("This is a fundamental property of matrix transposition and it holds true for any matrix, regardless of its size or elements.")]
#only("5")[#voiceover("Great work on mastering this concept! Keep up the good learning. 😊")]

]