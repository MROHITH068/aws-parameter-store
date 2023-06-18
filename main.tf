resource "aws_ssm_parameter" "param" {
  count = length(var.params)
  name = var.params[count.index].name
  type = var.params[count.index].type
  value = var.params[count.index].value
}

variable "params" {
  default = [
    { name = "roboshop.dev.frontend.catalogue_url", value="http://catalogue-dev.rohdevops.online:8080/",type="String"},
    { name = "roboshop.dev.frontend.cart_url", value="http://cart-dev.rohdevops.online:8080/",type="String"},
    { name = "roboshop.dev.frontend.user_url", value="http://user-dev.rohdevops.online:8080/",type="String"},
    { name = "roboshop.dev.frontend.payment_url", value="http://payment-dev.rohdevops.online:8080/",type="String"},
    { name = "roboshop.dev.frontend.shipping_url", value="http://shipping-dev.rohdevops.online:8080/",type="String"},
    { name = "roboshop.dev.catalogue.mongo", value="true",type="String"},
    { name = "roboshop.dev.catalogue.mongo_url", value="mongodb://mongodb-{{env}}.rohdevops.online:27017/catalogue",type="String"},
    { name = "roboshop.dev.payment.cart_url", value="cart-dev.rohdevops.online",type="String"},
    { name = "roboshop.dev.payment.cart_port", value="8080",type="String"},
    { name = "roboshop.dev.payment.user_url", value="user-dev.rohdevops.online",type="String"},
    { name = "roboshop.dev.payment.user_port", value="8080",type="String"},
    { name = "roboshop.dev.payment.amqp_host", value="rabbitmq-dev.rohdevops.online",type="String"},
    { name = "roboshop.dev.payment.amqp_user", value="roboshop",type="String"},
    { name = "roboshop.dev.shipping.db_host", value="mysql-dev.rohdevops.online",type="String"},
    { name = "roboshop.dev.shipping.cart_endpoint", value="cart-dev.rohdevops.online:8080",type="String"},
    { name = "roboshop.dev.user.mongo_url", value="mongodb://mongodb-dev.rohdevops.online:27017/users",type="String"},
    { name = "roboshop.dev.user.redis_host", value="redis-dev.rohdevops.online",type="String"},
    { name = "roboshop.dev.user.mongo", value="true",type="String"},


    #password is given manually.
    { name = "roboshop.dev.payment.amqp_password", value="roboshop123",type="SecureString"}]
}