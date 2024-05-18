#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Subspace Question]
#v(40pt)
Which of the following is a subspace of $RR^3$?
#v(40pt)
#only("-1")[a) The set of all vectors with integer components]#only("2-")[#text(fill:red)[a) The set of all vectors with integer components]]
#v(10pt)
#only("-2")[b) The set of all vectors with non-negative components]#only("3-")[#text(fill:red)[b) The set of all vectors with non-negative components]]
#v(10pt)
#only("-3")[c) The set of all vectors lying on a plane through the origin]#only("4-")[#text(fill:green)[c) The set of all vectors lying on a plane through the origin]]
#v(10pt)  
#only("-4")[d) The set of all vectors with at least one zero component]#only("5-")[#text(fill:red)[d) The set of all vectors with at least one zero component]]

#only("1")[#voiceover("Great job! You selected the correct answer.")]
#only("2")[#voiceover("Option a is incorrect. The set of all vectors with integer components is not closed under scalar multiplication. For example, if we take the vector (1, 2, 3) from this set and multiply it by 0.5, we get (0.5, 1, 1.5), which is not in the set.")]
#only("3")[#voiceover("Option b is also incorrect. The set of all vectors with non-negative components is not closed under vector addition. For instance, (1, 2, 3) and (-2, -3, -4) are both in this set, but their sum (-1, -1, -1) is not.")]
#only("4")[#voiceover("Option c is the correct answer. The set of all vectors lying on a plane through the origin is indeed a subspace. It's closed under addition and scalar multiplication, and it contains the zero vector.")]
#only("5")[#voiceover("Finally, option d is incorrect. The set of all vectors with at least one zero component is not closed under vector addition. For example, (1, 0, 2) and (3, 4, 0) are in this set, but their sum (4, 4, 2) is not.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
To check if a set is a subspace, we need to verify three conditions:
#v(20pt)
#only("1-")[1) It contains the zero vector]
#v(10pt)
#only("2-")[2) It's closed under vector addition]
#v(10pt)  
#only("3-")[3) It's closed under scalar multiplication]
#v(40pt)
#only("4-")[Let's check these conditions for option c) The set of all vectors lying on a plane through the origin:]
#v(40pt)

#only("1")[#voiceover("To determine if a set is a subspace, we need to check three conditions.")]
#only("2")[#voiceover("First, the set must contain the zero vector.")]
#only("3")[#voiceover("Second, it must be closed under vector addition. This means if we add any two vectors in the set, their sum should also be in the set.")]
#only("4")[#voiceover("Third, it must be closed under scalar multiplication. If we multiply any vector in the set by a scalar, the result should still be in the set. Now, let's verify these conditions for the correct answer, option c.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Checking Subspace Conditions]
#v(40pt)
#only("1-")[1) Contains the zero vector: ✅]
#v(10pt)
#only("2-")[   The plane through the origin always contains the origin, which is the zero vector.]
#v(40pt)  
#only("3-")[2) Closed under vector addition: ✅]
#v(10pt)
#only("4-")[   If $vec(u)$ and $vec(v)$ lie on the plane, then $vec(u) + vec(v)$ also lies on the same plane.]
#v(40pt)
#only("5-")[3) Closed under scalar multiplication: ✅]  
#v(10pt)
#only("6-")[   If $vec(u)$ lies on the plane and $c$ is a scalar, then $c vec(u)$ also lies on the same plane.]

#only("1")[#voiceover("First, the set of all vectors lying on a plane through the origin always contains the zero vector, because the origin lies on every plane that passes through it.")]
#only("2")[#voiceover("So condition one is satisfied.")]
#only("3")[#voiceover("Second, if we take any two vectors u and v that lie on the plane...")]
#only("4")[#voiceover("...then their sum, u plus v, will also lie on the same plane. This is because vector addition corresponds to combining the directions and magnitudes of the vectors, which will always result in a vector that's still on the plane. So condition two is satisfied.")]
#only("5")[#voiceover("Third, if we take any vector u that lies on the plane and multiply it by a scalar c...")]  
#only("6")[#voiceover("...the resulting vector c times u will also lie on the same plane. Scalar multiplication only changes the magnitude and possibly the direction of the vector, but it doesn't take it off the plane. So condition three is also satisfied.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Conclusion]
#v(40pt)
#only("1-")[Since all three subspace conditions are satisfied, we can conclude:]
#v(40pt)
#only("2-")[The set of all vectors lying on a plane through the origin is indeed a subspace of $RR^3$. 🌠]
#v(40pt)
#only("3-")[#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt 
import numpy as np 
point = np.array([0, 0, 0]) 
normal = np.array([1, 1, 1]) 
d = -point.dot(normal) 
xx, yy = np.meshgrid(range(-5,6), range(-5,6)) 
z = (-normal[0] * xx - normal[1] * yy - d) * 1. / normal[2] 
plt.figure(figsize=(8,8)) 
plt.plot([0],[0],[0],'o',color='black',markersize=10) 
plt.plot_surface(xx, yy, z, alpha=0.2) 
plt.quiver([0],[0],[0],[1],[1],[1],color='red',arrow_length_ratio=0.1) 
plt.text(1,1,1,'Normal Vector',color='red') 
plt.xlim(-5,5) 
plt.ylim(-5,5) 
plt.xlabel('x') 
plt.ylabel('y') 
plt.title('Plane through the Origin in $RR^3$') 
plt.show() 
```, 
width: 360pt),
)
]
]]

#only("1")[#voiceover("Since the set of all vectors lying on a plane through the origin satisfies all three subspace conditions...")]
#only("2")[#voiceover("...we can conclude that it is indeed a subspace of R 3.")]
#only("3")[#voiceover("Here's a visualization of such a plane in R 3, passing through the origin. The red vector is the normal vector to the plane. Any vector lying on this plane will be part of the subspace.")]
]