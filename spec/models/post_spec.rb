require 'rails_helper'

describe Post do
  it { should have_attached_file :image }
  it { should validate_presence_of :caption }
  it { should belong_to :user}
  it { should have_many :comments}
end
