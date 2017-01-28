$cwd = Convert-Path .
$vaultPass = [IO.File]::ReadAllText(${env:USERPROFILE} + "/.vault_pass")
docker run `
  -it --rm `
  -v ${cwd}:/site `
  -v ${env:USERPROFILE}/.ssh:/root/.ssh `
  -e VAULT_PASS=${vaultPass} `
  -w /site `
  strothj/ansible
