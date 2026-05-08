resource "aws_instance" "terraform" {
    ami = var.ami_id
    instance_type = var.instance_type
    vpc_security_group_ids = [aws_security_group.tr_all.id]
    tags = var.ec2_tags

    } 


resource "aws_security_group" "tr_all" {
    name = var.sg_name

  
  egress {
    from_port        = var.ingress_from_port # from port 0 to port 0 means all ports
    to_port          = var.ingress_to_port
    protocol         = var.protocol # -1 means all protocols
    cidr_blocks      = ["0.0.0.0/0"] # internet
    
  }
    ingress {
    from_port        = var.egress_from_port
    to_port          = var.egress_to_port
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }
  
  tags = {
    Name = "tr_all"

  }   

}




