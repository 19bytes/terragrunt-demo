# terragrunt-demo
Hier finden wir den Code für unsere Blog Reihe über Terragrunt


## Notepad
### Steps 
1. Terraform installieren 
```
brew tap hashicorp/tap
brew install hashicorp/tap/terraform
```
2. Im Hetzner Projekt einen API Key erzeugen
3. API Key in einer lokalen *.tfvars hinterlegen
4. Optional: Einen SSH-Key in der Hetzner Cloud hinterlegen und diesen im Server unter `ssh-keys = [] ` referenzieren.
```
tf init
tf plan -vars-file=<oben erzeugte>.tfvars
tf apply -vars-file=<oben erzeugte>.tfvars
```
Es sollte nun ein Server "node1" im Rechenzentrum Nürnberg erzuegt worden sein. 
### Linksammlung 
- [Terraform Provider für Hetzner Cloud](https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs)
- [Terraform on Mac](https://developer.hashicorp.com/terraform/downloads)
