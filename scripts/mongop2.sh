# CREATING ADMIN USER 
mongo admin --eval 'db.dropUser("superadmin")'
mongo admin --eval 'db.createUser(
      {
          user: "superadmin",
          pwd: "password",
          roles: [ "root" ]
      }
  )'


# LOGIN TO MONGO
#    mongo admin -u superadmin -p password



# CREATING APP USER 
mongo admin --eval 'db.createUser(
      {
          user: "todo",
          pwd: "todo",
          roles: [ { role: "readWrite", db: "test" } ]
      }
  )'


  ## EDIT /etc/mongd.conf 
  ##  ADD
  security:
    authorization: "enabled"

# REPLACE IP SO ONLY APP VM CAN ACCESS MONGODB

sed -i 's/127.0.0.1/192.168.6.1/g' /etc/mongod.conf
sed -i 's/127.0.0.1/0.0.0.0/g' /etc/mongod.conf
sed -i 's/192.168.6.1/0.0.0.0/g' /etc/mongod.conf