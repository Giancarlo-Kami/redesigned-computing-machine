# Semana 02

## Conteúdo

| Tópico                    | Material de Estudo                                                       | Playlist                                                                 |
| ------------------------- | ------------------------------------------------------------------------ | ------------------------------------------------------------------------ |
Cálculo Lambda|https://haskell.pesquisa.ufabc.edu.br/posts/haskell/02.lambda.html|https://www.youtube.com/playlist?list=PLYItvall0TqKPbnSblJ_fxNIFRgEoI-7_
Conceitos Básicos - Parte 1|https://haskell.pesquisa.ufabc.edu.br/posts/haskell/03.haskell.basico.1.html|https://www.youtube.com/playlist?list=PLYItvall0TqLlCPN9vbDIc8FAKhG-RfbM
Conceitos Básicos - Parte 2 | https://haskell.pesquisa.ufabc.edu.br/posts/haskell/04.haskell.basico.2.html | https://www.youtube.com/playlist?list=PLYItvall0TqLlCPN9vbDIc8FAKhG-RfbM

## Resumo (2 pontos)

**⚠️ Não se esqueça de escrever o seu resumo no arquivo `resumo.txt`. Os resumos deverão possuir no máximo 300 palavras e serão publicados no site da disciplina junto ao tópico de estudo dessa semana.**

## Exercícios (8 pontos)

Defina as assinaturas de tipo e implemente as funções abaixo:


1. ★☆☆ Função `multiplicar`, que recebe dois valores inteiros e retorna o produto do primeiro pelo segundo
2. ★☆☆ Função `cumprimentar`, que recebe um nome e retorna "A linguagem preferida de _nome_ é Haskell" (considere o operador de concatenação `++`)
3. ★☆☆ Função `velocidade`, que recebe uma distância em km e a quantidade de horas que ela levou para ser percorrida, ambos do tipo `Float`, e retorna a string "Isso equivale a {x} km por hora!"
4. ★☆☆ Função `mult7 n` que retorne `True` caso a entrada seja múltiplo de 7 e `False` caso contrário.
5. ★☆☆ Função `somaEhMult7`, que recebe um dois valores inteiros e retorna se a soma é múltipla de 7
6. ★★☆ Faça uma função `estaNoIntervalo a b c` que recebe três inteiros e decida se `a` está contido no intervalo fechado entre o `b` e `c`. Assuma que `b < c` sempre.
7. ★★☆ Faça uma função `todosNoIntervalo :: [Int] -> Int -> Int -> Bool` que determina se **todos** os números da primeira lista estão no intervalo descrito pelo segundo e terceiro argumento.
8. ★★☆ Similarmente, faça uma função `algumNoIntervalo :: [Int] -> Int -> Int -> Bool` que determina se **pelo menos um** dos números da primeira lista está no intervalo descrito pelo segundo e terceiro argumento.
9. ★★★ Faça uma função `ehPerfeito n` que determine se um número é perfeito.
10. ★★★ Faça uma função `procuraSeis` que retorne todos os os números entre 0 e 999 cuja soma dos dígitos é 6.

> OBS: Enquanto você não tiver escrito as assinaturas de determinadas funções, os casos de teste não irão nem compilar. Logo, sugere-se que você comece pelas assinaturas, para só depois partir para a implementação.