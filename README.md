# Custom AWS VPC Module

![image](https://github.com/Sathish278/terraform-aws-vpc/assets/88663911/d3053c41-4a02-450d-9938-a575740a71e1)

This module is for sathish practice devops
I am creating following resources. This module creates resources in first 2 AZ for HA.

* VPC
* Internet gateway(IGW)
* Internet and VPC attachment
* 2 Public Subnets.
* 2 Private Subnes
* 2 Database Subnets
* Public subnet
* Private subnet
* Database subnet
* Elastic IP(EIP)
* NAT gateway(NAT)
* Public Route table(RT)
* private Route table(RT)
* Database Route table(RT)
* Routes
* Route table and subnet association
* VPC Peering
* for VPC routing from default vpc to main and vice versa
* Routes of peering in requestor and acceptor VPC.
* Database sunet group

# Inputs
* project_name (Required): User should mention their project name. Type is string.
* environment (Optional): Default value is dev. Type is string.
* common_tags (Required): User should provide their tags related to their project. Type is map.
* vpc_cidr (Optional): Default value is 10.0.0.0/16. Type is string.
* enable_dns_hostnames (Optional): Default value is true. Type is bool.
* vpc_tags (Optional): Default value is empty. Type is map.
* igw_tags (Optional): Default value is empty. Type is map.
* public_subnet_cidrs (Required): User has to provide 2 valid subnet CIDR.
* public_subnet_cidr_tags (Optional): Default value is empty. Type is map.
* private_subnet_cidrs (Required): User has to provide 2 valid subnet CIDR.
* private_subnet_cidr_tags (Optional): Default value is empty. Type is map.
* database_subnet_cidrs (Required): User has to provide 2 valid subnet CIDR.
* database_subnet_cidr_tags (Optional): Default value is empty. Type is map.
* database_subnet_group_tags (Optional): Default value is empty. Type is map.
* nat_gateway_tags (Optional): Default value is empty. Type is map.
* public_route_table_tags (Optional): Default value is empty. Type is map.
* private_route_table_tags (Optional): Default value is empty. Type is map.
* database_route_table_tags (Optional): Default value is empty. Type is map.
* is_peering_required (Optional): Default value is false. Type is bool.
* acceptor_vpc_id (Optional): Default value is empty, default VPC ID would be taken. Type is string.
* vpc_peering_tags (Optional): Default value is empty. Type is map.

# Outputs

* vpc_id: VPC ID
* public_subnet_ids: A list of 2 public subnet IDS created.
* database_subnet_ids: A list of 2 database subnet IDS created.
* private_subnet_ids: A list of 2 private subnet IDS created.
* database_subnet_group_id: A database subnet group ID created.
* igw_id: internte gateway created.