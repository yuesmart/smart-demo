require 'rails_helper'

describe Post do
  describe "#associations" do
    it { should have_many(:tags) }
    it { should have_many(:comments) }
  end

  describe "#comment" do

  end

  describe "#tag" do
  end
end