require 'helper'

describe Twitter::Action::Mention do

  describe "#sources" do
    it "returns a collection of users who mentioned a user" do
      sources = Twitter::Action::Mention.new(:sources => [{:id => 7505382}]).sources
      sources.should be_an Array
      sources.first.should be_a Twitter::User
    end
    it "is empty when not set" do
      sources = Twitter::Action::Mention.new.sources
      sources.should be_empty
    end
  end

  describe "#source" do
    it "returns the user who mentioned a user" do
      source = Twitter::Action::Mention.new(:sources => [{:id => 7505382}]).source
      source.should be_a Twitter::User
    end
    it "returns nil when not set" do
      source = Twitter::Action::Mention.new.source
      source.should be_nil
    end
  end

  describe "#target_objects" do
    it "returns a collection of Tweets that mention a user" do
      targets = Twitter::Action::Mention.new(:target_objects => [{:id => 25938088801}]).target_objects
      targets.should be_an Array
      targets.first.should be_a Twitter::Tweet
    end
    it "is empty when not set" do
      targets = Twitter::Action::Mention.new.target_objects
      targets.should be_empty
    end
  end

  describe "#targets" do
    it "returns a collection containing the mentioned user" do
      targets = Twitter::Action::Mention.new(:targets => [{:id => 7505382}]).targets
      targets.should be_an Array
      targets.first.should be_a Twitter::User
    end
    it "is empty when not set" do
      targets = Twitter::Action::Mention.new.targets
      targets.should be_empty
    end
  end

end
