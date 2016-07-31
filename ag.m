function pop = ag(tamanho, geracoes)
    figure; hold on;
    pop = iniciarPop(tamanho);
    for i = 1:geracoes
        pop = sortrows(pop, 'fitness', 'descend');
        popPais = torneio(pop, 60, 3);
        popFilhos = pontoCorte(popPais);
        
        %substitui piores
        inicio = (height(pop) - height(popFilhos)) + 1;
        pop(inicio:height(pop),:) = popFilhos(:,:);
        
        pop = mutacao(pop, 10);
        
        plot(i, pop.fitness(1), '+b');
        plot(i, mean(pop.fitness(:)), 'or');
        
    end
end