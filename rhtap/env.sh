# from init
export REBUILD=true
export SKIP_CHECKS=true 

# from buildah-rhtap
TAG=$(git rev-parse HEAD)
export IMAGE_URL=quay.io/rhtap-test-organization-jk/rhtap-qe:jenkins-$TAG
export IMAGE=$IMAGE_URL
export RESULT_PATH=$DIR/results/temp/files/sbom-url 
 
export DOCKERFILE=docker/Dockerfile
export CONTEXT=.
export TLSVERIFY=false
export BUILD_ARGS="" 
export BUILD_ARGS_FILE=""

# from ACS_*.* 
export DISABLE_ACS=true
export ROX_CENTRAL_ENDPOINT=
export ROX_API_TOKEN= 
export INSECURE_SKIP_TLS_VERIFY=true 
export GITOPS_REPO_URL=https://github.com/rhtap-test-organization-jk/xbxch226m-go-gitops

export PARAM_IMAGE=$IMAGE
export PARAM_IMAGE_DIGEST=latest

# From Summary 
export SOURCE_BUILD_RESULT_FILE= 

# gather images params

export TARGET_BRANCH="" 
# needs to be generated and private and public key and put into the Jenkins secrets
# TBD signing it 
export PUBLIC_KEY= 
# enterprise contract 
export POLICY_CONFIGURATION="enterprise-contract-service/default" 
#internal, assumes jenkins is local openshift
export REKOR_HOST=http://rekor-server.rhtap.svc
export IGNORE_REKOR=false
export INFO=true
export STRICT=true
export EFFECTIVE_TIME=now 
export HOMEDIR=$(pwd)
export TUF_MIRROR=http://tuf.rhtap.svc 