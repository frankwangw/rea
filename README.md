
**Requirements:**


this stack don't have network layer setting,So you need have some network layer setting the detail as below 
1.Vpc with 4 subnets 2 public (using by appliation loadbalance ) 2 private (using by Autoscaliing group ).
2.one IGW and one nat gateway.
3.2 routing table one for public one for private.
4.instance key and on s3 bucket where you upload your cfn.



**OS information**


Amazon linux

**Deployed onto AWS**

using Cloudformation and Nest Stack 

**Configuration management**

using userdata


**Application available on port 80 (using an appropriate web server).**


ALB listering port 80 and forward to server port 80

**Server locked-down and secure.**


Sg only allow alb port 80 traffic 

**Anti-fragility: if the server disappears, how does it automatically recover?**
Autoscaling group 

**Code / Documentation layout.**

cloudformation folder is aws cloudformation template which will build resource on aws 
makefile is install script

**Ease of deployment.**

just modfiy the parameter in makefile and run 
make install


**Test**

once cloudformation launch finised hit url of public ALB 


**design**

This design is using cloudformation which is native tool for AWS.the detail as below

end-user hit ----->application loadbalance  ----->forwarding targate group (port 9292) which attah autoscaling group (help to auto recovery)

securiy:

ALB have SG which allow 0.0.0.0/0 but only from port 80 (also you can using WAF here.but will add more cost or https with cert).
Instance also attach sg which olny allow port 9292 which source from ALB 





# install git
yum install git -y 

# install rvm 
curl -sSL https://get.rvm.io | bash
source /etc/profile.d/rvm.sh
rvm install "ruby-2.4.9"

# install bundle
gem install bundle

# install dependdiss
bundle install 

# run service 
bundle exec rackup