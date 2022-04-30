from TUPScheduling.schedule.auto_sched.chromosome import Schedule

from random import randrange
import random
import time

class GeneticAlgorithm:
    def init_algorithm(self, prototype, n_chromosome=100, replace_per_gen=8, track_best=5):
        self.current_best_size = 0
        self._prototype = prototype

        if n_chromosome < 2:
            n_chromosome = 2

        if track_best < 1:
            track_best = 1

        self._chromosomes = n_chromosome * [None]
        self._best_flags = n_chromosome * [False]

        self._best_chromosomes = track_best * [0]
        self.set_replace_per_gen(replace_per_gen)

    def __init__(self, configuration, day, n_crossover=2, mutation_size=2, crossover_prob=80,
                 mutation_prob=3):
        
        self.init_algorithm(Schedule(configuration, day))
        self._n_crossover = n_crossover
        self._mutation_size = mutation_size
        self._crossover_prob = crossover_prob
        self._mutation_prob = mutation_prob

    @property
    def result(self):
        return self._chromosomes[self._best_chromosomes[0]]

    def set_replace_per_gen(self, value):
        n_chromosome = len(self._chromosomes)
        track_best = len(self._best_chromosomes)
        if (value > n_chromosome - track_best):
            value = n_chromosome - track_best
        self._replacement_per_gen = value

    ###Best Fitness Tracking###
    def add_to_best(self, chromosome_idx):
        best_chromosomes = self._best_chromosomes
        length_best = len(best_chromosomes)
        best_flags = self._best_flags
        chromosomes = self._chromosomes

        if (self.current_best_size == length_best and chromosomes[best_chromosomes[self.current_best_size - 1]].fitness >=
                chromosomes[chromosome_idx].fitness) or best_flags[chromosome_idx]:
            return

        j = self.current_best_size
        for i in range(j, -1, -1):
            j = i
            pos = best_chromosomes[i - 1]

            if i < length_best:
                if chromosomes[pos].fitness > chromosomes[chromosome_idx].fitness:
                    break

                best_chromosomes[i] = pos

            else:
                best_flags[pos] = False

        best_chromosomes[j] = chromosome_idx
        best_flags[chromosome_idx] = True

        if self.current_best_size < length_best:
            self.current_best_size += 1

    def is_in_best(self, chromosome_idx) -> bool:
        return self._best_flags[chromosome_idx]

    def clear_best(self):
        self.current_best_size = 0
        self._best_flags = len(self._best_flags) * [False]

    ###Algorithm Functions###
    def initialize(self, population):
        prototype = self._prototype
        length_chromosomes = len(population)

        for i in range(0, length_chromosomes):
            population[i] = prototype.create()

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
        proportions = [(fitness_sum / chromosome.fitness)
                       for chromosome in chromosomes]
        proportion_sum = sum(proportions)
        normalized_proportions = [(proportion / proportion_sum)
                                  for proportion in proportions]

        cumulative_proportions = []
        cumulative_total = 0.0

        for proportion in normalized_proportions:
            cumulative_total += proportion
            cumulative_proportions.append(cumulative_total)

        selected_value = random.uniform(0.0, 1.0)

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

    def replacement(self, population, replace_per_gen) -> []:
        n_crossover = self._n_crossover
        mutationSize = self._mutation_size
        crossover_prob = self._crossover_prob
        mutation_prob = self._mutation_prob
        length_chromosomes = len(population)

        # offspring = replace_per_gen * [None]
        for i in range(replace_per_gen):
            # Randomly selects two parents
            parent = self.selection()

            # Generate an offspring chromosome
            offspring = parent[0].crossover(
                parent[1], n_crossover, crossover_prob)
            offspring.mutation(mutationSize, mutation_prob)

            # Randomly selects a chromosome in the population to be replaced
            # Select again if the chromosome is in best chromosomes

            chromosome_idx = randrange(0, length_chromosomes)
            while self.is_in_best(chromosome_idx):
                chromosome_idx = randrange(0, length_chromosomes)

            # Replace the selected chromosome with the offspring
            population[chromosome_idx] = offspring

            # Try to add the offspring in best chromosomes
            self.add_to_best(chromosome_idx)

        # return offspring

    # Run the algorithm

    def run(self, maxRepeat=9999, minFitness=.999):
        self.clear_best()
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
                self.set_replace_per_gen(self._replacement_per_gen * 3)
                self._crossover_prob += 1

           # print(self._chromosomes)
            self.replacement(self._chromosomes, self._replacement_per_gen)

            lastBestFit = best.fitness
            random.seed(round(time.time() * 1000))
            currentGeneration += 1

    def __str__(self):
        return "Genetic Algorithm"
