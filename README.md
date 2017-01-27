# how to use this app

#### migrate the database:

`
➜ rails db:migrate
`

#### create Base64 encoded string of this user’s username and password. Open up your rails console and type in the following (see db/seeds.rb, I have inserted data into the database there)

`
irb(main):001:0> Base64.encode64("omz@gmail.com:rahasia")
`

return:

=> "b216QGdtYWlsLmNvbTpyYWhhc2lh\n"

#### run our initial request to get a valid token with cURL:

`
➜ curl http://localhost:3000/token -H 'Authorization: Basic b216QGdtYWlsLmNvbTpyYWhhc2lh\n'                                   ` 

the output:

{"token":"6980f982ab9fef7171999600187427fd"}% 

#### submit request with token and get data:

`
➜ curl http://localhost:3000/api/v1/posts/1 -H 'Authorization: Token token=6980f982ab9fef7171999600187427fd'
` 

the output:

{"id":1,"title":"First Post","body":"An Airplane","created_at":"2017-01-27T18:47:56.923Z","comments":[]}%       
