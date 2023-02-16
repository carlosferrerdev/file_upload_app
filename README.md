# File Upload App

<strong>File Upload App</strong> é uma aplicação web construída em Ruby on Rails que permite o upload de arquivos separados por tabulações, que contêm dados de compras. A aplicação analisa o arquivo, normaliza os dados e os salva em um banco de dados relacional. Ele também fornece uma visualização da renda bruta total representada pelos dados de vendas após o upload do arquivo.

<h2>Requisitos</h2>
<ul>
  <li>Ruby 3.2 ou superior</li>
  <li>Rails 7.0.4 ou superior</li>
  <li>PostgreSQL</li>
</ul>

<h2>Configuração</h2>

Para configurar a aplicação, siga as etapas abaixo:

<ol>
  <li>Clone o repositório da aplicação: </li>
  <strong><i>$ git clone https://github.com/carlosferrerdev/file_upload_app.git</i></strong><br>
  <li>Instale as dependências da aplicação: </li>
  <strong><i>$ cd file_upload_app<br/>
            $ bundle install </i></strong>
  <li>Configure o banco de dados em config/database.yml com as suas credenciais do Postgres:</li>
  <strong><i>default: &default<br>
    adapter: postgresql<br>
    encoding: unicode<br>
    username: seu_username<br>
    password: sua_senha<br>
    host: localhost<br>
<br>
development:<br>
  <<: *default<br>
  database: file_upload_app_development<br>
<br>
test:<br>
  <<: *default<br>
  database: file_upload_app_test</i></strong>
<li>Crie o banco de dados:</li>
<strong><i>$ rails db:create</strong></i>
<li>Execute as migrações:</li>
<strong><i>$ rails db:migrate</strong></i>

</ol>

<h2>Uso</h2>
<ol>
  <li>Inicie o servidor Rails:</li>
  <strong><i>$ rails server</strong></i>
  <li>Navegue até a página inicial da aplicação em <i>http://localhost:3000</i>.</li>

  <li>Clique no botão "Choose File" e selecione um arquivo separado por tabulações (.tab) contendo dados de compras.</li>

  <li>Clique no botão "Upload".</li>

  <li>A renda bruta total representada pelos dados de vendas será exibida na página seguinte.</li>
</ol>
<h2>Limitações</h2>
<ul>
  <li>A aplicação não oferece suporte para validação do formato do arquivo enviado.</li>
  <li>A aplicação não suporta a exclusão de arquivos enviados anteriormente.</li>
</ul>
