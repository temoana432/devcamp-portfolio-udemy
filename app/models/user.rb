class User < ApplicationRecord
  # Include default devise modules. Others available are:
<<<<<<< HEAD
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  
  validates_presence_of :name
  
=======
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_presence_of :name

>>>>>>> mine_view_stuff
  def first_name
    self.name.split.first
  end

  def last_name
    self.name.split.last
  end
<<<<<<< HEAD

=======
>>>>>>> mine_view_stuff
end
