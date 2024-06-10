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
1) Instale os pacotes do sistema requeridos pelo PyTorch:
```
sudo apt-get -y update; 
sudo apt-get -y install python3-pip libopenblas-dev;
```

2) Instalação do PyTorch
```
wget https://nvidia.box.com/shared/static/i8pukc49h3lhak4kkn67tg9j4goqm0m7.whl -O torch-2.0.0+nv23.05-cp38-cp38-linux_aarch64.whl
sudo apt-get install python3-pip libopenblas-base libopenmpi-dev libomp-dev
pip3 install numpy torch-2.0.0+nv23.05-cp38-cp38-linux_aarch64.whl
```

3) Instalação do torchvision
```
sudo apt-get install libjpeg-dev zlib1g-dev libpython3-dev libopenblas-dev libavcodec-dev libavformat-dev libswscale-dev
git clone --branch release/0.15 https://github.com/pytorch/vision torchvision
cd torchvision
export BUILD_VERSION=0.15.0
python3 setup.py install
cd ..
```

4) Verificação do PyTorch e torchvision

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

5) Criando um ambiente virtual

Precisamos criar um ambiente virtual para posteriormente instalar nele as dependências do YOLOv5:
```
sudo apt-get install virtualenv
python3 -m virtualenv -p python3 perception
```

6) Ativando o ambiente virtual
```
source ~/perception/bin/activate
```

7) Desativando o ambiente virtual
```
deactivate
```

### 3.2 Clone os diretórios do NARAROBOT

```
git clone https://github.com/GIPAR/nararobot_ws.git
```

### 3.3 Instale os repositórios necessários

Clique com o botão direito sobre o arquivo install, em seguida selecione a guia "permissões" e marque a caixa "Permitir execução do arquivo como um programa".

```
cd nara_install
./install
```

### 3.4 Carregando o código para o Arduino

Instale a IDE do arduino através do site oficial, em seguida vá até o diretório "nararobot_ws/src/nararobot/arduino/nara2" e inicie o arquivo "nara2.ino".
Ao iniciar a ide, clique em "arquivos > preferencias" e modifique o local do sketchbook para a pasta "nararobot_ws/src/nararobot/arduino", assim será possível carregar todas as bibliotecas necessárias.

## 4 Criando novo mapa

### 4.1 Gerando o mapa

1) Inicie o driver básico:
```
roslaunch nararobot bringup.launch
```

2) Inicie pacotes de mapeamento:
```
roslaunch nararobot slam.launch
```

3) Inicie a teleoperação:
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

### 5.1 Inicializando o launch:

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

### 6.1 Instalação do SDK da ZED:

1) Primeiro baixe o arquivo do SDK:
```
https://download.stereolabs.com/zedsdk/4.1/l4t35.3/jetsons?_gl=1*1vq8lp4*_gcl_au*Mjc4MDIyMDkzLjE3MTI3OTY4MTA.
```
2) Vá para a pasta onde o SDK foi baixado:
```
cd path/to/download/folder
```

3) Adicione permissão de execução ao arquivo do SDK:
```
chmod +x ZED_SDK_Tegra_L4T35.3_v4.1.2.zstd.run
```

4) Execute-o:
```
./ZED_SDK_Tegra_L4T35.3_v4.1.2.zstd.run
```

Siga o passo a passo da instalação.

### 6.2 Inicialização do launch da ZED 2i:
```
roslaunch zed_wrapper zed2i.launch
```
### 6.3 Instalação dos requerimentos do YOLOv5:

1) Para instalar os requerimentos do YOLO é necessário primeiro ativar o ambiente virtual criado na Seção 3.1:
```
source ~/perception/bin/activate
```
2) Em seguida deve-se acessar o diretório do yolo para instalar os requerimentos:
```bash
cd ~/nararobot_ws/src/yolov5_ros/src/yolov5
```
3) Instale os requerimentos:
```
pip install -r requirements.txt
```
4) Catkin-make na workspace:
```
cd ~/nararobot_ws
catkin_make
```

### 6.4 Inicialização do YOLOv5:
⚠️Antes de iniciar o YOLO é necessário ativar o ambiente virtual para poder usá-lo⚠️
```
roslaunch yolov5_ros yolov5.launch
```

### 6.5 Inicialização do Finder v3
⚠️Para iniciar o Finder deve usar um terminal com o ambiente virtual desativado⚠️
```
cd ~/nararobot_ws/src/Finder_v3/Finder_3.0
python3 finder_v3.0.py
```

# nararobot_ws
