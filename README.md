# Automation-Testing-Android-Robot-Framework
Teste de automação em mobile usando Robot Framework

Manual de instalação:

1 - Primeiramente é necessário ter o JDK 8 instalado na sua máquina, baixe pela URL:
https://www.oracle.com/br/java/technologies/javase/javase-jdk8-downloads.html

A seguir, será necessário baixar o Android Studio na seguinte URL:
https://developer.android.com/studio?hl=pt-br

## Atenção - Os passos a seguir serão para configurar as variáveis de ambiente do Android Studio e Java no MAC/LINUX:

2 - Após a instalação do JDK 8 e Android Studio, é necessário configurar as variáveis de ambiente, para isso, é necessário abrir o arquivo bash via terminal:
- $ open ~/.zshrc

3 - Caso você já tenha uma outra versão do Java configurado na sua máquina, será necessário definir a versão do Java 1.8 para que a automação rode conforme o esperado, e para tal, adicionar as seguintes linhas para que a versão 1.8 do java fique definida na sua máquina

- export JAVA_HOME=$(/usr/libexec/java_home -v 1.8.0)
- export PATH=$PATH:$JAVA_HOME/bin

4 - Adicione também as linhas para configurar as variáveis de ambiente do Android:

- ANDROID_HOME=/Users/{SeuUsuarioAqui}/Library/android/sdk
- export ANDROID_HOME
- export PATH=$PATH:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools:$ANDROID_HOME/tools/lib:$ANDROID_HOME/tools/bin

Geralmente o SDK Android estará listado nesse diretório da variável ANDROID_HOME, caso não esteja, será necessário altera-lo.
Salve as configurações:
- $ source ~/.zshrc

5 - Reinicie o terminal e digite o seguinte comando para verificar que o Java foi configurado corretamente:
- $ java -version

Se o resultado for parecido com esse, sua máquina está com o Java configurado:
- $ java version "1.8.0_261"
- Java(TM) SE Runtime Environment (build 1.8.0_261-b12)
- Java HotSpot(TM) 64-Bit Server VM (build 25.261-b12, mixed mode)

Para verificar se as variáveis foram salvas com sucesso no PATH digite o seguinte no terminal:
- $ echo $PATH

## Fim da configuração de variáveis de ambiente para MAC/LINUX

## Atenção - Os passos a seguir serão para configurar as variáveis de ambiente do Android Studio e Java no WINDOWS:

2 - Você precisará procurar por variáveis de ambiente no "Pesquisar": https://prnt.sc/tt0iav

3 - Clique em "Novo" após isso inclua "ANDROID_HOME" no nome da varíavel e para o valor da mesma insira "C:\Users\{SeuUsuarioaqui}\AppData\Local\Android\Sdk" (Esse valor costuma ser o padrão na instalação do Android Studio, todavia, verifique-se de que sua máquina realmente tenha instalado nesse diretório/path, caso contrário, insira o valor em que o mesmo está instalado), e por fim, clique em "Ok". https://prnt.sc/tt0p5g

4 - Execute o mesmo que o passo 3, porém passando o nome da variável como "JAVA_HOME" e o valor "C:\Program Files (x86)\Java\jdk1.8.0_261", em algumas ocasiões pode ser "C:\Program Files\Java\jdk1.8.0_261", essa é só uma demonstração, certifique-se da versão instalada e se o diretório realmente corresponde com a sua instalação.

5 - Por fim, edite o Path, e adicione as variáveis que estão quadriculadas no print: https://prnt.sc/tt0nio

Após isso clique em "OK" e "OK novamente e poderá conferir no terminal se as variáveis foram salvas com sucesso, digite no terminal:
- $ echo %PATH%

## Fim da configuração de variáveis de ambiente para WINDOWS

6 - Agora, é necessário instalar o Node.JS para avaliar se o ambiente do Appium estará funcionando conforme o esperad, siga com o download na seguinte URL:
https://nodejs.org/en/download/

7 - Após a instalação do Node.JS verifique no seu prompt de comando se tudo ocorreu conforme o esperado, digite o seguinte comando:
- $ node --version

O resultado esperado deverá ser algo parecido com isso:
- $ v12.18.1

Verifique também a versão do npm:
- $ npm --version

O resultado esperado deve ser algo parecido com isso:
- $ 6.14.5

8 - Agora podemos seguir com a instalação do Appium, digite o seguinte comando:
- $ npm install appium -g

