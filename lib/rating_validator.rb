class RatingValidator < ActiveModel::Validator
  def validate(record)
    record.errors[:base] << "That's not a valid rating" unless check(record)
  end
  private
    def check(record)
      (record.rating == -1) || (record.rating == 0) || (record.rating == 1)
    end
end

