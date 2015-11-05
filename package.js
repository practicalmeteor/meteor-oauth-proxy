Package.describe({
  name:"practicalmeteor:oauth-proxy",
  summary: "Support OAuth proxy configuration",
  version: "0.1.1"
});

Package.onUse(function (api) {
  api.use('oauth');
  api.use('url');

  api.imply("oauth");
  api.addFiles('redirect.js');
});


Package.onTest(function (api) {
  api.use('practicalmeteor:mocha');
  api.use('coffeescript');
  api.use('practicalmeteor:oauth-proxy');

  api.addFiles("tests/redirect.coffee");
});