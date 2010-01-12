module OauthMethods
  private
  def access_token
    OAuth::AccessToken.new(API, self.token, self.secret)
  end

  def get(url)
    access_token.get(url)
  end

  def post(url)
    access_token.post(url)
  end
end