class ParentValidator < ActiveModel::Validator
  def validate(record)
    record.errors[:base] << "This record has no valid parent" unless check(record)
  end
  private
    def check(record)
      # parent record types are:
      # 0 - bogus, who knows
      # 1 - comment
      # 2 - event
      # 3 - question
      # 4 - answer
      (record.parent_type >= 1) && (record.parent_type <= 4)
    end
end

