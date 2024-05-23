#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Let's recap what we've learned about the rank of a matrix.")
]
#text(size: 30pt, weight: "bold")[Rank of a Matrix]
#v(40pt)
#only("2")[
#voiceover("The rank of a matrix is defined as the maximum number of linearly independent row or column vectors in the matrix.")
]
#only("2-")[
- Maximum number of linearly independent vectors 🧮
]
#only("3")[
#voiceover("We can find the rank by transforming the matrix into its row echelon form using Gaussian elimination.")
]
#only("3-")[
- Found using Gaussian elimination ➡️ row echelon form
]
#only("4")[
#voiceover("The rank helps us determine if a system of linear equations is solvable. The system is solvable if and only if the rank of the augmented matrix equals the rank of the coefficient matrix.")
]
#only("4-")[
- Determines solvability of linear systems 🔍
]
#only("5")[
#voiceover("The rank is also related to the invertibility of a matrix. A matrix is invertible if and only if its rank is equal to its number of rows or columns.")
]
#only("5-")[
- Related to invertibility of matrices ↔️
]
]

#slide()[
#only("1")[
#voiceover("Let's visualize the rank with an example.")
]
#text(size: 30pt, weight: "bold")[Example]
// The title "Example" is shown on this slide
#v(40pt)
#only("2")[
#voiceover("Consider the matrix A equals open parenthesis 1, 2, 3; 4, 5, 6; 7, 8, 9 close parenthesis.")
]
#only("2-")[
$A = mat(1, 2, 3; 4, 5, 6; 7, 8, 9)$
]
// The example matrix A is shown from slide 2 onward
#only("3")[
#voiceover("We can transform this into row echelon form using Gaussian elimination.")
]
#only("3-")[
$"Row Echelon Form" = mat(1, 0, -1; 0, 1, 2; 0, 0, 0)$
]
// The row echelon form of A is shown from slide 3 onward
#only("4")[
#voiceover("The rank is the number of non-zero rows in the row echelon form, which is 2 in this case.")
]
#only("4-")[
$"rank"(A) = 2$
]
// The rank of A is shown from slide 4 onward
#only("5")[
#voiceover("This means that at most 2 of the row or column vectors in A are linearly independent.")
]
#only("5-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt 
import numpy as np 

# Define the matrix 
A = np.array([[1, 2, 3], [4, 5, 6], [7, 8, 9]]) 

# Perform Gaussian elimination 
B = A.copy() 
lead = 0 
rowCount = len(B) 
columnCount = len(B[0]) 
for r in range(rowCount): 
    if lead >= columnCount: 
        break 
    i = r 
    while B[i][lead] == 0: 
        i += 1 
        if i == rowCount: 
            i = r 
            lead += 1 
            if columnCount == lead: 
                break 
    B[i], B[r] = B[r], B[i] 
    lv = B[r][lead] 
    B[r] = B[r] / lv 
    for i in range(rowCount): 
        if i != r: 
            lv = B[i][lead] 
            B[i] = B[i] - lv * B[r] 
    lead += 1 

# Plot the original matrix 
fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(10, 5)) 
ax1.imshow(A, cmap='viridis', aspect='equal') 
ax1.set_xticks([]) 
ax1.set_yticks([]) 
ax1.set_title('Original Matrix') 

# Plot the row echelon form 
ax2.imshow(B, cmap='viridis', aspect='equal') 
ax2.set_xticks([]) 
ax2.set_yticks([]) 
ax2.set_title('Row Echelon Form') 

plt.tight_layout() 
plt.show() 
```, 
width: 360pt), 
)
]
]
]
// The figure shows the original matrix A and its row echelon form side by side, visualizing the Gaussian elimination process. This figure is shown from slide 5 onward.
]

#slide()[
#only("1")[
#voiceover("To summarize the key points about the rank of a matrix:")
]
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("2-")[
- Maximum number of linearly independent vectors 🧮
]
#only("3-")[
- Found using Gaussian elimination ➡️ row echelon form
]
#only("4-")[
- Determines solvability of linear systems 🔍
]
#only("5-")[
- Related to invertibility of matrices ↔️
]
#only("2")[
#voiceover("The rank is the maximum number of linearly independent row or column vectors in the matrix.")
]
#only("3")[
#voiceover("We can find the rank by transforming the matrix into its row echelon form using Gaussian elimination.")
]
#only("4")[
#voiceover("The rank helps determine if a system of linear equations is solvable.")
]
#only("5")[
#voiceover("And the rank is related to the invertibility of a matrix.")
]
]