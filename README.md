# Lexinador
- Integrante: Higor Leonardo da Silva Azevedo
- Instituição: Pontifícia Universidade Católica do Paraná (PUCPR)
- Disciplina: Linguagens Formais e Compiladores
- Professor: Frank de Alcantara



Este projeto é um tradutor de expressões em Notação Polonesa Reversa (RPN) para Assembly ARMv7, desenvolvido como parte dos estudos de Compiladores e Microprocessadores. O sistema realiza a análise léxica de expressões matemáticas, traduz a RPN para a linguagem Assembly e gera um arquivo .s compatível com simuladores como o Cpulator.


Funcionalidades
Analisador Léxico (AFD): Implementação de um Autômato Finito Determinístico para identificar números, operadores, variáveis e comandos especiais.
Execução RPN: Avaliação de expressões usando uma pilha lógica.
Suporte a Variáveis: Uso do comando MEM para armazenar valores em memória e recuperação posterior.
Histórico de Resultados: Comando RES para acessar resultados de linhas processadas anteriormente.
Geração de Assembly: Tradução direta para instruções ARMv7, utilizando a unidade de ponto flutuante (VFP - Vector Floating-Point).


Tecnologias Utilizadas
Linguagem: Python 
Target: Assembly ARMv7 (Precisão dupla/Double Precision)
Simulação: Recomendado o uso do Cpulator (ARMv7 System).

Estrutura do Código
O tradutor é dividido em três etapas principais:
parseExpressao: O estado inicial e os estados subsequentes (estado_numero, estado_operador, etc.) processam a string de entrada.
executarExpressao: Valida a lógica da calculadora RPN e mantém o dicionário de variáveis e o histórico de resultados.
gerarAssembly: Mapeia as operações para instruções VADD, VSUB, VMUL, VDIV, gerindo o uso de registradores de ponto flutuante (D0, D1) e a pilha VFP.

