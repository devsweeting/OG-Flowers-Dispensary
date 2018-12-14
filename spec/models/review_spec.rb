require 'rails_helper'

describe Task do
  it { should validate_presence_of :author }
  it { should validate_presence_of :description }
  it { should validate_presence_of :rating }
  it { should belong_to :product }
end