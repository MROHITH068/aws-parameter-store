resource "aws_ssm_parameter" "param" {
  count = length(var.params)
  name = var.params[count.index].name
  type = var.params[count.index].type
  value = var.params[count.index].value
  overwrite = true
  key_id = "8dd96880-9b44-4bb8-b1f2-1f5940d93f11"
}

variable "params" {
  default = [
    { name = "roboshop.dev.frontend.catalogue_url", value="https://catalogue-dev.rohdevops.online/",type="String"},
    { name = "roboshop.dev.frontend.cart_url", value="https://cart-dev.rohdevops.online/",type="String"},
    { name = "roboshop.dev.frontend.user_url", value="https://user-dev.rohdevops.online/",type="String"},
    { name = "roboshop.dev.frontend.payment_url", value="https://payment-dev.rohdevops.online/",type="String"},
    { name = "roboshop.dev.frontend.shipping_url", value="https://shipping-dev.rohdevops.online/",type="String"},

    { name = "roboshop.dev.catalogue.mongo", value="true",type="String"},
#    { name = "roboshop.dev.catalogue.mongo_url", value="mongodb://mongodb-dev.rohdevops.online:27017/catalogue",type="String"},

    { name = "roboshop.dev.cart.catalogue_port", value = "8080", type = "String" },
    { name = "roboshop.dev.cart.redis_host", value = "redis-dev.rohdevops.online", type = "String" },
    { name = "roboshop.dev.cart.catalogue_host", value = "catalogue-dev.rohdevops.online", type = "String" },

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

    { name = "roboshop.dev.rabbitmq.amqp_user", value = "roboshop", type = "String" },

    { name = "roboshop.dev.mysql.username", value = "roboshop", type = "String" },

    { name = "roboshop.dev.docdb.username", value = "roboshop", type = "String" },


    #password is given manually.
    { name = "roboshop.dev.payment.amqp_password", value="roboshop123",type="SecureString"},
    { name = "roboshop.dev.rabbitmq.amqp_pass", value = "roboshop123", type = "SecureString" },
    { name = "roboshop.dev.mysql.password", value = "roboshop123", type = "SecureString" },
    { name = "roboshop.dev.docdb.password", value = "roboshop123", type = "SecureString" },
    { name = "roboshop.dev.catalogue.mongo_url", value=" mongodb://roboshop:roboshop123@docdb-dev.cluster-cflw1vmkzsr2.us-east-1.docdb.amazonaws.com:27017/?tls=true&tlsCAFile=global-bundle.pem&replicaSet=rs0&readPreference=secondaryPreferred&retryWrites=false",type="SecureString"},
    { name = "roboshop.dev.catalogue.docdb_endpoint", value="docdb-dev.cluster-cflw1vmkzsr2.us-east-1.docdb.amazonaws.com",type="String"},

#    mongodb://roboshop:roboshop123@docdb-dev.cluster-cflw1vmkzsr2.us-east-1.docdb.amazonaws.com:27017/?tls=true&tlsCAFile=global-bundle.pem&replicaSet=rs0&readPreference=secondaryPreferred&retryWrites=false


  ]

}