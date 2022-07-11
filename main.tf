resource "random_pet" "remote" {
  length = 1
}

output "petid" {
  value = random_pet.remote.id
}

