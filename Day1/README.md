## Some notes on maths and stats in population genetic models

- The *geometric distribution* is the discrete probability distribution that describes the likelihood of getting a success after a series of failures.

    $E[X] = \frac{1}{p}$; $p$ is the probability of success

- If the probability of an event happening in a given interval is proportional to the length of the interval, the random variable has an *exponential distribution*.

    $E[X] = \frac{1}{\lambda}$; $\lambda$ is the rate parameter

- *Exponential distribution* is the continuous time equivalent of the *geometric distribution*

- The time between consecutive events is *exponentially distributed*; the total number of events after some time is *poisson distributed*

- For *poisson distribution*, the expectation is $E[X] = \lambda$
  - The rate parameter is related to the mutation rate, TMRCA, and genome length as $\pi = 2 \times \tau \times \mu \times M$
  - For the effective population size, $E[TMRCA] = N$ &rArr; $N = \pi / (2 \times \mu \times M)$

- Since $E[X] = \lambda$ for the poisson distribution, we can formalize the calculation of $\tau$ by $k = 2 \times \mu \times M \times \tau$, substitute for $k$ and the other terms to get the value of $\tau$

Key:

- $\pi$ = # of pairwise differences
- $\tau$ = time to most recent common ancestor (TMRCA)
- $\mu$ = mutation rate
- $M$ = genome length
- $N$ = effective population size