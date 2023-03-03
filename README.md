# terragrunt-demo

Hier finden wir den Code für unsere Blog Reihe über Terragrunt.

In diesem Repository werden die Module (Terraform Code) verwaltet.

Infrastructure (Terragrunt) Repository: [Terragrunt Code](https://github.com/19bytes/terragrunt-demo-infrastructure)

## Einrichtung des Remote-Backends

### Azure

Voraussetzung: Installierte az-cli.

Der User der in der az-cli eingeloggt ist benötigt die entsprechenden Berechtigungen um auf den Azure Blob-Storage zuzugreifen.

```bash
# Im Terminal
az login 
```

Dann wird man zur Login-Seite des Azure Portals geleitet, dort wird der Login mit dem entsprechenden Nutzer durgeführt.

Danach kann man das Remote Backenend entweder mit terraform (s.u.) einrichten oder lässt dies mit terragrunt automatisch einrichten.

## Start with terragrunt

- Alle module deployen

```bash
cd stage
terragrunt plan-all
terragrunt apply-all
```

- Einzelne Module deployen

```bash
cd stage/module
terragrunt plan
terragrunt apply
```

Beispiel dev Stage:

```bash
cd stage/dev
terragrunt plan
terragrunt apply
```

## Notepad before 2023-03-01

### Steps

- Terraform installieren

```bash
brew tap hashicorp/tap
brew install hashicorp/tap/terraform
```

- Backend initialiseren, optionaler Schritt für die Kooperative Arbeit.

```bash
cd terraform/backend
tf init
tf plan
tf apply 
```

- Im Hetzner Projekt einen API Key erzeugen

- API als `hcloud_token`  Key in einer lokalen terraform.tfvars hinterlegen

```bash
hcloud_token="iChBiNDeInCl0uDTok3N"
```

- Optional: Einen SSH-Key in der Hetzner Cloud hinterlegen und diesen im Server unter `ssh-keys = []` referenzieren.

```bash
tf init
tf plan 
tf apply 
```

Es sollte nun ein Server "node1" im Rechenzentrum Nürnberg erzuegt worden sein.

### Linksammlung

- [Terraform Provider für Hetzner Cloud](https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs)
- [Terraform on Mac](https://developer.hashicorp.com/terraform/downloads)
