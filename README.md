⚙️ 1. PACOTES QUE PRECISA INSTALAR NO SERVIDOR (Ubuntu 24.04) 

Abra o terminal e execute: 

sudo apt update && sudo apt upgrade -y 
sudo apt install nginx php php-fpm php-mysql php-xml php-mbstring php-json php-curl php-zip php-cli unzip git mysql-server -y 
 

 

⚙️ 2. CONFIGURAR O MYSQL 

sudo mysql -u root -p 
 

Depois: 

CREATE DATABASE movcpc CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci; 
CREATE USER 'movcpc'@'localhost' IDENTIFIED BY 'redealtana158'; 
GRANT ALL PRIVILEGES ON movcpc.* TO 'movcpc_user'@'localhost'; 
FLUSH PRIVILEGES; 
EXIT; 
 

Importe o seu banco: 

mysql -u movcpc -p movcpc < /caminho/para/movcpc.sql 
 

 

⚙️ 3. CONFIGURAR NGINX PARA O SISTEMA 

Crie o arquivo do site: 

sudo nano /etc/nginx/sites-available/movcpc 
 

Cole: 

server { 
    listen 80; 
    server_name _; 
 
    root /var/www/movcpc; 
    index index.php index.html; 
 
    location / { 
        try_files $uri $uri/ /index.php?$query_string; 
    } 
 
    location ~ \.php$ { 
        include snippets/fastcgi-php.conf; 
        fastcgi_pass unix:/run/php/php8.3-fpm.sock; 
    } 
 
    location ~ /\.ht { 
        deny all; 
    }
    listen 443 ssl;
    server_name mov.pcpsaude.com.br;

    ssl_certificate     /etc/letsencrypt/live/mov.pcpsaude.com.br/fullchain.pem;
    ssl_certificate_key /etc/letsencrypt/live/mov.pcpsaude.com.br/privkey.pem;

    root /var/www/movcpc;
    index index.php index.html;

    location / {
        try_files $uri $uri/ /index.php?$query_string;
    }

    location ~ \.php$ {
        include snippets/fastcgi-php.conf;
        fastcgi_pass unix:/run/php/php8.3-fpm.sock;
        fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;
} 
 

Ative o site: 

sudo ln -s /etc/nginx/sites-available/movcpc /etc/nginx/sites-enabled/ 
sudo nginx -t 
sudo systemctl reload nginx 
 

 

⚙️ 4. ESTRUTURA DO SISTEMA (que irei gerar para você) 

📁 /var/www/movcpc 

/movcpc 
├── index.php              # Página inicial / login 
├── config.php             # Conexão MySQL 
├── /pages 
│   ├── dashboard.php      # Dash de ocupação 
│   ├── pacientes.php      # CRUD de pacientes 
│   ├── unidades.php       # CRUD de unidades/leitos 
│   ├── usuarios.php       # CRUD de usuários 
│   ├── alta.php           # Alta de paciente 
│   └── admissao.php       # Admissão de paciente 
├── /api 
│   ├── pacientes.php      # Endpoints para CRUD 
│   ├── unidades.php 
│   └── notificacao.php    # Endpoint webhook futuro 
├── /assets 
│   ├── css/ 
│   └── js/ 
└── /includes 
    ├── header.php 
    ├── footer.php 
    └── navbar.php 
 

 

⚙️ 5. COMO RODAR 

Após colocar o projeto em /var/www/movcpc: 

sudo chown -R www-data:www-data /var/www/movcpc 
sudo chmod -R 755 /var/www/movcpc 
sudo systemctl restart php8.3-fpm nginx 
 

Acesse no navegador: 

http://SEU_IP_AWS 
 

 

⚙️ 6. SOBRE A FUTURA INTEGRAÇÃO WHATSAPP 

Será deixado no código um arquivo: 

/api/notificacao.php 
 

que já receberá POSTs tipo: 

{ 
  "tipo": "admissao", 
  "paciente": "João Silva", 
  "unidade": "Vila Olímpia", 
  "leito": "203" 
} 
 

Esse endpoint futuramente chamará a API de WhatsApp via curl com URL configurável no topo do arquivo. 

 

Se quiser, posso gerar agora o sistema completo (PHP + HTML + JS + CSS) já baseado no seu banco (movcpc.sql) com: 

CRUDs de paciente, unidades e usuários, 

Tela de admissão e alta, 

Dashboard de ocupação, 

Estrutura pronta para integração do WhatsApp. 

Deseja que eu gere esse pacote .zip agora? 

Você disse: 

sim 

O ChatGPT disse: 

Pronto — gerei o pacote com o sistema plain-PHP e já deixei tudo pronto para você baixar e colocar no seu servidor. 

📦 Baixar movcpc_plain_php.zip 

O que tem no ZIP (resumido) 

Código PHP sem frameworks: login, logout, CRUD de pacientes, admissões, altas, CRUD de unidades/leitos, CRUD de usuários (admin), dashboard para diretoria. 

config.php pronto para você editar com suas credenciais MySQL. 

api/notificacao.php — placeholder webhook para futura integração com WhatsApp (encaminha para config.php se você configurar a URL). 

install.txt e README.md com passos de instalação e recomendações. 

Próximo passo sugerido (faça em seu servidor AWS Ubuntu 24): 

Extraia o ZIP em /var/www/movcpc. 

Edite config.php com usuário/senha do MySQL. 

Ajuste Nginx root para /var/www/movcpc e fastcgi_pass para o socket do PHP-FPM. 

Dê ownership para www-data e reinicie serviços: 

sudo chown -R www-data:www-data /var/www/movcpc 
sudo chmod -R 755 /var/www/movcpc 
sudo systemctl restart php8.3-fpm nginx 
 

Acesse http://SEU_IP/ para entrar. 

Se quiser, eu já: 

adiciono um script setup.sh para automatizar a configuração (incluindo criação de um admin), 

ou modifico o login para criar um usuário admin padrão se a tabela users estiver vazia. 

Qual prefere que eu faça agora?  
