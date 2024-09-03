TERRAFORM

<terraform fmt>formata todos os arquivos.tf com a sintaxe correta, bom dar esse comando no inicio da configuração dos arquivos
<terraform validate> = valida se tem algo para ser crrigido em nosso codigo teeraform antes de subir.
<terraform workspace list> lista todos workspace
<terraform workspace new "exemplo"> cria um novo workspace
<terraform workspace select "nome_da_workspace"> seleciona a workspace que voce quer utilizar
<terraform plan> 
<terraform plan -var-file=./envs/dev.tfvars> Cria um plano de execução para revisar as mudanças propostas antes de aplicá-las. Isso mostra quais recursos serão criados, modificados ou excluídos.
<terraform apply> Aplica as mudanças descritas no plano de execução. Cria, modifica ou exclui recursos conforme necessário.
<terraform destroy -var-file=./tfvars/dev.tfvars --auto-approve> destroi tudo com aprovação imediata
<aws ec2 describe-images --owners 099720109477 --filters "Name=name,Values=ubuntu/images/*ubuntu-*" --query "Images[*].[ImageId, Name]" --region=us-east-1 | grep "24.04"> Aqui eu descubro todas as versões do ubunto ligadas a 24.04 disponiveis na aws para subir. Faço esse comando para incluir no datasource.tf
<terraform import -var-file=./envs/dev.tfvars aws_s3_bucket.lab-import-aws lab-import-aws> Se voce criar manualmente um bucket s3 na aws ex: "lab-import-aws", esse comando fara com que voce peça para o terraforme integre ele ao seu progeto e a partir dali ele comece a gerenciar esse bucket:
- aws_s3_bucket.lab-import-aws - indica o recurso que estou importando
- lab-import-aws - Este é o identificador real do recurso na AWS. Aqui, você está dizendo que o bucket S3 existente chamado lab-import-aws (no lado da AWS) deve ser associado ao recurso aws_s3_bucket.lab-import-aws no estado do Terraform.

<export AWS_PROFILE=(Nome colocado no ~/.aws/credentials) ex: [cross-account-lab]>
<aws s3 ls> lista todos os bucktes
<aws s3 cp "Nome_do_arquivo" s3://"nome_do_bucket"> Envia o arquivo para o bucket do s3
<aws s3 ls s3://"nome_do_bucket"> Lista os arquivos dentro do bucket mencionado

Linux
<lsblk> lista os discos
<blkid> Lista o Id dos discos da ec2
<vi /etc/fstab> Entra no doc para montagem aultomatica do disco (incluir o ID encontrado no comando <blkid>)
