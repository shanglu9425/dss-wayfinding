class Department < DirectoryObject
  validates :title, uniqueness: true, presence: true
  validates :room_id, presence: false

  has_many :people
  has_many :events
  belongs_to :room

  def as_json(options={})
    {
      :id => id,
      :room_number => room.present? ? room.room_number : '',
      :room_id => room_id,
      :name => '',
      :department => title,
      :title => title,
      :email => '',
      :phone => '',
      :type => type
    }
  end
end