9 - Instale tambem o appium doctor:
- $ npm install appium-doctor -g

10 - Após a instalação verifique se o appium estará funcionando, digite o seguinte comando no terminal:
- $ appium

Com isso, o appium deve subir um servidor na porta padrao 4723.

11 - Digite CTRL+C e saia do servidor do appium, após isso poderemos verificar se o appium está configurando para funcionar com o android, digite o seguinte comando no terminal:
- $ appium-doctor --android

12 - Agora iremos criar um Android Virtual Device, abra o Android Studio e siga os seguintes passos:

- 12.1 - Clique no botão Configure: https://prnt.sc/tszetl
- 12.2 - Selecione "AVD Manager": https://prnt.sc/tszgha
- 12.3 - Selecione "+ Create Virtual Device...": https://prnt.sc/tszgxj
- 12.4 - Neste momento recomendo selecionar o device "Pixel 2" e selecionar Next: https://prnt.sc/tszfcl
- 12.5 - Recomendo realizar o download da versão do Android 9.0 (Pie) e clicar em Next: https://prnt.sc/tszfie
- 12.6 - Após o download, selecione a versão do Android que acabara de realizar o download e clique em Next e finalize a criação do AVD.
- 12.7 - Por fim, inicialize o dispositivo virtual: https://prnt.sc/tszfsl
Com isso você terá o diagnóstico se está tudo configurado corretamente na sua máquina para seguirmos com a execução do cenário de teste.

13 - Agora, podemos baixar o Appium Desktop no seguinte link:
https://github.com/appium/appium-desktop/releases/tag/v1.17.1-1

14 - Após a instalação do Appium, abra o aplicativo e inicie um servidor clicando em "Start Server", após isso clique na Lupa que estará localizada no canto superior direito, com isso, iniciaremos o Appium Inspector.

https://prnt.sc/tsze1f

15 - Agora, precisaremos verificar se o Dispositivo Virtual está autorizado, e para isso, abra o terminal e digite o seguinte comando:
- $ adb devices

Caso o dispositivo esteja como unauthorized: https://prnt.sc/tszkil

Será necessário desligar o dispositivo virtual, e retornar ao AVD Manager para conseguirmos resetar o dispositivo virtual: https://prnt.sc/tszl8j

Após o reset inicialize novamente o dispositivo virtual e verifique no terminal com o seguinte comando:
- $ adb devices

O resultado esperado deverá ser algo parecido com esse: https://prnt.sc/tszlgl

16 - Agora por fim, poderemos clonar o projeto em algum diretório da sua máquina, por exemplo, crie uma pasta chamada automation no seu desktop, abra o terminal e navegue até essa pasta criada, por fim, clone o projeto inserindo o seguinte comando no terminal:
- $ git clone https://github.com/NicolasYoshioka07/Automation-Testing-Android-Robot-Framework.git

17 - Retorne ao Appium Inspector e agora será necessário configurar o Desired Capabilities conforme a seguir: https://prnt.sc/tszrlf

Para tal, clique no símbolo com o desenho de "+" para conseguir adicionar os valores necessários.

Com a ressalva de que na chave "app", será necessário passar o caminho absoluto em que o .apk se encontra no projeto clonado anteriormente, no exemplo criei uma pastada chamada automation no desktop e clonei o projeto, o caminho do APK será o seguinte:
- /Users/{SeuUsuarioAqui}/Desktop/automation/Automation-Testing-Android-Robot-Framework/app/app-debug.apk

18 - Após isso clique em "Start Session" e inicialize o servidor appium: https://prnt.sc/tszu03

19 - Agora no terminal, navegue até o diretório do projeto, no exemplo em que citei:
- $ cd /Users/{SeuUsuarioAqui}/Desktop/automation/Automation-Testing-Android-Robot-Framework

20 - No teminal, instale o Robot Framework com o pip para seguirmos com a execução dos cenários de teste:
- $ pip install robotframework

21 - No terminal, instale também a library do selenium:
- $ pip isntall robotframework-seleniumlibrary

- Caso não tenha o PIP instalado recomendo ler o tutorial para a instalação do Python e PIP no readme do meu outro projeto: https://github.com/NicolasYoshioka07/Automation-Testing-using-BDD-and-Behave-Python-

22 - E por fim, para executar todos os cenários de testes:
- $ robot -d ./logs tests

23 - Na pasta logs do projeto você poderá acompanhar mais detalhadamente todos os cenários executados.

24 - Muito obrigado!
