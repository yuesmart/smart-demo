describe "Route" do
  describe "#tag" do
    it { expect(get: '/tags/test').to route_to(controller: 'tags', action: 'show', id: 'test') }
  end
end