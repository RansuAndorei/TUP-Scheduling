from TUPScheduling.schedule.genetic_algorithm.Schedule import Schedule

from random import randrange
import random
import time


class GeneticAlgorithm:
    def initAlgorithm(self, prototype, numberOfChromosomes=100, replaceByGeneration=8, trackBest=5):
        self._currentBestSize = 0
        self._prototype = prototype

        if numberOfChromosomes < 2:
            numberOfChromosomes = 2

        if trackBest < 1:
            trackBest = 1

        self._chromosomes = numberOfChromosomes * [None]
        self._bestFlags = numberOfChromosomes * [False]

        self._bestChromosomes = trackBest * [0]
        self.setReplaceByGeneration(replaceByGeneration)

    def __init__(self, configuration, numberOfCrossoverPoints=2, MutationSize=2, crossoverProbability=80,
                 mutationProbability=3):
        self.initAlgorithm(Schedule(configuration))
        self._numberOfCrossoverPoints = numberOfCrossoverPoints
        self._mutationSize = MutationSize
        self._crossoverProbability = crossoverProbability
        self._mutationProbability = mutationProbability

    @property
    def result(self):
        return self._chromosomes[self._bestChromosomes[0]]

    def setReplaceByGeneration(self, value):
        numberOfChromosomes = len(self._chromosomes)
        trackBest = len(self._bestChromosomes)
        if (value > numberOfChromosomes - trackBest):
            value = numberOfChromosomes - trackBest
        self._replacementByGeneration = value

    ###Best Fitness Tracking###
    def addToBest(self, chromosomeIndex):
        bestChromosomes = self._bestChromosomes
        length_best = len(bestChromosomes)
        bestFlags = self._bestFlags
        chromosomes = self._chromosomes

        if (self._currentBestSize == length_best and chromosomes[bestChromosomes[self._currentBestSize - 1]].fitness >=
                chromosomes[chromosomeIndex].fitness) or bestFlags[chromosomeIndex]:
            return

        j = self._currentBestSize
        for i in range(j, -1, -1):
            j = i
            pos = bestChromosomes[i - 1]

            if i < length_best:
                if chromosomes[pos].fitness > chromosomes[chromosomeIndex].fitness:
                    break

                bestChromosomes[i] = pos

            else:
                bestFlags[pos] = False

        bestChromosomes[j] = chromosomeIndex
        bestFlags[chromosomeIndex] = True

        if self._currentBestSize < length_best:
            self._currentBestSize += 1

    def isInBest(self, chromosomeIndex) -> bool:
        return self._bestFlags[chromosomeIndex]

    def clearBest(self):
        self._currentBestSize = 0
        self._bestFlags = len(self._bestFlags) * [False]

    ###Algorithm Functions###
    def initialize(self, population):
        prototype = self._prototype
        length_chromosomes = len(population)

        for i in range(0, length_chromosomes):
            population[i] = prototype.makeNewFromPrototype()

    # def selection(self, population):
    #     length_chromosomes = len(population)
    #     return (population[randrange(32768) % length_chromosomes], population[randrange(32768) % length_chromosomes])

    def tournament_selection(self):
        population = self._chromosomes

        candidate1 = population[randrange(32768) % len(population)]
        candidate2 = population[randrange(32768) % len(population)]

        while candidate1 == candidate2:
            candidate2 = population[randrange(0, len(population))]

        return candidate1 if candidate1.fitness > candidate2.fitness else candidate2

    def roulette_selection(self):
        chromosomes = self._chromosomes
        fitness_sum = sum(chromosome.fitness for chromosome in chromosomes)
        # print(fitness_sum)
        proportions = [(fitness_sum / chromosome.fitness)
                       for chromosome in chromosomes]
        # print(proportions)
        proportion_sum = sum(proportions)
        # print(proportion_sum)
        normalized_proportions = [(proportion / proportion_sum)
                                  for proportion in proportions]
        # print(normalized_proportions)

        cumulative_proportions = []
        cumulative_total = 0.0

        for proportion in normalized_proportions:
            cumulative_total += proportion
            cumulative_proportions.append(cumulative_total)

        selected_value = random.uniform(0.0, 1.0)
        # print(cumulative_proportions)
        # print(cumulative_total)

        # print(selected_value)

        for i in range(len(cumulative_proportions)):
            value = cumulative_proportions[i]

            if value >= selected_value:
                return chromosomes[i]

    def get_parent(self):
        if randrange(2):
            return self.tournament_selection()
        else:
            return self.roulette_selection()

    def selection(self):
        parent1 = self.get_parent()
        parent2 = self.get_parent()

        while parent1 == parent2:
            parent2 = self.get_parent()

        return (parent1,  parent2)

    def replacement(self, population, replaceByGeneration) -> []:
        numberOfCrossoverPoints = self._numberOfCrossoverPoints
        mutationSize = self._mutationSize
        crossoverProbability = self._crossoverProbability
        mutationProbability = self._mutationProbability
        length_chromosomes = len(population)

        # offspring = replaceByGeneration * [None]
        for i in range(replaceByGeneration):
            # Randomly selects two parents
            parent = self.selection()

            # Generate an offspring chromosome
            offspring = parent[0].crossover(
                parent[1], numberOfCrossoverPoints, crossoverProbability)
            offspring.mutation(mutationSize, mutationProbability)

            # Randomly selects a chromosome in the population to be replaced
            # Select again if the chromosome is in best chromosomes

            chromosomeIndex = randrange(0, length_chromosomes)
            while self.isInBest(chromosomeIndex):
                chromosomeIndex = randrange(0, length_chromosomes)

            # Replace the selected chromosome with the offspring
            population[chromosomeIndex] = offspring

            # Try to add the offspring in best chromosomes
            self.addToBest(chromosomeIndex)

        # return offspring

    # Run the algorithm

    def run(self, maxRepeat=9999, minFitness=.999):
        self.clearBest()
        length_chromosomes = len(self._chromosomes)

        self.initialize(self._chromosomes)
        random.seed(round(time.time() * 1000))

        currentGeneration = 0

        repeat = 0
        lastBestFit = 0.0

        while True:
            best = self.result
            print("Fitness:", "{:4f}\t".format(best.fitness),
                  "Generation:", currentGeneration, end='\r')

            # If minimum fitness acquired, end the algorithm
            if best.fitness > minFitness:
                break

            # Calculate repetitiveness of best fitness per generation
            difference = abs(best.fitness - lastBestFit)
            if difference <= .00000001:
                repeat += 1
            else:
                repeat = 0

            # #If fitness is too repetitive, update rate of change per generation
            if repeat > (maxRepeat/100):
                self.setReplaceByGeneration(self._replacementByGeneration * 3)
                self._crossoverProbability += 1
                self._mutationProbability += 1

           # print(self._chromosomes)
            self.replacement(self._chromosomes, self._replacementByGeneration)

            lastBestFit = best.fitness
            random.seed(round(time.time() * 1000))
            currentGeneration += 1

    def __str__(self):
        return "Genetic Algorithm"
