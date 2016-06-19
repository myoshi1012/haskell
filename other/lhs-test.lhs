#!/usr/bin/env runghc

test literate programming

\begin{code}
fact :: Integer -> Integer
fact 0 = 1
fact x = x * fact (x-1)

main = do
  print $ fact 4
\end{code}
