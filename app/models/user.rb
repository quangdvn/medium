class User < ApplicationRecord
  VALID_EMAIL_REGEX = Settings.validations.user.email_regex
  USER_CREATE_PARAMS = %i(user_name email password password_confirmation gender age).freeze

  has_many :articles, foreign_key: :author_id, primary_key: :id, dependent: :destroy

  validates :user_name, presence: true,
  length: {minimum: Settings.validations.user.name_minlength,
           maximum: Settings.validations.user.name_maxlength}

  validates :email, presence: true,
    length: {minimum: Settings.validations.user.email_minlength,
             maximum: Settings.validations.user.email_maxlength},
    format: {with: VALID_EMAIL_REGEX},
    uniqueness: {case_sensitive: false}

  validates :password, presence: true,
    length: {minimum: Settings.validations.user.password_minlength,
             maximum: Settings.validations.user.password_maxlength},
    allow_nil: true

  validates :is_admin, inclusion: [true, false]

  validates :age, allow_nil: true,
            numericality: {only_integer: true, greater_than_or_equal_to: Settings.validations.user.min_age}

  validates :gender, allow_nil: true, numericality: {only_integer: true},
            inclusion: {in: [1, 2]}

  before_save :downcase_email

  has_secure_password

  private

  def downcase_email
    email.downcase!
  end
end
