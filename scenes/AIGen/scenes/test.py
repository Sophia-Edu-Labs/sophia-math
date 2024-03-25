import matplotlib.pyplot as plt
import numpy as np
def f(x):
    return np.log(x**2+1) + 1/x**2 - 1
x = np.linspace(-5, 5, 400)
y = np.where(x != 0, f(x), np.nan)
plt.figure(figsize=(8, 6))
plt.plot(x, y)
plt.xlim(-5, 5)
plt.ylim(-1, 10)
plt.grid(True)
plt.xlabel('x')
plt.ylabel('f(x)')
plt.show()

plt.savefig("test.png")
