describe "redirect", ->

  it "create redirect url using proxyUrl", ->

    config = {
      proxyUrl: "https://oauth.hubaaa.com/"
    }
    redirectUri = OAuth._redirectUri("github", config)
    expect(redirectUri).to.equal(
      "#{config.proxyUrl}_oauth/github?close&domain=#{encodeURIComponent(Meteor.absoluteUrl())}"
    )