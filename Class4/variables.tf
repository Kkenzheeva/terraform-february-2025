variable aws_key {
default = "hello-key"
type = string
}
variable region {
  default ="us-east-2"
  type = string

}
variable port{
  default = [22,80]
  type = list
}

variable ec2 {
  type = list(object({
   ami = string 
   type= string
  
  }))

  default = [
    {
    ami = "ami-02cd5b9bfb2512340"
    type = "t2.micro"
    
  },
  {
    ami = "ami-08355844f8bc94f55"
    type = "t2.micro"
    
  }
  ]
}
