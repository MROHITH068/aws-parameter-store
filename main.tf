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
    { name = "roboshop.dev.frontend.catalogue_url", value="http://catalogue-dev.rohdevops.online/",type="String"},
    { name = "roboshop.dev.frontend.cart_url", value="http://cart-dev.rohdevops.online/",type="String"},
    { name = "roboshop.dev.frontend.user_url", value="http://user-dev.rohdevops.online/",type="String"},
    { name = "roboshop.dev.frontend.payment_url", value="http://payment-dev.rohdevops.online/",type="String"},
    { name = "roboshop.dev.frontend.shipping_url", value="http://shipping-dev.rohdevops.online/",type="String"},

    { name = "roboshop.dev.catalogue.mongo", value="true",type="String"},
#    { name = "roboshop.dev.catalogue.mongo_url", value="mongodb://mongodb-dev.rohdevops.online:27017/catalogue",type="String"},

    { name = "roboshop.dev.cart.catalogue_port", value = "80", type = "String" },
    { name = "roboshop.dev.cart.redis_host", value = "elasticache-dev.krhend.clustercfg.use1.cache.amazonaws.com", type = "String" },
    { name = "roboshop.dev.cart.catalogue_host", value = "catalogue-dev.rohdevops.online", type = "String" },

    { name = "roboshop.dev.payment.cart_url", value="cart-dev.rohdevops.online",type="String"},
    { name = "roboshop.dev.payment.cart_port", value="80",type="String"},
    { name = "roboshop.dev.payment.user_url", value="user-dev.rohdevops.online",type="String"},
    { name = "roboshop.dev.payment.user_port", value="80",type="String"},
    { name = "roboshop.dev.payment.amqp_host", value="rabbitmq-dev.rohdevops.online",type="String"},
    { name = "roboshop.dev.payment.amqp_user", value="roboshop",type="String"},

    { name = "roboshop.dev.shipping.db_host", value="rds-dev.cluster-cflw1vmkzsr2.us-east-1.rds.amazonaws.com",type="String"},
    { name = "roboshop.dev.shipping.cart_endpoint", value="cart-dev.rohdevops.online:80",type="String"},

#    { name = "roboshop.dev.user.mongo_url", value="mongodb://mongodb-dev.rohdevops.online:27017/users",type="String"},
    { name = "roboshop.dev.user.redis_host", value="elasticache-dev.krhend.clustercfg.use1.cache.amazonaws.com",type="String"},
    { name = "roboshop.dev.user.mongo", value="true",type="String"},
    { name = "roboshop.dev.rabbitmq.amqp_user", value = "roboshop", type = "String" },
    { name = "roboshop.dev.mysql.username", value = "roboshop", type = "String" },
    { name = "roboshop.dev.docdb.username", value = "roboshop", type = "String" },
    { name = "roboshop.dev.mysql.endpoint", value = "rds-dev.cluster-cflw1vmkzsr2.us-east-1.rds.amazonaws.com", type = "String" },


    #password is given manually.
    { name = "roboshop.dev.payment.amqp_password", value="roboshop123",type="SecureString"},
    { name = "roboshop.dev.rabbitmq.amqp_pass", value = "roboshop123", type = "SecureString" },
    { name = "roboshop.dev.mysql.password", value = "roboshop123", type = "SecureString" },
    { name = "roboshop.dev.docdb.password", value = "roboshop123", type = "SecureString" },
    { name = "roboshop.dev.catalogue.mongo_url", value=" mongodb://roboshop:roboshop123@docdb-dev.cluster-cflw1vmkzsr2.us-east-1.docdb.amazonaws.com:27017/catalogue?tls=true&tlsCAFile=global-bundle.pem&replicaSet=rs0&readPreference=secondaryPreferred&retryWrites=false",type="SecureString"},
    { name = "roboshop.dev.catalogue.docdb_endpoint", value="docdb-dev.cluster-cflw1vmkzsr2.us-east-1.docdb.amazonaws.com",type="String"},
    { name = "roboshop.dev.user.mongo_url", value=" mongodb://roboshop:roboshop123@docdb-dev.cluster-cflw1vmkzsr2.us-east-1.docdb.amazonaws.com:27017/users?tls=true&tlsCAFile=global-bundle.pem&replicaSet=rs0&readPreference=secondaryPreferred&retryWrites=false",type="SecureString"},
    { name = "roboshop.dev.user.docdb_endpoint", value="docdb-dev.cluster-cflw1vmkzsr2.us-east-1.docdb.amazonaws.com",type="String"},

#    mongodb://roboshop:roboshop123@docdb-dev.cluster-cflw1vmkzsr2.us-east-1.docdb.amazonaws.com:27017/?tls=true&tlsCAFile=global-bundle.pem&replicaSet=rs0&readPreference=secondaryPreferred&retryWrites=false


