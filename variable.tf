
resource "aws_instance" "web_server" {
  ami           = "ami-0f3caa1cf4417e51b"  # Use correct AMI for Mumbai
  instance_type = "t3.micro"
  subnet_id     = aws_subnet.public_subnet.id
  vpc_security_group_ids = [aws_security_group.web_sg.id]
  key_name      = "project"

  tags = {
    Name = "Movie-Web-Server"
  }
}

resource "aws_db_instance" "movie_db" {
  allocated_storage    = 20
  engine               = "mysql"
  instance_class       = "db.t3.micro"
  username             = "admin"
  password             = "Shravu123"
  skip_final_snapshot  = true
}