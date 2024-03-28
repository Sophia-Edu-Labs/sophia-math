import matplotlib.pyplot as plt
import numpy as np
mu = 500
sigma = 50
x = np.linspace(mu - 3*sigma, mu + 3*sigma, 100)
y = 1/(sigma * np.sqrt(2 * np.pi)) * np.exp( - (x - mu)**2 / (2 * sigma**2))
fig, ax = plt.subplots(figsize=(6, 4))
ax.plot(x, y)
ax.fill_between(x, y, 0, where=(x > 550), alpha=0.5, color='red')
ax.text(560, 0.002, 'P(X > 550) ≈ 16%', fontsize=12, color='red')
ax.set_xlabel('X')
ax.set_ylabel('Dichte')
ax.set_title(f'Normalverteilung mit μ={mu} und σ={sigma}')
ax.grid(True)
plt.tight_layout()


plt.savefig("test.png")
