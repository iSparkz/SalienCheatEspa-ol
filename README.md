# ¿Cómo usarse?

## Primeros pasos

1. Únase a https://steamcommunity.com/groups/SteamDB (se necesita para representar la captura de territorios)
2. Abra https://steamcommunity.com/saliengame/gettoken y guarde el token en un archivo de texto llamado `token.txt` en el mismo directorio que `cheat.php`
3. Seleccione la versión PHP del script o la versión de Python. No necesita ambos.

## PHP

### Windows

1. [Descargue éste script](https://github.com/SteamDatabase/SalienCheat/archive/master.zip)
2. Extraigalo en un nuevo directorio.
3. Ejecute `cheat.bat` y siga las instrucciones

### Mac

0. (opcional) Lance la App Store y actualice MacOS. Las versiones más recientes pueden incluir cURL y PHP.
1. Extraiga los contenidos de éste script en la carpeta de descargas.
2. Lance la terminal y ejecute el comando: `php downloads/cheat.php`

También puede introducir el código manualmente desde el archivo, además de incluir múltiples cuentas:
```
php cheat.php token1
php cheat.php token2
```

### Linux

1. Instale `php-curl` y habilítelo en `php.ini`
2. Ya sabes lo que estás haciendo. 🐧

## Python

### Linux/Cygwin

0. (opcional) Configure el ambiente virtual: `virtualenv env && source env/bin/activate`
1. `pip install requests tqdm`
2. Ejecute el script: `python cheat.py [token]`

### Mac

0. (opcional) Lance la App Store y actualice MacOS. Las versiones más recientes pueden incluir Python.
1. Extraiga los contenidos de éste script en la carpeta de descargas.
2. Lance la terminal y ejecute los siguientes comandos:
   1. `sudo easy_install pip`
   2. `pip install requests tqdm`
   3. `python downloads/cheat.py [token]`

## Vagrant

1. Instale [vagrant](https://www.vagrantup.com/downloads.html) y [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
2. Ejecute `vagrant up` para configurar VM
3. Ejecute el cheat
  * Para PHP `vagrant ssh -c 'php cheat.php [token]`
  * Para Python `vagrant ssh -c 'python3 cheat.py [token]`

## Docker
1. Extraiga los contenidos de este script en cualquier lugar
2. Para construir(build): `docker build . -t steamdb/saliencheat`
3. Para ejecutar: `docker run -it --init --rm -e TOKEN=<32 character token from gettoken url> steamdb/saliencheat`
4. Para detener la ejecución, Ctrl+C
