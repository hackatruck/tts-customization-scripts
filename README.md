# tts-customization-scripts
Scripts para criar modelos customizados do serviço text-to-speech

# Instalação e configuração

## Clone e instale as dependencias
```
git clone https://github.com/hackatruck/tts-customization-scripts.git
cd conversation-nodejs
```
## Configure as credenciais do serviço Watson Text To Speech

1. Acesse [bluemix.net](bluemix.net)
2. Crie uma instância do serviço Waatson Text to Speech
3. Copie as credenciais do serviço (username e password) para o arquivo .env

## Arquivos model.json e words.json

1. Atualize o arquivo model.json com o nome, descrição e lingua do modelo a ser criado
2. Atualize o arquivo words.js com as palavras e traduções/pronúncia correspondente

## Criar modelos e adicionar palavras a ele

1. Execute o script <code>createCustomModel.sh</code> para criar um novo modelo baseado no arquivo model.json. Copie o valor de "customization_id" gerado para o arquivo <code>.env</code>
2. Execute o script <code>addWords.sh</code> para adicionar as palavras no arquivo words.json ao modelo criado e indicado no arquivo <code>.env</code>

## Listar modelos e palavras

Execute o arquivo listModels.sh para ver os modelos já criados anteriormente

Execute o arquivo listWords.sh para ver as palavras já adicionadas ao modelo indicado no arquivo .env
