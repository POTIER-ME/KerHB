# KerHB

A small service, developed in Delphi and for Windows systems, that could simply send heartbeat to an url, nothing more !

## Getting Started

### Dependencies

* Need Delphi 10+ (Community Edition possible)
* Use no additional libraries/components

### Configure

* You can change url to your heartbeat url in worker.pas
``` 
web_url:='';
```
*Please note : service name is "kerHB_GH", If you would like to change it, you need to change on source code because windows need to have same name in service as in source code

### Installation

* Use windows cmd with admin rights
```
sc create kerHB_GH binPath="C:\Path-to-exe--system-user-need-to-have-access\file.exe" start=auto
sc start kerHB_GH
```

### Removing

* Use windows cmd with admin rights
```
sc delete kerHB_GH
```

### Status checking

* Use windows cmd with admin rights
```
sc query kerHB_GH
```

## Help

* Some antivirus solution could block the app, be sure to use a path where you could easely add a exclusion rule if mandatory
* Contact me if you have issue on this code

## Author

Nicolas POTIER

* my softwares : https://soft.potier.me/
* my CV page : https://nicolas-cv.potier.me

## Version History

* 1.0
    * Initial Release

## License

This project is licensed under the MIT (Massachusetts Institute of Technology) License - see the LICENSE.md file for details
