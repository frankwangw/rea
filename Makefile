# 

#Setup all the parameters

test_stack_name ?= rea
VpcId ?= xxxxx
Psubnet1 ?= xxxxx
Psubnet2 ?= xxxxx
subnet1 ?= xxxxx
subnet2 ?= xxxxx
KeyPairs ?= xxxxxx
WebInstanceType ?= xxxx




install:
	aws cloudformation deploy \
		--stack-name ${test_stack_name} \
		--template-file cloudformation/cfn.yml \
		--region ap-southeast-2 \
		--parameter-overrides \
			VpcId=${VpcId} \
			Psubnet1=${Psubnet1} \
			Psubnet2=${Psubnet2} \
			subnet1=${subnet1} \
			subnet2=${subnet2} \
			KeyPairs=${KeyPairs} \
			WebInstanceType=${WebInstanceType} 

