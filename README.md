## Aufsetzen auf Windows 
In administrator powershell:
```shell
Set-ExecutionPolicy Bypass -Scope Process -Force; `
  iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
  ```
danach
```shell
choco install make
  ```

Texlive installieren:
Das sind 6GB, die heruntergeladen werden müssen, die Installation kann dementsprechend lange dauern.
https://tug.org/texlive/windows.html (08.05.2023)

## Textsatz der Arbeit

via make:
```shell
$ make
```
sollte laufen, wenn alles ordentlich konfiguriert ist.
