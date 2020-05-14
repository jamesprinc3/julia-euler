nats = range(1, 100, step=1)

sumSquared = sum(nats)^2
squaresSummed = sum(map(x -> x^2, nats))

abs(sumSquared - squaresSummed)
