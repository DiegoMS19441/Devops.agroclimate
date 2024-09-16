# Agroclimate

# Descritivo da solução
Nosso projeto é voltado para o campo da agricultura. Temos como objetivo desenvolver uma ferramenta que auxilie o agricultor a investir seus recursos em colheitas produtivas. A ferramenta agroclimate vai permitir que através de dados históricos o usuário consiga visualizar através de relatórios quais safras foram mais proveitosas considerando fatores climático, tipo de solo etc., dessa foram o agricultor poderá maximizar seus lucros, pois vai saber quais alimentos podem ser plantados em determinadas épocas do ano e não gastará insumos em plantações improdutivas.


# Beneficios da Solução

Os benefícios do projeto agroclima para o negócio incluem:

1.Maximização dos lucros : Ao permitir que o agricultor faça escolhas mais informadas sobre quais safras plantar e quando, uma ferramenta ajuda a evitar investimentos em cultivos improdutivos, otimizando o uso de recursos.

2.Redução de desperdícios : Com a previsão climática e análise de solo, o agricultor poderá reduzir o desperdício de insumos, como sementes e fertilizantes, direcionando-os para safras com maior potencial de sucesso.

3.Melhor planejamento agrícola : Relatórios detalhados baseados em dados históricos permitem um planejamento agrícola mais eficiente, auxiliando na escolha de culturas adequadas para cada época do ano.

4.Aumento da competitividade : Uma ferramenta confere ao agricultor uma vantagem competitiva, oferecendo dados que possibilitam uma adaptação rápida às mudanças climáticas e de mercado, resultando em uma operação mais 
rentável e sustentável.


# Sobre a API
https://github.com/DiegoMS19441/Agroclimate.version2

Os requests realizados no video podem ser importados no insomnia para que abram de maneira automatica [Baixe](Requests_API.json)

# Requições

## POST: https://api-agroclimate.azurewebsites.net/fazendas

{
	"cnpj":"33347444844444",
	"nome":"fazendinhas",
	"cep": "04843500",
	"email":"rm563391@fiap.com.br",
	"telefone":"11234567891",
	"tamanhoFazenda": 200
}


## PUT

{
	"cnpj":"23347444844444",
	"nome":"fazendddddd",
	"cep": "04843500",
	"email":"rm5091@fiap.com.br",
	"telefone":"11734567891",
	"tamanhoFazenda": 300
}


## GET: https://api-agroclimate.azurewebsites.net/fazendas/4353

## DELETE: https://api-agroclimate.azurewebsites.net/fazendas/4353

LEMBRE-SE DE SUBSTITUIR OS IDs NO FINAL DE CADA URL POR AQUELES QUE FOREM GERADOS DURANTE A SUA EXECUÇÃO, O METÓDO POST NÃO SOLICITA
ID, POIS É GERADO AUTOMATICAMENTE.

![image](https://github.com/user-attachments/assets/d6ef9e64-b1ea-47fe-b438-36da82fa3479)


# Video de Apresentação
https://youtu.be/CGCWJDdOmK4
