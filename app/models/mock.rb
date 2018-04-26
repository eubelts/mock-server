class Mock < ApplicationRecord

  validates :name, presence: true
  validates :request_method, presence: true
  validates :route_path, presence: true
  validates :status, presence: true


end
