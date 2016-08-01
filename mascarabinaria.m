function popfilhos = mascarabinaria(popPais)
   popFilhos = popPais;
    for i = 1:2:height(popFilhos)
        mascara = randi([0 1],1,5)
        for i = 1:1:5
            if mascara(i) == 1
                filho1 = popPais.genes(i);
                filho2 = popPais.genes(i+1);
            else
                filho2 = popPais.genes(i);
                filho1 = popPais.genes(i+1);
            end
            
        end
        popFilhos.genes(i, :) = filho1;
        popFilhos.fitness(i) = calcularFitness(filho1);
        popFilhos.genes(i + 1, :) = filho2;
        popFilhos.fitness(i + 1) = calcularFitness(filho2);
    end
    
end