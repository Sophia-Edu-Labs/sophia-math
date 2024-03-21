import matplotlib.pyplot as plt
import numpy as np

def f(x):
    return np.log(4-x) + 1/x

x = np.linspace(-5, 5, 400)
y = np.where((x < 4) & (~((x > -0.1) & (x < 0.1))), f(x), np.nan)

plt.figure(figsize=(8, 6))
plt.plot(x, y)

plt.scatter([0], [0], color='red', s=100, label='Nicht definiert') # Point of discontinuity
plt.scatter([4], [0], color='red', s=100) # Point of discontinuity

# Drawing a red line at y=0 from x=4 to x=5
plt.plot([4, 5], [0, 0], color='red', linewidth=4) # This replaces the plt.axhline call for this specific segment

plt.xlim(-5, 5)
plt.ylim(-5, 5)

plt.grid(True)
plt.legend()

plt.savefig("test.png")
