# KerHB

A small service, developed in Delphi, that could simply send heartbeat to an url, nothing more !

## Getting Started

### Dependencies

* Need Delphi 10+
* USe no additional libraries/components

### Configure

* You can change url to your heartbeat url in worker.pas
``` 
web_url:='';
```

### Installation

* Use windows cmd with admin rights
```
sc create MyServiceName binPath= "C:\Path-to-exe--system-user-need-to-have-access" start= auto
sc start MyServiceName
```

### Removing

* Use windows cmd with admin rights
```
sc delete MyServiceName
```

### Status checking

* Use windows cmd with admin rights
```
sc query MyServiceName
```

## Help

Contact me if you have issue on this code

## Authors

Nicolas POTIER 
my softwares : https://soft.potier.me/
my CV page : https://nicolas-cv.potier.me

## Version History

* 1.0
    * Initial Release

## License

This project is licensed under the MIT (Massachusetts Institute of Technology) License - see the LICENSE.md file for details
