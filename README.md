## Q1
Use Kubernetes YAML deployment files: `Q1.yamls`

## Q2
blockscout helm chart: `Q2.helm-chart/blockscout`

## Q3
1. Use chartmuseum to store helm chart repositories: `http://chartmuseum.example.com`
2. Use gitlab-ci to upload and publish helm charts, configuration file reference: `Q3.helm-repo/gitlab-ci.yml`

## Q4
1. Create an EKS cluster

    ```shell
    cd Q4.terraform-helm/eks 
    terraform init && terraform apply
    ```

2. Deploy blockscout to EKS
    
    ```shell
    cd Q4.terraform-helm/helm-blockscout
    terraform init && terraform apply
    ```
