# terragrunt-demo
Hier finden wir den Code für unsere Blog Reihe über Terragrunt

## Notepad
### Steps 
1. Terraform installieren 
```
brew tap hashicorp/tap
brew install hashicorp/tap/terraform
```

1.2 Backend initialiseren, optionaler Schritt für die Kooperative Arbeit.
```
cd terraform/backend
tf init
tf plan
tf apply 
```


2. Im Hetzner Projekt einen API Key erzeugen
3. API als `hcloud_token`  Key in einer lokalen terraform.tfvars hinterlegen
```
hcloud_token="iChBiNDeInCl0uDTok3N"
```
4. Optional: Einen SSH-Key in der Hetzner Cloud hinterlegen und diesen im Server unter `ssh-keys = [] ` referenzieren.
```
tf init
tf plan 
tf apply 
```
Es sollte nun ein Server "node1" im Rechenzentrum Nürnberg erzuegt worden sein. 
### Linksammlung 
- [Terraform Provider für Hetzner Cloud](https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs)
- [Terraform on Mac](https://developer.hashicorp.com/terraform/downloads)
