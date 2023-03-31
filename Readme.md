# Projeto para Ambiente de Teste Protheus 12 no Docker
Esse projeto foi desenvolvido para fornecer uma maneira fácil e rápida de configurar um ambiente de teste do Protheus da TOTVS em um ambiente Docker.

# Vídeo tutorial
Você pode assistir a um vídeo tutorial de todo o processo no YouTube através deste link: [inserir link do vídeo]

# Pré-requisitos
Antes de começar, é necessário ter o Docker instalado e iniciado em seu sistema.

# Informações do projeto
•	O projeto deve ser utilizado apenas com a empresa de Testes 99. 

•	O banco de dados tem o alias "totvs", o usuario é "sa" e a senha é "protheus@2023". 

•	Para acessar o Protheus após a instalação, você deve utilizar o usuário "admin" e deixar a senha em branco. " " (é preciso colocar um espaço em branco.)

# Instalação
Siga os seguintes passos para instalar e configurar o ambiente de teste do Protheus:
1.	Clone este projeto em seu sistema.
2.	Copie a pasta "totvs" disponibilizada no link https://wkjfs.com.br para dentro do diretório "dockerfiles".
3.	No terminal, acesse o diretório "docker" e execute o comando docker-compose up -d para subir todos os serviços. Alternativamente, você pode utilizar o Visual Studio Code com a extensão Docker e clicar com o botão direito no arquivo "docker-compose.yml" e selecionar a opção "Compose Up".
4.	Verifique se todos os containers estão rodando corretamente e aguarde aproximadamente 5 minutos. Esse tempo é necessário para a montagem e configuração das máquinas.
5.	Acesse o "dbaccess_windows" disponível dentro da pasta "totvs/dbaccess/" e informe o usuário "sa" e a senha "protheus@23" no SQL Server. Em seguida, salve e teste a conexão no alias "totvs".
6.	Após isso, basta acessar o Protheus através do SmartClient disponível na pasta "totvs/protheus12/binarios/".

# Importante!
Todos os dados salvos serão gravados dentro do diretórios sql_data se esses arquivos não forem apagados, mesmo parando o container na proxima execução seus dados ainda estarão disponíveis.

# Licença
Este projeto é distribuído sob a Licença MIT. Veja o arquivo LICENSE para mais informações.