# Testes
Os testes  foram realizados dentro do main, onde foram criados funções como testarParseExpressao()e exibirResultados(), que verificaram o comportamento do programa.
```text
[OK] (31.14 7.0 +) --> ['(', '31.14', '7.0', '+', ')']
[OK] (3 RES) --> ['(', '3', 'RES', ')']
[OK] (10.5 CONTADOR) --> ['(', '10.5', 'CONTADOR', ')']
[OK] ((CONTADOR) 25.0 *) --> ['(', '(', 'CONTADOR', ')', '25.0', '*', ')']
[OK] ((3 6 +) 3 %) --> ['(', '(', '3', '6', '+', ')', '3', '%', ')']
[OK] (1 34 //) --> ['(', '1', '34', '//', ')']
[ERRO] (3.14 3.0 &) --> Erro lexico: Caractere inválido '&'
[OK] (1 34 //) --> ['(', '1', '34', '//', ')']
[OK] (1 34 //) --> ['(', '1', '34', '//', ')']
[ERRO] (3.14 3.0 &) --> Erro lexico: Caractere inválido '&'
[OK] (1 34 //) --> ['(', '1', '34', '//', ')']
[ERRO] (3.14 3.0 &) --> Erro lexico: Caractere inválido '&'
[ERRO] 3.64.5 --> Erro lexico: Número malformado: múltiplos pontos
[OK] (1 34 //) --> ['(', '1', '34', '//', ')']
[ERRO] (3.14 3.0 &) --> Erro lexico: Caractere inválido '&'
[ERRO] 3.64.5 --> Erro lexico: Número malformado: múltiplos pontos
[OK] (1 34 //) --> ['(', '1', '34', '//', ')']
[ERRO] (3.14 3.0 &) --> Erro lexico: Caractere inválido '&'
[ERRO] 3.64.5 --> Erro lexico: Número malformado: múltiplos pontos
[OK] (1 34 //) --> ['(', '1', '34', '//', ')']
[ERRO] (3.14 3.0 &) --> Erro lexico: Caractere inválido '&'
[ERRO] 3.64.5 --> Erro lexico: Número malformado: múltiplos pontos
[ERRO] 20,45 --> Erro lexico: Caractere inválido ','
[OK] (1 34 //) --> ['(', '1', '34', '//', ')']
[ERRO] (3.14 3.0 &) --> Erro lexico: Caractere inválido '&'
[ERRO] 3.64.5 --> Erro lexico: Número malformado: múltiplos pontos
[ERRO] 20,45 --> Erro lexico: Caractere inválido ','
[OK] (10.5 BASQUETE1) --> ['(', '10.5', 'BASQUETE', '1', ')']
[OK] (1 34 //) --> ['(', '1', '34', '//', ')']
[ERRO] (3.14 3.0 &) --> Erro lexico: Caractere inválido '&'
[ERRO] 3.64.5 --> Erro lexico: Número malformado: múltiplos pontos
[ERRO] 20,45 --> Erro lexico: Caractere inválido ','
[OK] (10.5 BASQUETE1) --> ['(', '10.5', 'BASQUETE', '1', ')']
[OK] (1 34 //) --> ['(', '1', '34', '//', ')']
[ERRO] (3.14 3.0 &) --> Erro lexico: Caractere inválido '&'
[ERRO] 3.64.5 --> Erro lexico: Número malformado: múltiplos pontos
[OK] (1 34 //) --> ['(', '1', '34', '//', ')']
[ERRO] (3.14 3.0 &) --> Erro lexico: Caractere inválido '&'
[ERRO] 3.64.5 --> Erro lexico: Número malformado: múltiplos pontos
[OK] (1 34 //) --> ['(', '1', '34', '//', ')']
[ERRO] (3.14 3.0 &) --> Erro lexico: Caractere inválido '&'
[ERRO] 3.64.5 --> Erro lexico: Número malformado: múltiplos pontos
[ERRO] 20,45 --> Erro lexico: Caractere inválido ','
[OK] (10.5 BASQUETE1) --> ['(', '10.5', 'BASQUETE', '1', ')']
[OK] (1 34 //) --> ['(', '1', '34', '//', ')']
[ERRO] (3.14 3.0 &) --> Erro lexico: Caractere inválido '&'
[ERRO] 3.64.5 --> Erro lexico: Número malformado: múltiplos pontos
[ERRO] 20,45 --> Erro lexico: Caractere inválido ','
[OK] (1 34 //) --> ['(', '1', '34', '//', ')']
[ERRO] (3.14 3.0 &) --> Erro lexico: Caractere inválido '&'
[ERRO] 3.64.5 --> Erro lexico: Número malformado: múltiplos pontos
[ERRO] (3.14 3.0 &) --> Erro lexico: Caractere inválido '&'
[ERRO] 3.64.5 --> Erro lexico: Número malformado: múltiplos pontos
[ERRO] 20,45 --> Erro lexico: Caractere inválido ','
[ERRO] 3.64.5 --> Erro lexico: Número malformado: múltiplos pontos
[ERRO] 20,45 --> Erro lexico: Caractere inválido ','
[OK] (10.5 BASQUETE1) --> ['(', '10.5', 'BASQUETE', '1', ')']
[ERRO] 20,45 --> Erro lexico: Caractere inválido ','
[OK] (10.5 BASQUETE1) --> ['(', '10.5', 'BASQUETE', '1', ')']
[OK] (10.5 BASQUETE1) --> ['(', '10.5', 'BASQUETE', '1', ')']
[OK] (10.5 COMPILADORES1 +) --> ['(', '10.5', 'COMPILADORES', '1', '+', ')']
[ERRO] (10.5 GTA# +) --> Erro lexico: Caractere inválido '#'
[OK] (10.5 NBA-) --> ['(', '10.5', 'NBA', '-', ')']
```
Validação:
```text
Teste 1 (31 25 -): [OK] -> 6.0
Teste 2a (12 X MEM): [OK] -> 0.0
Teste 2b ((X) 20 %): [OK] -> 12.0
Teste 3 (2 RES): [OK] -> 6.0
```

# Como executar

Se você não quiser instalar nada no seu PC, o GitHub oferece um computador nas nuvens gratuito:
- Pressione a tecla . (ponto) no seu teclado enquanto estiver nessa página do repositório.
- Isso vai abrir o Editor Web (VS Code).
- Clique com o botão direito no arquivo Lexinador.py e selecione "Open in Integrated Terminal".
- No terminal que abrir lá embaixo, digite:

```text
python Lexinador.py teste1.txt
```
Após a execução do software, o código assembly correspondente será armazenado no arquivo (arquivo).txt. Este conteúdo deve ser transferido para o simulador Cpulator-ARMv7 DE1-SoC, onde poderá ser compilado e processado para validação dos resultados.
