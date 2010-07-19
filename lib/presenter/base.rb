module Presenter


  class Base < Delegator; end


  class Form < Base
    extend ActiveModel::Naming


    def initialize(object)
      @object = object
    end


    def __getobj__; @object end

    def __setobj__(object); @object = object end


    def to_model; self end


  end


end
