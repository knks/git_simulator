class ResisterQuizForm
  include ActiveModel::Model
  include ActiveModel::Attributes
  include ActiveModel::Validations

  attribute :question_title, :string
  attribute :question_body, :string
  attribute :correct_choice, :string
  attribute :incorrect_choice_1, :string
  attribute :incorrect_choice_2, :string
  attribute :incorrect_choice_3, :string

  validates :question_title, presence: true, length: { maximum: 40 }
  validates :question_body, presence: true, length: { maximum: 140 }
  validates :correct_choice, presence: true, length: { maximum: 40 }
  validates :incorrect_choice_1, presence: true, length: { maximum: 40 }
  validates :incorrect_choice_2, presence: true, length: { maximum: 40 }
  validates :incorrect_choice_3, presence: true, length: { maximum: 40 }

  def save
    return false unless valid?
    # 問題の登録
    question = Question.new(title: question_title, body: question_body)
    question.save

    # 正解選択肢の登録
    choice = question.choices.build(content: correct_choice, is_answer: true)
    choice.save

    # 不正解選択肢の登録
    question.choices.create(content: incorrect_choice_1, is_answer: false)
    question.choices.create(content: incorrect_choice_2, is_answer: false)
    question.choices.create(content: incorrect_choice_3, is_answer: false)
  end
end