require 'helper'
require_relative 'api_shared_examples'

describe ApiFootballV3::Rest::Countries do
  endpoints = [
    ['countries', '/countries', { name: 'Chile' }]
  ]

  include_examples('mapped endpoints', endpoints)
end
