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

# Unit tests for RubyEveesiClient::GetCorporationsCorporationIdStarbases200Ok
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe RubyEveesiClient::GetCorporationsCorporationIdStarbases200Ok do
  let(:instance) { RubyEveesiClient::GetCorporationsCorporationIdStarbases200Ok.new }

  describe 'test an instance of GetCorporationsCorporationIdStarbases200Ok' do
    it 'should create an instance of GetCorporationsCorporationIdStarbases200Ok' do
      expect(instance).to be_instance_of(RubyEveesiClient::GetCorporationsCorporationIdStarbases200Ok)
    end
  end
  describe 'test attribute "moon_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "onlined_since"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "reinforced_until"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "starbase_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "state"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["offline", "online", "onlining", "reinforced", "unanchoring"])
      # validator.allowable_values.each do |value|
      #   expect { instance.state = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "system_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "type_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "unanchor_at"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
