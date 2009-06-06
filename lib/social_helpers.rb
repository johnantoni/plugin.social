module SocialHelpers
  def get_twitter(u, p)
    s = ""
    if (u.length > 0 && p.length > 0)
      client = Twitter::Client.new(:login => u, :pass => p)
      timeline = client.timeline_for(:user, :id => u.to_s, :count => 1) do |status|
        s = "<a href='http://twitter.com/#{status.user.screen_name}' alt='Twitter', title='Twitter'>#{status.user.screen_name}:</a> #{status.text}"
      end
    end
    return s
  end
end