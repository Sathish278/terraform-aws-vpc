data "aws_availability_zones" "available" {
  state = "available"
}


#The aws_default_vpc is indeed not a valid data source. But the aws_vpc data source does have a boolean default you can use to choose the default vpc:

data "aws_vpc" "default" {
  default = true
} 

data "aws_route_table" "main" {
  vpc_id = data.aws_vpc.default.id
  filter {
    name = "association.main"
    values = ["true"]
  }
}
