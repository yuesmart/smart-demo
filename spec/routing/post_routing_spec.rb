describe "Route" do
  describe "#root" do
    it { expect(get: '/').to route_to(controller: 'posts', action: 'index') }
  end

  describe "#post" do
    it { expect(get: '/posts').to route_to(controller: 'posts', action: 'index') }
    it { expect(get: '/posts/1').to route_to(controller: 'posts', action: 'show',id: "1") }
    it { expect(post: '/posts/1/comments').to route_to(controller: 'comments', action: 'create',post_id: "1") }
  end
end