### Production
    { name = "roboshop.prod.frontend.catalogue_url", value="http://catalogue-prod.rohdevops.online/",type="String"},
    { name = "roboshop.prod.frontend.cart_url", value="http://cart-prod.rohdevops.online/",type="String"},
    { name = "roboshop.prod.frontend.user_url", value="http://user-prod.rohdevops.online/",type="String"},
    { name = "roboshop.prod.frontend.payment_url", value="http://payment-prod.rohdevops.online/",type="String"},
    { name = "roboshop.prod.frontend.shipping_url", value="http://shipping-prod.rohdevops.online/",type="String"},

    { name = "roboshop.prod.catalogue.mongo", value="true",type="String"},
    #    { name = "roboshop.prod.catalogue.mongo_url", value="mongodb://mongodb-prod.rohdevops.online:27017/catalogue",type="String"},

    { name = "roboshop.prod.cart.catalogue_port", value = "80", type = "String" },
    { name = "roboshop.prod.cart.redis_host", value = "elasticache-prod.krhend.clustercfg.use1.cache.amazonaws.com", type = "String" },
    { name = "roboshop.prod.cart.catalogue_host", value = "catalogue-prod.rohdevops.online", type = "String" },

    { name = "roboshop.prod.payment.cart_url", value="cart-prod.rohdevops.online",type="String"},
    { name = "roboshop.prod.payment.cart_port", value="80",type="String"},
    { name = "roboshop.prod.payment.user_url", value="user-prod.rohdevops.online",type="String"},
    { name = "roboshop.prod.payment.user_port", value="80",type="String"},
    { name = "roboshop.prod.payment.amqp_host", value="rabbitmq-prod.rohdevops.online",type="String"},
    { name = "roboshop.prod.payment.amqp_user", value="roboshop",type="String"},

    { name = "roboshop.prod.shipping.db_host", value="rds-prod.cluster-cflw1vmkzsr2.us-east-1.rds.amazonaws.com",type="String"},
    { name = "roboshop.prod.shipping.cart_endpoint", value="cart-prod.rohdevops.online:80",type="String"},

    #    { name = "roboshop.prod.user.mongo_url", value="mongodb://mongodb-prod.rohdevops.online:27017/users",type="String"},
    { name = "roboshop.prod.user.redis_host", value="elasticache-prod.krhend.clustercfg.use1.cache.amazonaws.com",type="String"},
    { name = "roboshop.prod.user.mongo", value="true",type="String"},
    { name = "roboshop.prod.rabbitmq.amqp_user", value = "roboshop", type = "String" },
    { name = "roboshop.prod.mysql.username", value = "roboshop", type = "String" },
    { name = "roboshop.prod.docdb.username", value = "roboshop", type = "String" },
    { name = "roboshop.prod.mysql.endpoint", value = "rds-prod.cluster-cflw1vmkzsr2.us-east-1.rds.amazonaws.com", type = "String" },


    # password is given manually.
    { name = "roboshop.prod.payment.amqp_password", value="roboshop123",type="SecureString"},
    { name = "roboshop.prod.rabbitmq.amqp_pass", value = "roboshop123", type = "SecureString" },
    { name = "roboshop.prod.mysql.password", value = "roboshop123", type = "SecureString" },
    { name = "roboshop.prod.docdb.password", value = "roboshop123", type = "SecureString" },
    { name = "roboshop.prod.catalogue.mongo_url", value=" mongodb://roboshop:roboshop123@docdb-prod.cluster-cflw1vmkzsr2.us-east-1.docdb.amazonaws.com:27017/catalogue?tls=true&tlsCAFile=global-bundle.pem&replicaSet=rs0&readPreference=secondaryPreferred&retryWrites=false",type="SecureString"},
    { name = "roboshop.prod.catalogue.docdb_endpoint", value="docdb-prod.cluster-cflw1vmkzsr2.us-east-1.docdb.amazonaws.com",type="String"},
    { name = "roboshop.prod.user.mongo_url", value=" mongodb://roboshop:roboshop123@docdb-prod.cluster-cflw1vmkzsr2.us-east-1.docdb.amazonaws.com:27017/users?tls=true&tlsCAFile=global-bundle.pem&replicaSet=rs0&readPreference=secondaryPreferred&retryWrites=false",type="SecureString"},
    { name = "roboshop.prod.user.docdb_endpoint", value="docdb-prod.cluster-cflw1vmkzsr2.us-east-1.docdb.amazonaws.com",type="String"},

    # nexus
    { name = "roboshop.nexus.username", value="admin",type="SecureString"},
    { name = "roboshop.nexus.password", value="admin123",type="SecureString"},
    { name = "roboshop.prod.payment.app_version", value = "1.0.0", type = "String" },
    { name = "roboshop.prod.cart.app_version", value = "1.0.0", type = "String" },
    { name = "roboshop.prod.user.app_version", value = "1.0.0", type = "String" },
    { name = "roboshop.prod.catalogue.app_version", value = "1.0.0", type = "String" },
    { name = "roboshop.prod.frontend.app_version", value = "1.0.0", type = "String" },
    { name = "roboshop.prod.shipping.app_version", value = "1.0.0", type = "String" },


  ]

}