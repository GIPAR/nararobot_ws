# NARAROBOT 

## 1 Hardware
- Jetson AGX Orin 64GB;
- Arduino Mega 2560;
- IMU MPU6050;
- RPLIDAR A2;
- ZED 2i;
- Ponte H BTS7960.

## 2 Software
- Ubuntu 20.04;
- Python 3.8;
- JetPack 5.1.1 (L4T 35.3);
- PyTorch v2.0.0;
- torchvision v0.15;
- ROS Noetic;

## 3 Instalação

### 3.1 Pré-requisitos
Instale os pacotes do sistema requeridos pelo PyTorch:
```
sudo apt-get -y update; 
sudo apt-get -y install python3-pip libopenblas-dev;
```

#### Instalação do PyTorch
```
wget https://nvidia.box.com/shared/static/i8pukc49h3lhak4kkn67tg9j4goqm0m7.whl -O torch-2.0.0+nv23.05-cp38-cp38-linux_aarch64.whl
sudo apt-get install python3-pip libopenblas-base libopenmpi-dev libomp-dev
pip3 install numpy torch-2.0.0+nv23.05-cp38-cp38-linux_aarch64.whl
```

#### Instalação do torchvision
```
sudo apt-get install libjpeg-dev zlib1g-dev libpython3-dev libopenblas-dev libavcodec-dev libavformat-dev libswscale-dev
git clone --branch release/0.15 https://github.com/pytorch/vision torchvision
cd torchvision
export BUILD_VERSION=0.15.0
python3 setup.py install
cd ..
```

#### Verificação do PyTorch e torchvision
Para verificar se o PyTorch e o torchvision foram instalados corretamente utilize no terminal o python3 e em seguida digite os comandos abaixo um por vez:
```
>>> import torch
>>> print(torch.__version__)
>>> print('CUDA available: ' + str(torch.cuda.is_available()))
>>> print('cuDNN version: ' + str(torch.backends.cudnn.version()))
>>> a = torch.cuda.FloatTensor(2).zero_()
>>> print('Tensor a = ' + str(a))
>>> b = torch.randn(2).cuda()
>>> print('Tensor b = ' + str(b))
>>> c = a + b
>>> print('Tensor c = ' + str(c))
>>> import torchvision
>>> print(torchvision.__version__)
```

#### Criando um ambiente virtual
Precisamos criar um ambiente virtual para posteriormente instalar nele as dependências do YOLOv5:
```
sudo apt-get install virtualenv
python3 -m virtualenv -p python3 perception
```

#### Ativando o ambiente virtual
```
source perception/bin/activate
```

#### Desativando o ambiente virtual
```
deactivate
```
### 3.1 Clone os diretórios do NARAROBOT

```
git clone https://github.com/GIPAR/nararobot_ws.git
```

### 3.2 Instale os repositórios necessários

Clique com o botão direito sobre o arquivo install, em seguida selecione a guia "permissões" e marque a caixa "Permitir execução do arquivo como um programa".

```
cd nara_install
./install
```

### 3.3 Carregando o código para o Arduino

Instale a IDE do arduino através do site oficial, em seguida vá até o diretório "nararobot_ws/src/nararobot/arduino/nara2" e inicie o arquivo "nara2.ino".
Ao iniciar a ide, clique em "arquivos > preferencias" e modifique o local do sketchbook para a pasta "nararobot_ws/src/nararobot/arduino", assim será possível carregar todas as bibliotecas necessárias.

## 4 Criando novo mapa

### 4.1 Gerando o mapa

#### Inicie o driver básico:
```
roslaunch nararobot bringup.launch
```

#### Inicie pacotes de mapeamento:
```
roslaunch nararobot slam.launch
```

#### Inicie a teleoperação:
```
rosrun teleop_twist_keyboard teleop_twist_keyboard.py
```

Navegue pelo ambiente para gerar o mapa. É possível visualizar o progresso pelo RViz.

### 4.2 Salvando o mapa
Quando terminar o mapeamento, salve o mapa. O nome map pode ser substituído por um outro nome de sua preferencia.

```
rosrun map_server map_saver -f ~/nararobot_ws/src/nararobot/maps/map
```

### 4.3 Alterando entre os mapas salvos (somente quando for utilizar um outro mapa salvo)
Navegue até o diretório "src/nararobot/launch" e abra o arquivo "navigate.launch", em seguida modifique a linha número 3 para o nome do mapa a ser utilizado.

## 5 Navegação Autônoma

```
roslaunch nararobot nara.launch
```

### 5.2 Definir a pose inicial
Antes de iniciar a navegação autônoma, é preciso estimar a posição inicial do robô no mapa, para isto:

1) Clique em "2D Post Estimate";
2) Identifique no mapa a localização aproximada do robô e arraste em direção à direção do robô.

### 5.3 Definindo a posição de destino

Após a localização, clique em "2D Nav Goal".
Identifique a localização desejada no mapa e arraste para a direção que você deseja que seu robô esteja indo assim que atingir seu objetivo.

## 6 Percepção

### Instalação dos requerimentos do YOLOv5:

### Inicialização do Finder v3
```
cd ~/nararobot_ws/src/Finder_v3/Finder_3.0
python3 finder_v3.0.py
```

# nararobot_ws
