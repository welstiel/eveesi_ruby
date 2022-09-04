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

# Unit tests for RubyEveesiClient::GetCharactersCharacterIdCalendar200Ok
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe RubyEveesiClient::GetCharactersCharacterIdCalendar200Ok do
  let(:instance) { RubyEveesiClient::GetCharactersCharacterIdCalendar200Ok.new }

  describe 'test an instance of GetCharactersCharacterIdCalendar200Ok' do
    it 'should create an instance of GetCharactersCharacterIdCalendar200Ok' do
      expect(instance).to be_instance_of(RubyEveesiClient::GetCharactersCharacterIdCalendar200Ok)
    end
  end
  describe 'test attribute "event_date"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "event_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "event_response"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["declined", "not_responded", "accepted", "tentative"])
      # validator.allowable_values.each do |value|
      #   expect { instance.event_response = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "importance"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "title"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
