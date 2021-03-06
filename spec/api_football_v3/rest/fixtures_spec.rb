require 'helper'
require_relative 'api_shared_examples'

describe ApiFootballV3::Rest::Fixtures do
  endpoints = [
    ['fixtures', '/fixtures', { id: 1 }],
    ['rounds', '/fixtures/rounds', { id: 1 }],
    ['head_to_head', '/fixtures/headtohead', { id: 1 }],
    ['fixture_statistics', '/fixtures/statistics', { id: 1 }],
    ['fixture_events', '/fixtures/events', { id: 1 }],
    ['fixture_lineups', '/fixtures/lineups', { id: 1 }],
    ['fixture_player_statistics', '/fixtures/players', { id: 1 }]
  ]

  include_examples('mapped endpoints', endpoints)

  describe 'live' do
    let(:client) do
      ApiFootballV3::Client.new(base_url: BASE_URL, api_key: 'AK')
    end
    let(:path) { '/fixtures' }
    let(:options) { { live: 'all' } }

    before do
      stub_get(path).with(query: options).to_return(body: '{}')
    end

    it "makes the request" do
      client.live
      expect(a_get(path).with(query: options)).to have_been_made
    end
  end
end
