class OrgImage < ApplicationRecord
  belongs_to :organization
  has_attached_file :photo, :styles => { small: "400x300>",medium: "400x300>", large: "400x300>" }
  validates_attachment_file_name :photo, :matches => [/png\Z/, /jpe?g\Z/, /gif\Z/]
  validates_attachment_size :photo, :less_than => 5.megabytes
end