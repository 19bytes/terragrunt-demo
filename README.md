# terragrunt-demo
Hier finden wir den Code für unsere Blog Reihe über Terragrunt.

In diesem Repository werden die Module (Terraform Code) verwaltet.

Infrastructure (Terragrunt) Repository: [Terragrunt Code](https://github.com/19bytes/terragrunt-demo-infrastructure)

## Start with terragrunt
1. Alle module deployen
```
cd stage
terragrunt plan-all
terragrunt apply-all
```
2. Einzelne Module deployen
```
cd stage/module
terragrunt plan
terragrunt apply
```
Beispiel dev Stage:
``
cd stage/dev
terragrunt plan
terragrunt apply 
``


## Notepad before 2023-03-01
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
