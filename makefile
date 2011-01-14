STACK=bamboo-mri-1.9.2

default:
create:
	heroku create --stack ${STACK}
lighten:
	heroku config:add BUNDLE_WITHOUT="development:test"

