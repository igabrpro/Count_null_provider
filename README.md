# **Count_null_provider**


#### This repo is a guideline on HOW to use null provider with count in terraform using Ubuntu.

# **Repo content**
```main.tf``` - Terraform configuration file

# **PreRequsits**
#### You need to have terraform cli instaled 
#### [download link](https://www.terraform.io/downloads)

# ***How to use***
```
    Download the repo bigabrpro/Count_null_provider git clone https://github.com/igabrpro/Count_null_provider.git
    Change to Count_null_provider: cd Count_null_provider
    Type in your terminal terraform init in order to be downloaded required providers
    Type in your terminal terraform plan in order to see the changes which terraform is going to be made
    Type in your terminal terraform apply execute changes bases on our code(main.tf) 
```
    
    
# ***Expected results***
    

```
  After terrform apply you shuld get
   ==============================================================================
null_resource.igabr[1]: Creating...
null_resource.igabr[0]: Creating...
null_resource.igabr[2]: Creating...
null_resource.igabr[1]: Provisioning with 'local-exec'...
null_resource.igabr[0]: Provisioning with 'local-exec'...
null_resource.igabr[0] (local-exec): Executing: ["/bin/sh" "-c" "uname -a"]
null_resource.igabr[1] (local-exec): Executing: ["/bin/sh" "-c" "uname -a"]
null_resource.igabr[2]: Provisioning with 'local-exec'...
null_resource.igabr[2] (local-exec): Executing: ["/bin/sh" "-c" "uname -a"]
null_resource.igabr[0] (local-exec): Darwin ivangabrovski-C02Z82YYLVDQ 20.6.0 Darwin Kernel Version 20.6.0: Wed Nov 10 22:23:07 PST 2021; root:xnu-7195.141.14~1/RELEASE_X86_64 x86_64
null_resource.igabr[0]: Creation complete after 0s [id=187323871186676972]
null_resource.igabr[1] (local-exec): Darwin ivangabrovski-C02Z82YYLVDQ 20.6.0 Darwin Kernel Version 20.6.0: Wed Nov 10 22:23:07 PST 2021; root:xnu-7195.141.14~1/RELEASE_X86_64 x86_64
null_resource.igabr[2] (local-exec): Darwin ivangabrovski-C02Z82YYLVDQ 20.6.0 Darwin Kernel Version 20.6.0: Wed Nov 10 22:23:07 PST 2021; root:xnu-7195.141.14~1/RELEASE_X86_64 x86_64
null_resource.igabr[2]: Creation complete after 0s [id=437715411793197058]
null_resource.igabr[1]: Creation complete after 0s [id=5478690639949583818]

There will be 3 object created 
```

#**Example**

```
Execute terraform show to check the created objects

========================================================
ivangabrovski@ivangabrovski-C02Z82YYLVDQ Count_null_provider % terraform show
# null_resource.igabr[1]:
resource "null_resource" "igabr" {
    id       = "5478690639949583818"
    triggers = {
        "build_number" = "Object 1"
    }
}

# null_resource.igabr[2]:
resource "null_resource" "igabr" {
    id       = "437715411793197058"
    triggers = {
        "build_number" = "Object 2"
    }
}

# null_resource.igabr[0]:
resource "null_resource" "igabr" {
    id       = "187323871186676972"
    triggers = {
        "build_number" = "Object 0"
    }
}
========================================================
```

