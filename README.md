# Agroclimate

# Descritivo da solução
Nosso projeto é voltado para o campo da agricultura. Temos como objetivo desenvolver uma ferramenta que auxilie o agricultor a investir seus recursos em colheitas produtivas. A ferramenta agroclimate vai permitir que através de dados históricos o usuário consiga visualizar através de relatórios quais safras foram mais proveitosas considerando fatores climático, tipo de solo etc., dessa foram o agricultor poderá maximizar seus lucros, pois vai saber quais alimentos podem ser plantados em determinadas épocas do ano e não gastará insumos em plantações improdutivas.



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
