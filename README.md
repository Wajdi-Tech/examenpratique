# Examen Pratique DevOps – Wajdi

**Projet 100 % automatisé · CI/CD · IaC · GitOps · Kubernetes · Accessible depuis machine physique**

## Structure du projet
examen-pratique/
├── 01-ansible-devops-lab/         → Playbook Ansible (Docker + Terraform + Jenkins)
├── 02-mon-cv-onepage/             → Code source + Dockerfile + Jenkinsfile
├── 03-terraform-cv/               → Terraform → conteneur moncv:8585
├── 04-cv-k8s-manifests/           → Manifests K8s + Application Argo CD
└── captures/
                      → Toutes les preuves ci-dessus
text## Accès aux services
- **Jenkins** : http://IP-VM:8080
- **CV via Terraform** : http://IP-VM:8585
- **CV via Kubernetes/Argo CD** : http://IP-VM:32000
- **Argo CD UI** : https://IP-VM:8083 (port-forward)

**Tout est automatisé, GitOps, reproductible et industriel**  
Projet terminé et validé à 100 %


TOUTES LES PREUVES VISUELLES  :

Pipeline Jenkins + Push Docker Hub + Slack

![01-jenkins-pipeline-vert](captures/01-jenkins-pipeline-vert.png)

![notfication Slack](captures/notfication Slack.png)

Argo CD → Application Synced & Healthy

![02-argocd-sync-vert](captures/02-argocd-sync-vert.png)

2 pods Running dans K3s

![03-pods-running](captures/03-pods-running.png)

CV accessible via Kubernetes (NodePort)

![04-cv-kubernetes](captures/04-cv-kubernetes.png)

CV accessible via Terraform (port 8585)

![05-cv-terraform-8585](captures/05-cv-terraform-8585.png)

Wajdi  
Novembre 2025
