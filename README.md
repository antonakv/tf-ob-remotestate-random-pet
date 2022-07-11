# tf-ob-remotestate-random-pet
Remote state - create random_pet repo, on a new repo use this name

This manual is dedicated to create repository with random_pet resource to
use remote state in the external repository

## Requirements

- Hashicorp terraform recent version installed
[Terraform installation manual](https://learn.hashicorp.com/tutorials/terraform/install-cli)

- git installed
[Git installation manual](https://git-scm.com/download/mac)

## Preparation 

- Clone git repository

```bash
git clone https://github.com/antonakv/tf-ob-remotestate-random-pet.git
```

Expected command output:

```
% git clone https://github.com/antonakv/tf-ob-remotestate-random-pet.git
Cloning into 'tf-ob-remotestate-random-pet'...
remote: Enumerating objects: 5, done.
remote: Counting objects: 100% (5/5), done.
remote: Compressing objects: 100% (5/5), done.
remote: Total 5 (delta 0), reused 0 (delta 0), pack-reused 0
Receiving objects: 100% (5/5), done.
```

- Change folder to tf-ob-remotestate-random-pet

```bash
cd tf-ob-remotestate-random-pet
```

## Run terraform code

- In the same folder you were before, run 

```bash
terraform init
```

Sample result

```
Initializing the backend...

Initializing provider plugins...
- Reusing previous version of hashicorp/random from the dependency lock file
- Installing hashicorp/random v3.3.2...
- Installed hashicorp/random v3.3.2 (signed by HashiCorp)

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
```

- Execute `terraform apply`

Expected result

```
% terraform apply            

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # random_pet.remote will be created
  + resource "random_pet" "remote" {
      + id        = (known after apply)
      + length    = 1
      + separator = "-"
    }

Plan: 1 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + petid = (known after apply)

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

random_pet.remote: Creating...
random_pet.remote: Creation complete after 0s [id=mako]

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.

Outputs:

petid = "mako"
```
