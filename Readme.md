# Projeto para Ambiente de Teste Protheus 12.1.2210 no Docker
Esse projeto foi desenvolvido para fornecer uma maneira fácil e rápida de configurar um ambiente de #TESTE do Protheus 12 da TOTVS em um ambiente Docker.

# Vídeo tutorial
Você pode assistir a um vídeo tutorial de todo o processo no YouTube através deste link: [inserir link do vídeo]

# Pré-requisitos
Ter instalado e configurado o docker.
VS Studio Code instaldo.
Instalada extensão Docker.
Ferramenta de acesso ao SGBD(Opcional)

# Informações do projeto
•	O projeto deve ser utilizado apenas com a empresa de Testes 99. 

•	O banco de dados tem o alias "totvs", o usuario é "sa" e a senha é "protheus@2023". 

•	Para acessar o Protheus após a instalação, você deve utilizar o usuário "admin" e deixar a senha em branco. " " (é preciso colocar um espaço em branco.)

# Instalação
Siga os seguintes passos para instalar e configurar o ambiente de teste do Protheus:
1.	Clone este projeto em seu sistema - https://github.com/tifelipemoreira/docker-protheus12.git 

2.	Copie a pasta "totvs" disponibilizada no link https://1drv.ms/u/s!AgbDqR1KI2Dfz60FFxD9_uqXQQAJfw?e=CIyfNS para dentro do diretório "dockerfiles".

3.	Confira os arquivos com extensão .sh se o formato de quebra de linha está LF, se não estiver configure para LF pois isso causa erros na montagem dos containers.

4.	Pelo VS Code execute a opção “composse up” com botão direito do mouse, nessa exata ordem.
  *  docker-compose.license.yml
      - Verifique se o serviço está rodando
  *  docker-compose.mssql.yml
      - Verifique se o serviço está rodando
      - Verifique se é possivel acessar o banco de dados
  *  docker-compose.appserver.yml
      - Verifique se o serviço está rodando

5.	Acesse o "dbmonitor_window.exe" disponível dentro da pasta "totvs/dbaccess/" e informe o usuário "sa" e a senha "protheus@2023" no SQL Server. Em seguida, salve e teste a conexão no alias "totvs".

6.	Após isso, basta acessar o Protheus através do SmartClient disponível na pasta "totvs/protheus12/binarios/" e para o primeiro acesso e criação das tabelas acesse o modulo SIGACFG.

7.  Agora é só aguardar a inicialização do dicionario e acessar o protheus. Para acessar o Protheus após a instalação, você deve utilizar o usuário "admin" e deixar a senha em branco. " " (é preciso colocar um espaço em branco.)

# Importante!
Todos os dados salvos serão gravados dentro do diretórios sql_data se esses arquivos não forem apagados, mesmo parando o container na proxima execução seus dados ainda estarão disponíveis.


