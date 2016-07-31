function pop = mutacao(pop, tx)
    nMut = round(height(pop) * (tx / 100));
    if(nMut < 1)
        nMut = 1;
    end
    
    %selecionar alelo
    for i = 1:nMut
        %com elitismo - não seleciona o 1o. cromossomo
        selectCromo = 1 + (random('unid', heght(pop) - 1));
        
        selectGene = random('unid', length(pop.genes(selectCromo, :)));
        
        %troca alelo por um aleatório do alfabeto
        pop.genes(selectCromo, selectGene) = (random('unid', 177) + 5);
        pop.fitness(selectCromo) = calcularFitness(pop.genes(selectCromo, :));
        
    end
end