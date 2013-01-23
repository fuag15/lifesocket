class ResumeStatisticSerializer < ActiveModel::Serializer
  attributes :id, :resume_category_id, :name, :rank

  def resume_category_id
    "#{object.resume_category.id}"
  end
end
