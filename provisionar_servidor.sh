#!/bin/bash

# Atualizar o sistema
echo "Atualizando o sistema..."
sudo apt-get update -y
sudo apt-get upgrade -y

# Instalar o Apache
echo "Instalando Apache..."
sudo apt-get install apache2 -y

# Ativar e iniciar o Apache
echo "Iniciando o Apache..."
sudo systemctl start apache2
sudo systemctl enable apache2

# Verificar status do Apache
echo "Verificando status do Apache..."
sudo systemctl status apache2

# Instalar o PHP (opcional, caso precise para seu site)
echo "Instalando PHP..."
sudo apt-get install php libapache2-mod-php -y

# Testar a instalação do PHP
echo "Testando a instalação do PHP..."
echo "<?php phpinfo(); ?>" | sudo tee /var/www/html/info.php

echo "Servidor Web configurado com sucesso! Acesse http://localhost/info.php para testar o PHP."
