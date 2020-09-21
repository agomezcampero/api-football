require 'helper'
require_relative 'api_shared_examples'

describe ApiFootball::Rest::Predictions do
  endpoints = [
    ['predictions', '/predictions', { id: 1 }]
  ]

  include_examples('mapped endpoints', endpoints)
end
