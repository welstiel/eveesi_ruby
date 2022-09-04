=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

The version of the OpenAPI document: 1.12

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for RubyEveesiClient::PostFleetsFleetIdMembersInvitation
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe RubyEveesiClient::PostFleetsFleetIdMembersInvitation do
  let(:instance) { RubyEveesiClient::PostFleetsFleetIdMembersInvitation.new }

  describe 'test an instance of PostFleetsFleetIdMembersInvitation' do
    it 'should create an instance of PostFleetsFleetIdMembersInvitation' do
      expect(instance).to be_instance_of(RubyEveesiClient::PostFleetsFleetIdMembersInvitation)
    end
  end
  describe 'test attribute "character_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "role"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["fleet_commander", "wing_commander", "squad_commander", "squad_member"])
      # validator.allowable_values.each do |value|
      #   expect { instance.role = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "squad_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "wing_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
