#Types
#The Terraform language uses the following types for its values:

# https://developer.hashicorp.com/terraform/language/expressions/types
# string: a sequence of Unicode characters representing some text, like "hello".
# number: a numeric value. The number type can represent both whole numbers like 15 and fractional values like 6.283185.
# bool: a boolean value, either true or false. bool values can be used in conditional logic.
# list (or tuple): a sequence of values, like ["us-west-1a", "us-west-1c"]. Identify elements in a list with consecutive whole numbers, starting with zero.
# set: a collection of unique values that do not have any secondary identifiers or ordering.
# map (or object): a group of values identified by named labels, like {name = "Mabel", age = 52}.

# Default types are stings, lists, and maps

variable "imageid" { 
  default = "ami-0e86e20dae9224db8" 
}

variable "instance_type" { 
  default = "t2.micro" 
}

variable "key_name" { 
  default = "coursera-key" 
}

variable "vpc_security_group_ids" { 
  default = ["sg-0edbc53f44a40636f"]  # This should be a list
}

variable "cnt" { 
  default = 3  # This should be a number 
}

variable "install_env_file" { 
  default = "install-env.sh" 
}

variable "az" { 
  default = ["us-east-1a", "us-east-1b", "us-east-1c"] 
}

variable "elb_name" { 
  default = "mm-elb" 
}

variable "tg_name" { 
  default = "mm-tg" 
}

variable "asg_name" { 
  default = "mm-asg"
}

variable "lt_name" { 
  default = "mm-lt" 
}

variable "min" { 
  default = 2 
}

variable "max" { 
  default = 5 
}

variable "desired" { 
  default = 3 
}

variable "module_tag" { 
  default = "module7-tag" 
}

variable "raw_s3_bucket" { 
  default = "mm-raw-bucket"
}

variable "finished_s3_bucket" { 
  default = "mm-finished-bucket" 
}
