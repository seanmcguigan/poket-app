PRE_PROD_TAG=pre-prod-1q2w3e4-2001091113
OWNER="seanmcguigan"
REPO="poker-app"

list_vars=($(
curl -Ls \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer $GH_PAT" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  https://api.github.com/repos/seanmcguigan/poker-app/actions/variables \
  | tac | tac | jq --raw-output .variables[].name
))

post () {
curl -L \
  -X POST \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer $GH_PAT" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  https://api.github.com/repos/$OWNER/$REPO/actions/variables \
  -d '{"name":"LATEST_PRE_PROD_IMAGE_TAG","value":"'"$PRE_PROD_TAG"'"}'
}

patch () {
curl -L \
  -X PATCH \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer $GH_PAT" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  https://api.github.com/repos/$OWNER/$REPO/actions/variables/LATEST_PRE_PROD_IMAGE_TAG \
  -d '{"name":"LATEST_PRE_PROD_IMAGE_TAG","value":"'"$PRE_PROD_TAG"'"}'
}

if [ ${#list_vars[@]} -gt 0 ]
then
for var_name in $list_vars
do
    if [ "${var_name}" = "LATEST_PRE_PROD_IMAGE_TAG" ]
    then
    echo "updating existing variable $var_name"
    patch
    break
    else
    echo "variable $var_name not found creating"
    post
    break
    fi
done
else
echo "no variables found creating LATEST_PRE_PROD_IMAGE_TAG variable"
post
fi
