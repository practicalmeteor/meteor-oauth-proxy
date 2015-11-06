describe "redirect", ->

  beforeEach ->
    @rootDomain = Meteor.absoluteUrl().match(/^https?\:\/\/([^\/:?#]+)(?:[\/:?#]|$)/i)[1]

  it "create redirect url using proxyUrl", ->

    config = {
      proxyUrl: "https://oauth.hubaaa.com/"
    }
    redirectUri = OAuth._redirectUri("github", config)
    expect(redirectUri).to.equal(
      "#{config.proxyUrl}_oauth/github/#{@rootDomain}?close"
    )