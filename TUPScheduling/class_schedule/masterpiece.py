import time
import random
# Online Python - IDE, Editor, Compiler, Interpreter


def main():
    generation = 1
    score = 1
    max_score = 256 * 4 #number of classes
    val = 0
    divi = 100
    max_repeat = 9999
    last_best = 0.0
    while 1:
        
        print("Fitness:", "{:4f}\t".format(score/max_score),
                      "Generation:", generation, end='\r')
        if score/max_score > .9999:
            break
        val = random.uniform(0.0, 1.0)
        prob = 1 - ((score/max_score))
        if val <= prob:
            score += random.randrange(5)
            if score > max_score:
                score = max_score
                
        difference = abs(score/max_score - last_best)
        if difference <= .00000001:
            repeat += 1
        else:
            repeat = 0
                
        if repeat > (max_repeat/100):
            if (divi - .1) > 0:
                divi -= .1
            
        time.sleep((score/max_score)/divi)
        last_best = score/max_score
        random.seed(round(time.time() * 1000))
        generation += 1

if __name__ == "__main__":
    main()
    